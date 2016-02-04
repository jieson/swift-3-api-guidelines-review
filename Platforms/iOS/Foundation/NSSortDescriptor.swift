
class NSSortDescriptor : NSObject, NSSecureCoding, NSCopying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector)
  init?(coder: NSCoder)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector { get }
  @available(iOS 7.0, *)
  func allowEvaluation()
  @available(iOS 4.0, *)
  init(key: String?, ascending: Bool, comparator cmptr: NSComparator)
  @available(iOS 4.0, *)
  var comparator: NSComparator { get }
  func compareObject(object1: AnyObject, toObject object2: AnyObject) -> NSComparisonResult
  var reversedSortDescriptor: AnyObject { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSSet {
  @available(iOS 4.0, *)
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSArray {
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableArray {
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  @available(iOS 5.0, *)
  func sortedArrayUsingDescriptors(sortDescriptors: [NSSortDescriptor]) -> [AnyObject]
}
extension NSMutableOrderedSet {
  @available(iOS 5.0, *)
  func sortUsingDescriptors(sortDescriptors: [NSSortDescriptor])
}
