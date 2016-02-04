
@available(tvOS 9.0, *)
enum UIDynamicItemCollisionBoundsType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Rectangle
  case Ellipse
  case Path
}
protocol UIDynamicItem : NSObjectProtocol {
  var center: CGPoint { get set }
  var bounds: CGRect { get }
  var transform: CGAffineTransform { get set }
  @available(tvOS 9.0, *)
  optional var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(tvOS 9.0, *)
  optional var collisionBoundingPath: UIBezierPath { get }
}
@available(tvOS 9.0, *)
class UIDynamicItemGroup : NSObject, UIDynamicItem {
  init(items: [UIDynamicItem])
  var items: [UIDynamicItem] { get }
  init()
  @available(tvOS 9.0, *)
  var center: CGPoint
  @available(tvOS 9.0, *)
  var bounds: CGRect { get }
  @available(tvOS 9.0, *)
  var transform: CGAffineTransform
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
@available(tvOS 7.0, *)
class UIDynamicBehavior : NSObject {
  func addChildBehavior(behavior: UIDynamicBehavior)
  func removeChildBehavior(behavior: UIDynamicBehavior)
  var childBehaviors: [UIDynamicBehavior] { get }
  var action: (() -> Void)?
  func willMoveToAnimator(dynamicAnimator: UIDynamicAnimator?)
  var dynamicAnimator: UIDynamicAnimator? { get }
  init()
}
