
enum WebNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkClicked
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
let WebActionNavigationTypeKey: String
let WebActionElementKey: String
let WebActionButtonKey: String
let WebActionModifierFlagsKey: String
let WebActionOriginalURLKey: String
protocol WebPolicyDecisionListener : NSObjectProtocol {
  func use()
  func download()
  func ignore()
}
protocol WebPolicyDelegate : NSObjectProtocol {
  @available(OSX 10.0, *)
  optional func webView(webView: WebView!, decidePolicyForNavigationAction actionInformation: [NSObject : AnyObject]!, request: NSURLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  @available(OSX 10.0, *)
  optional func webView(webView: WebView!, decidePolicyForNewWindowAction actionInformation: [NSObject : AnyObject]!, request: NSURLRequest!, newFrameName frameName: String!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(webView: WebView!, decidePolicyForMIMEType type: String!, request: NSURLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(webView: WebView!, unableToImplementPolicyWithError error: NSError!, frame: WebFrame!)
}
