
enum NSURLCredentialPersistence : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ForSession
  case Permanent
  @available(OSX 10.8, *)
  case Synchronizable
}
class NSURLCredential : NSObject, NSSecureCoding, NSCopying {
  var persistence: NSURLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSURLCredential {
  init(user: String, password: String, persistence: NSURLCredentialPersistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension NSURLCredential {
  @available(OSX 10.6, *)
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: NSURLCredentialPersistence)
  var identity: SecIdentity? { get }
  @available(OSX 10.6, *)
  var certificates: [AnyObject] { get }
}
extension NSURLCredential {
  @available(OSX 10.6, *)
  init(trust: SecTrust)
  @available(OSX 10.6, *)
  /*not inherited*/ init(forTrust trust: SecTrust)
}
