
class NSURLCredentialStorage : NSObject {
  class func sharedCredentialStorage() -> NSURLCredentialStorage
  func credentialsForProtectionSpace(space: NSURLProtectionSpace) -> [String : NSURLCredential]?
  var allCredentials: [NSURLProtectionSpace : [String : NSURLCredential]] { get }
  func setCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  @available(iOS 7.0, *)
  func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace, options: [String : AnyObject]?)
  func defaultCredentialForProtectionSpace(space: NSURLProtectionSpace) -> NSURLCredential?
  func setDefaultCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace)
  init()
}
extension NSURLCredentialStorage {
  @available(iOS 8.0, *)
  func getCredentialsForProtectionSpace(protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: ([String : NSURLCredential]?) -> Void)
  @available(iOS 8.0, *)
  func setCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func removeCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, options: [String : AnyObject]?, task: NSURLSessionTask)
  @available(iOS 8.0, *)
  func getDefaultCredentialForProtectionSpace(space: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: (NSURLCredential?) -> Void)
  @available(iOS 8.0, *)
  func setDefaultCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask)
}
let NSURLCredentialStorageChangedNotification: String
@available(iOS 7.0, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
