
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
@available(iOS 8.0, *)
class CIKernel : NSObject {
  @available(iOS 8.0, *)
  class func kernelsWithString(string: String) -> [CIKernel]?
  @available(iOS 8.0, *)
  convenience init?(string: String)
  @available(iOS 8.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  func setROISelector(method: Selector)
  @available(iOS 8.0, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(iOS 8.0, *)
class CIColorKernel : CIKernel {
  @available(iOS 8.0, *)
  convenience init?(string: String)
  @available(iOS 8.0, *)
  func applyWithExtent(extent: CGRect, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(iOS 8.0, *)
class CIWarpKernel : CIKernel {
  @available(iOS 8.0, *)
  convenience init?(string: String)
  @available(iOS 8.0, *)
  func applyWithExtent(extent: CGRect, roiCallback callback: CIKernelROICallback, inputImage image: CIImage, arguments args: [AnyObject]?) -> CIImage?
  init()
}
