
class SCNetworkReachability {
}
struct SCNetworkReachabilityContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
struct SCNetworkReachabilityFlags : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var transientConnection: SCNetworkReachabilityFlags { get }
  static var reachable: SCNetworkReachabilityFlags { get }
  static var connectionRequired: SCNetworkReachabilityFlags { get }
  static var connectionOnTraffic: SCNetworkReachabilityFlags { get }
  static var interventionRequired: SCNetworkReachabilityFlags { get }
  static var connectionOnDemand: SCNetworkReachabilityFlags { get }
  static var isLocalAddress: SCNetworkReachabilityFlags { get }
  static var isDirect: SCNetworkReachabilityFlags { get }
  static var iswwan: SCNetworkReachabilityFlags { get }
  static var connectionAutomatic: SCNetworkReachabilityFlags { get }
}
typealias SCNetworkReachabilityCallBack = @convention(c) (SCNetworkReachability, SCNetworkReachabilityFlags, UnsafeMutablePointer<Void>) -> Void
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddress(_ allocator: CFAllocator?, _ address: UnsafePointer<sockaddr>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddressPair(_ allocator: CFAllocator?, _ localAddress: UnsafePointer<sockaddr>, _ remoteAddress: UnsafePointer<sockaddr>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithName(_ allocator: CFAllocator?, _ nodename: UnsafePointer<Int8>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetFlags(_ target: SCNetworkReachability, _ flags: UnsafeMutablePointer<SCNetworkReachabilityFlags>) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilitySetCallback(_ target: SCNetworkReachability, _ callout: SCNetworkReachabilityCallBack?, _ context: UnsafeMutablePointer<SCNetworkReachabilityContext>) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilityScheduleWithRunLoop(_ target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilityUnscheduleFromRunLoop(_ target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(tvOS 4.0, *)
func SCNetworkReachabilitySetDispatchQueue(_ target: SCNetworkReachability, _ queue: dispatch_queue_t?) -> Bool
