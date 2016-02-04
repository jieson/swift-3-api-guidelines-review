
enum AVAssetWriterStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Writing
  case Completed
  case Failed
  case Cancelled
}
@available(iOS 4.1, *)
class AVAssetWriter : NSObject {
  init(URL outputURL: NSURL, fileType outputFileType: String) throws
  @NSCopying var outputURL: NSURL { get }
  var outputFileType: String { get }
  var availableMediaTypes: [String] { get }
  var status: AVAssetWriterStatus { get }
  var error: NSError? { get }
  var metadata: [AVMetadataItem]
  var shouldOptimizeForNetworkUse: Bool
  @available(iOS 8.0, *)
  @NSCopying var directoryForTemporaryFiles: NSURL?
  var inputs: [AVAssetWriterInput] { get }
  func canApplyOutputSettings(outputSettings: [String : AnyObject]?, forMediaType mediaType: String) -> Bool
  func canAddInput(input: AVAssetWriterInput) -> Bool
  func addInput(input: AVAssetWriterInput)
  func startWriting() -> Bool
  func startSessionAtSourceTime(startTime: CMTime)
  func endSessionAtSourceTime(endTime: CMTime)
  func cancelWriting()
  @available(iOS 6.0, *)
  func finishWritingWithCompletionHandler(handler: () -> Void)
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  var overallDurationHint: CMTime
  @available(iOS 4.3, *)
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {
  @available(iOS 7.0, *)
  func canAddInputGroup(inputGroup: AVAssetWriterInputGroup) -> Bool
  @available(iOS 7.0, *)
  func addInputGroup(inputGroup: AVAssetWriterInputGroup)
  @available(iOS 7.0, *)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
@available(iOS 7.0, *)
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)
  var inputs: [AVAssetWriterInput] { get }
  var defaultInput: AVAssetWriterInput? { get }
}
