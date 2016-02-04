
@available(iOS 8.0, *)
enum SCNAntialiasingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Multisampling2X
  case Multisampling4X
}
@available(iOS 9.0, *)
let SCNPreferredRenderingAPIKey: String
@available(iOS 9.0, *)
let SCNPreferredDeviceKey: String
@available(iOS 9.0, *)
let SCNPreferLowPowerDeviceKey: String
class SCNView : UIView, SCNSceneRenderer, SCNTechniqueSupport {
  init(frame: CGRect, options: [String : AnyObject]?)
  var scene: SCNScene?
  var allowsCameraControl: Bool
  @available(iOS 8.0, *)
  func snapshot() -> UIImage
  @IBAction func play(sender: AnyObject?)
  @IBAction func pause(sender: AnyObject?)
  @IBAction func stop(sender: AnyObject?)
  var preferredFramesPerSecond: Int
  var eaglContext: EAGLContext?
  @available(iOS 8.0, *)
  var antialiasingMode: SCNAntialiasingMode
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 8.0, *)
  var sceneTime: NSTimeInterval
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  @available(iOS 8.0, *)
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]
  @available(iOS 8.0, *)
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(iOS 9.0, *)
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]
  @available(iOS 8.0, *)
  func projectPoint(point: SCNVector3) -> SCNVector3
  @available(iOS 8.0, *)
  func unprojectPoint(point: SCNVector3) -> SCNVector3
  var playing: Bool
  var loops: Bool
  @available(iOS 8.0, *)
  var pointOfView: SCNNode?
  var autoenablesDefaultLighting: Bool
  var jitteringEnabled: Bool
  @available(iOS 8.0, *)
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool
  @available(iOS 8.0, *)
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)
  @available(iOS 8.0, *)
  var showsStatistics: Bool
  @available(iOS 9.0, *)
  var debugOptions: SCNDebugOptions
  @available(iOS 9.0, *)
  var renderingAPI: SCNRenderingAPI { get }
  var context: UnsafeMutablePointer<Void> { get }
  @available(iOS 9.0, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  @available(iOS 9.0, *)
  var device: MTLDevice? { get }
  @available(iOS 9.0, *)
  var colorPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var depthPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var stencilPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var commandQueue: MTLCommandQueue? { get }
  @available(iOS 9.0, *)
  var audioListener: SCNNode?
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
}
