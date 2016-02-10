
@available(iOS 8.0, *)
class HKStatisticsCollection : Object {
  func statistics(for date: Date) -> HKStatistics?
  func enumerateStatistics(from startDate: Date, to endDate: Date, with block: (HKStatistics, UnsafeMutablePointer<ObjCBool>) -> Void)
  func statistics() -> [HKStatistics]
  func sources() -> Set<HKSource>
}
@available(iOS 8.0, *)
class HKStatisticsCollectionQuery : HKQuery {
  var anchorDate: Date { get }
  var options: HKStatisticsOptions { get }
  @NSCopying var intervalComponents: DateComponents { get }
  var initialResultsHandler: ((HKStatisticsCollectionQuery, HKStatisticsCollection?, Error?) -> Void)?
  var statisticsUpdateHandler: ((HKStatisticsCollectionQuery, HKStatistics?, HKStatisticsCollection?, Error?) -> Void)?
  init(quantityType: HKQuantityType, quantitySamplePredicate: Predicate?, options: HKStatisticsOptions = [], anchorDate: Date, intervalComponents: DateComponents)
}
