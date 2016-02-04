
@available(iOS 4.2, *)
class MPMediaQuerySection : NSObject, NSSecureCoding, NSCopying {
  var title: String { get }
  var range: NSRange { get }
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.2, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
