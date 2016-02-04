
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTP: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTPS: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceFTP: String
let NSURLProtectionSpaceHTTPProxy: String
let NSURLProtectionSpaceHTTPSProxy: String
let NSURLProtectionSpaceFTPProxy: String
let NSURLProtectionSpaceSOCKSProxy: String
let NSURLAuthenticationMethodDefault: String
let NSURLAuthenticationMethodHTTPBasic: String
let NSURLAuthenticationMethodHTTPDigest: String
let NSURLAuthenticationMethodHTMLForm: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodNTLM: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodNegotiate: String
@available(iOS 3.0, *)
let NSURLAuthenticationMethodClientCertificate: String
@available(iOS 3.0, *)
let NSURLAuthenticationMethodServerTrust: String
class NSURLProtectionSpace : NSObject, NSSecureCoding, NSCopying {
  init(host: String, port: Int, protocol: String?, realm: String?, authenticationMethod: String?)
  init(proxyHost host: String, port: Int, type: String?, realm: String?, authenticationMethod: String?)
  var realm: String? { get }
  var receivesCredentialSecurely: Bool { get }
  var host: String { get }
  var port: Int { get }
  var proxyType: String? { get }
  var `protocol`: String? { get }
  var authenticationMethod: String { get }
  func isProxy() -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSURLProtectionSpace {
  @available(iOS 3.0, *)
  var distinguishedNames: [NSData]? { get }
}
extension NSURLProtectionSpace {
  @available(iOS 3.0, *)
  var serverTrust: SecTrust? { get }
}
