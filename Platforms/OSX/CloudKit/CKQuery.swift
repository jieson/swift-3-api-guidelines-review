
@available(OSX 10.10, *)
class CKQuery : NSObject, NSSecureCoding, NSCopying {
  init(coder aDecoder: NSCoder)
  init(recordType: String, predicate: NSPredicate)
  var recordType: String { get }
  @NSCopying var predicate: NSPredicate { get }
  var sortDescriptors: [NSSortDescriptor]?
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
