
protocol UIDynamicAnimatorDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  @available(iOS 7.0, *)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
@available(iOS 7.0, *)
class UIDynamicAnimator : Object {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func itemsIn(rect: CGRect) -> [UIDynamicItem]
  func updateItemUsingCurrentState(item: UIDynamicItem)
  var isRunning: Bool { get }
  func elapsedTime() -> TimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCellAt(indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(decorationViewKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
}