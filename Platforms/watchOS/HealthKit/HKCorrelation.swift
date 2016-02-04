
@available(watchOS 2.0, *)
class HKCorrelation : HKSample {
  var correlationType: HKCorrelationType { get }
  var objects: Set<HKSample> { get }
  convenience init(type correlationType: HKCorrelationType, startDate: NSDate, endDate: NSDate, objects: Set<HKSample>)
  convenience init(type correlationType: HKCorrelationType, startDate: NSDate, endDate: NSDate, objects: Set<HKSample>, metadata: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  convenience init(type correlationType: HKCorrelationType, startDate: NSDate, endDate: NSDate, objects: Set<HKSample>, device: HKDevice?, metadata: [String : AnyObject]?)
  func objectsForType(objectType: HKObjectType) -> Set<HKSample>
  init?(coder aDecoder: NSCoder)
}
