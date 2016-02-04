
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
@available(tvOS 8.0, *)
class CIKernel : NSObject {
  @available(tvOS 8.0, *)
  class func kernelsWithString(string: String) -> [CIKernel]?
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  var name: String { get }
  @available(tvOS 9.0, *)
  func setROISelector(method: Selector)
  @available(tvOS 8.0, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(tvOS 8.0, *)
class CIColorKernel : CIKernel {
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  func applyWithExtent(extent: CGRect, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(tvOS 8.0, *)
class CIWarpKernel : CIKernel {
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, inputImage image: CIImage, arguments args: [AnyObject]?) -> CIImage?
  init()
}
