
@available(tvOS 7.0, *)
class NSProgress : NSObject {
  class func currentProgress() -> NSProgress?
  /*not inherited*/ init(totalUnitCount unitCount: Int64)
  @available(tvOS 9.0, *)
  class func discreteProgressWithTotalUnitCount(unitCount: Int64) -> NSProgress
  @available(tvOS 9.0, *)
  /*not inherited*/ init(totalUnitCount unitCount: Int64, parent: NSProgress, pendingUnitCount portionOfParentTotalUnitCount: Int64)
  init(parent parentProgressOrNil: NSProgress?, userInfo userInfoOrNil: [NSObject : AnyObject]?)
  func becomeCurrentWithPendingUnitCount(unitCount: Int64)
  func resignCurrent()
  @available(tvOS 9.0, *)
  func addChild(child: NSProgress, withPendingUnitCount inUnitCount: Int64)
  var totalUnitCount: Int64
  var completedUnitCount: Int64
  var localizedDescription: String!
  var localizedAdditionalDescription: String!
  var cancellable: Bool
  var pausable: Bool
  var cancelled: Bool { get }
  var paused: Bool { get }
  var cancellationHandler: (() -> Void)?
  var pausingHandler: (() -> Void)?
  @available(tvOS 9.0, *)
  var resumingHandler: (() -> Void)?
  func setUserInfoObject(objectOrNil: AnyObject?, forKey key: String)
  var indeterminate: Bool { get }
  var fractionCompleted: Double { get }
  func cancel()
  func pause()
  @available(tvOS 9.0, *)
  func resume()
  var userInfo: [NSObject : AnyObject] { get }
  var kind: String?
  convenience init()
}
typealias NSProgressUnpublishingHandler = () -> Void
typealias NSProgressPublishingHandler = (NSProgress) -> NSProgressUnpublishingHandler?
protocol NSProgressReporting : NSObjectProtocol {
  @available(tvOS 7.0, *)
  var progress: NSProgress { get }
}
@available(tvOS 7.0, *)
let NSProgressEstimatedTimeRemainingKey: String
@available(tvOS 7.0, *)
let NSProgressThroughputKey: String
@available(tvOS 7.0, *)
let NSProgressKindFile: String
@available(tvOS 7.0, *)
let NSProgressFileOperationKindKey: String
@available(tvOS 7.0, *)
let NSProgressFileOperationKindDownloading: String
@available(tvOS 7.0, *)
let NSProgressFileOperationKindDecompressingAfterDownloading: String
@available(tvOS 7.0, *)
let NSProgressFileOperationKindReceiving: String
@available(tvOS 7.0, *)
let NSProgressFileOperationKindCopying: String
@available(tvOS 7.0, *)
let NSProgressFileURLKey: String
@available(tvOS 7.0, *)
let NSProgressFileTotalCountKey: String
@available(tvOS 7.0, *)
let NSProgressFileCompletedCountKey: String
