
struct UIPopoverArrowDirection : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Up: UIPopoverArrowDirection { get }
  static var Down: UIPopoverArrowDirection { get }
  static var Left: UIPopoverArrowDirection { get }
  static var Right: UIPopoverArrowDirection { get }
  static var Any: UIPopoverArrowDirection { get }
  static var Unknown: UIPopoverArrowDirection { get }
}
extension UIViewController {
  @available(tvOS 3.2, *)
  var modalInPopover: Bool
}
