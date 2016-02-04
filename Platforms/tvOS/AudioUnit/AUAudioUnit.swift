
typealias AUAudioUnitStatus = OSStatus
typealias AUEventSampleTime = Int64
var AUEventSampleTimeImmediate: AUEventSampleTime { get }
typealias AUAudioFrameCount = UInt32
typealias AUAudioChannelCount = UInt32
enum AUAudioUnitBusType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Input
  case Output
}
typealias AURenderPullInputBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>) -> AUAudioUnitStatus
typealias AURenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, AURenderPullInputBlock?) -> AUAudioUnitStatus
typealias AURenderObserver = (AudioUnitRenderActionFlags, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void
typealias AUScheduleParameterBlock = (AUEventSampleTime, AUAudioFrameCount, AUParameterAddress, AUValue) -> Void
typealias AUScheduleMIDIEventBlock = (AUEventSampleTime, UInt8, Int, UnsafePointer<UInt8>) -> Void
typealias AUHostMusicalContextBlock = (UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<Double>) -> Bool
struct AUHostTransportStateFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Changed: AUHostTransportStateFlags { get }
  static var Moving: AUHostTransportStateFlags { get }
  static var Recording: AUHostTransportStateFlags { get }
  static var Cycling: AUHostTransportStateFlags { get }
}
typealias AUHostTransportStateBlock = (UnsafeMutablePointer<AUHostTransportStateFlags>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>) -> Bool
@available(tvOS 9.0, *)
class AUAudioUnit : NSObject {
  init(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions) throws
  convenience init(componentDescription: AudioComponentDescription) throws
  class func instantiateWithComponentDescription(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions, completionHandler: (AUAudioUnit?, NSError?) -> Void)
  var componentDescription: AudioComponentDescription { get }
  var component: AudioComponent { get }
  var componentName: String? { get }
  var audioUnitName: String? { get }
  var manufacturerName: String? { get }
  var componentVersion: UInt32 { get }
  func allocateRenderResources() throws
  func deallocateRenderResources()
  var renderResourcesAllocated: Bool { get }
  func reset()
  var inputBusses: AUAudioUnitBusArray { get }
  var outputBusses: AUAudioUnitBusArray { get }
  var renderBlock: AURenderBlock { get }
  var scheduleParameterBlock: AUScheduleParameterBlock { get }
  func tokenByAddingRenderObserver(observer: AURenderObserver) -> Int
  func removeRenderObserver(token: Int)
  var maximumFramesToRender: AUAudioFrameCount
  var parameterTree: AUParameterTree? { get }
  func parametersForOverviewWithCount(count: Int) -> [NSNumber]
  var allParameterValues: Bool { get }
  var musicDeviceOrEffect: Bool { get }
  var virtualMIDICableCount: Int { get }
  var scheduleMIDIEventBlock: AUScheduleMIDIEventBlock? { get }
  var fullState: [String : AnyObject]?
  var fullStateForDocument: [String : AnyObject]?
  var factoryPresets: [AUAudioUnitPreset]? { get }
  var currentPreset: AUAudioUnitPreset?
  var latency: NSTimeInterval { get }
  var tailTime: NSTimeInterval { get }
  var renderQuality: Int
  var shouldBypassEffect: Bool
  var canProcessInPlace: Bool { get }
  var renderingOffline: Bool
  var channelCapabilities: [NSNumber]? { get }
  var musicalContextBlock: AUHostMusicalContextBlock?
  var transportStateBlock: AUHostTransportStateBlock?
  var contextName: String?
}
typealias AUInputHandler = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void
extension AUAudioUnit {
  var canPerformInput: Bool { get }
  var canPerformOutput: Bool { get }
  var inputEnabled: Bool
  var outputEnabled: Bool
  var outputProvider: AURenderPullInputBlock?
  var inputHandler: AUInputHandler?
  func startHardware() throws
  func stopHardware()
}
@available(tvOS 9.0, *)
class AUAudioUnitBusArray : NSObject, NSFastEnumeration {
  init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType, busses busArray: [AUAudioUnitBus])
  convenience init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType)
  var count: Int { get }
  subscript (index: Int) -> AUAudioUnitBus { get }
  var countChangeable: Bool { get }
  func setBusCount(count: Int) throws
  func addObserverToAllBusses(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func removeObserverFromAllBusses(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }
  var busType: AUAudioUnitBusType { get }
  @available(tvOS 9.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(tvOS 9.0, *)
class AUAudioUnitBus : NSObject {
  var enabled: Bool
  var name: String?
  var index: Int { get }
  var busType: AUAudioUnitBusType { get }
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }
  var supportedChannelLayoutTags: [NSNumber]? { get }
  var contextPresentationLatency: NSTimeInterval
  init()
}
@available(tvOS 9.0, *)
class AUAudioUnitPreset : NSObject, NSSecureCoding {
  var number: Int
  var name: String
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
