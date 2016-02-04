
@available(OSX 10.11, *)
class GKGraph : Object {
  var nodes: [GKGraphNode]? { get }
  init(nodes: [GKGraphNode])
  func connectNodeToLowestCostNode(node: GKGraphNode, bidirectional: Bool)
  func removeNodes(nodes: [GKGraphNode])
  func addNodes(nodes: [GKGraphNode])
  func findPathFrom(startNode: GKGraphNode, to endNode: GKGraphNode) -> [GKGraphNode]
  init()
}
@available(OSX 10.11, *)
class GKObstacleGraph : GKGraph {
  var obstacles: [GKPolygonObstacle] { get }
  var bufferRadius: Float { get }
  init(obstacles: [GKPolygonObstacle], bufferRadius: Float)
  func connectNodeUsingObstacles(node: GKGraphNode2D)
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoring obstaclesToIgnore: [GKPolygonObstacle])
  func connectNodeUsingObstacles(node: GKGraphNode2D, ignoringBufferRadiusOf obstaclesBufferRadiusToIgnore: [GKPolygonObstacle])
  func addObstacles(obstacles: [GKPolygonObstacle])
  func removeObstacles(obstacles: [GKPolygonObstacle])
  func removeAllObstacles()
  func nodesFor(obstacle: GKPolygonObstacle) -> [GKGraphNode2D]
  func lockConnectionFrom(startNode: GKGraphNode2D, to endNode: GKGraphNode2D)
  func unlockConnectionFrom(startNode: GKGraphNode2D, to endNode: GKGraphNode2D)
  func isConnectionLockedFrom(startNode: GKGraphNode2D, to endNode: GKGraphNode2D) -> Bool
  init(nodes: [GKGraphNode])
  init()
}
@available(OSX 10.11, *)
class GKGridGraph : GKGraph {
  var gridOrigin: vector_int2 { get }
  var gridWidth: Int { get }
  var gridHeight: Int { get }
  var diagonalsAllowed: Bool { get }
  init(fromGridStartingAt position: vector_int2, width: Int32, height: Int32, diagonalsAllowed: Bool)
  func nodeAtGridPosition(position: vector_int2) -> GKGridGraphNode?
  func connectNodeToAdjacentNodes(node: GKGridGraphNode)
  init(nodes: [GKGraphNode])
  init()
}