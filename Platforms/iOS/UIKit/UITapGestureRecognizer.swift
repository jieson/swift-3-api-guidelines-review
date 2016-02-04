
@available(iOS 3.2, *)
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  init(target: AnyObject?, action: Selector)
  convenience init()
}
