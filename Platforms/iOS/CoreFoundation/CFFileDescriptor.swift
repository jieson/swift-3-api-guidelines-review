
typealias CFFileDescriptorNativeDescriptor = Int32
class CFFileDescriptor {
}
@available(*, deprecated, renamed="CFFileDescriptor")
typealias CFFileDescriptorRef = CFFileDescriptor
var kCFFileDescriptorReadCallBack: CFOptionFlags { get }
var kCFFileDescriptorWriteCallBack: CFOptionFlags { get }
typealias CFFileDescriptorCallBack = @convention(c) (CFFileDescriptor!, CFOptionFlags, UnsafeMutablePointer<Void>) -> Void
struct CFFileDescriptorContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
@available(iOS 2.0, *)
func CFFileDescriptorGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFFileDescriptorCreate(allocator: CFAllocator!, _ fd: CFFileDescriptorNativeDescriptor, _ closeOnInvalidate: Bool, _ callout: CFFileDescriptorCallBack!, _ context: UnsafePointer<CFFileDescriptorContext>) -> CFFileDescriptor!
@available(iOS 2.0, *)
func CFFileDescriptorGetNativeDescriptor(f: CFFileDescriptor!) -> CFFileDescriptorNativeDescriptor
@available(iOS 2.0, *)
func CFFileDescriptorGetContext(f: CFFileDescriptor!, _ context: UnsafeMutablePointer<CFFileDescriptorContext>)
@available(iOS 2.0, *)
func CFFileDescriptorEnableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(iOS 2.0, *)
func CFFileDescriptorDisableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(iOS 2.0, *)
func CFFileDescriptorInvalidate(f: CFFileDescriptor!)
@available(iOS 2.0, *)
func CFFileDescriptorIsValid(f: CFFileDescriptor!) -> Bool
@available(iOS 2.0, *)
func CFFileDescriptorCreateRunLoopSource(allocator: CFAllocator!, _ f: CFFileDescriptor!, _ order: CFIndex) -> CFRunLoopSource!
