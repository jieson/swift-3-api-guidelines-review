
@available(tvOS 8.0, *)
class SCNConstraint : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  @available(tvOS 8.0, *)
  var influenceFactor: CGFloat
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
@available(tvOS 8.0, *)
class SCNLookAtConstraint : SCNConstraint {
  convenience init(target: SCNNode)
  var target: SCNNode { get }
  var gimbalLockEnabled: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
struct SCNBillboardAxis : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var X: SCNBillboardAxis { get }
  static var Y: SCNBillboardAxis { get }
  static var Z: SCNBillboardAxis { get }
  static var All: SCNBillboardAxis { get }
}
@available(tvOS 9.0, *)
class SCNBillboardConstraint : SCNConstraint {
  var freeAxes: SCNBillboardAxis
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class SCNTransformConstraint : SCNConstraint {
  convenience init(inWorldSpace world: Bool, withBlock block: (SCNNode, SCNMatrix4) -> SCNMatrix4)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class SCNIKConstraint : SCNConstraint {
  @available(tvOS 9.0, *)
  init(chainRootNode: SCNNode)
  class func inverseKinematicsConstraintWithChainRootNode(chainRootNode: SCNNode) -> Self
  var chainRootNode: SCNNode { get }
  var targetPosition: SCNVector3
  func setMaxAllowedRotationAngle(angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngleForJoint(node: SCNNode) -> CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
