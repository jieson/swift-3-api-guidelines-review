
@available(tvOS 9.0, *)
class GKPath : NSObject {
  var radius: Float
  var cyclical: Bool
  var numPoints: Int { get }
  init(points: UnsafeMutablePointer<vector_float2>, count: Int, radius: Float, cyclical: Bool)
  convenience init(graphNodes: [GKGraphNode2D], radius: Float)
  func pointAtIndex(index: Int) -> vector_float2
  convenience init()
}
