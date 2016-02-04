
@available(tvOS 9.0, *)
class MDLAsset : Object, Copying, FastEnumeration {
  init(url URL: URL)
  init(url URL: URL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?)
  init(url URL: URL, vertexDescriptor: MDLVertexDescriptor?, bufferAllocator: MDLMeshBufferAllocator?, preserveTopology: Bool, error: ErrorPointer)
  func exportTo(URL: URL) -> Bool
  func exportTo(URL: URL, error: ()) throws
  class func canImportFileExtension(extension: String) -> Bool
  class func canExportFileExtension(extension: String) -> Bool
  func boundingBoxAtTime(time: TimeInterval) -> MDLAxisAlignedBoundingBox
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  var frameInterval: TimeInterval
  var startTime: TimeInterval
  var endTime: TimeInterval
  var url: URL? { get }
  var bufferAllocator: MDLMeshBufferAllocator { get }
  var vertexDescriptor: MDLVertexDescriptor? { get }
  func add(object: MDLObject)
  func remove(object: MDLObject)
  var count: Int { get }
  subscript (index: Int) -> MDLObject? { get }
  func objectAt(index: Int) -> MDLObject
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}