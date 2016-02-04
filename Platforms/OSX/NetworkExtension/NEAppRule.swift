
@available(OSX 10.11, *)
class NEAppRule : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  init(signingIdentifier: String, designatedRequirement: String)
  @available(OSX 10.11, *)
  var matchSigningIdentifier: String { get }
  @available(OSX 10.11, *)
  var matchDesignatedRequirement: String { get }
  @available(OSX 10.11, *)
  var matchPath: String?
  @available(OSX 10.11, *)
  var matchDomains: [AnyObject]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
