
@available(iOS 2.0, *)
class UISlider : UIControl, NSCoding {
  var value: Float
  var minimumValue: Float
  var maximumValue: Float
  var minimumValueImage: UIImage?
  var maximumValueImage: UIImage?
  var continuous: Bool
  @available(iOS 5.0, *)
  var minimumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var maximumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var thumbTintColor: UIColor?
  func setValue(value: Float, animated: Bool)
  func setThumbImage(image: UIImage?, forState state: UIControlState)
  func setMinimumTrackImage(image: UIImage?, forState state: UIControlState)
  func setMaximumTrackImage(image: UIImage?, forState state: UIControlState)
  func thumbImageForState(state: UIControlState) -> UIImage?
  func minimumTrackImageForState(state: UIControlState) -> UIImage?
  func maximumTrackImageForState(state: UIControlState) -> UIImage?
  var currentThumbImage: UIImage? { get }
  var currentMinimumTrackImage: UIImage? { get }
  var currentMaximumTrackImage: UIImage? { get }
  func minimumValueImageRectForBounds(bounds: CGRect) -> CGRect
  func maximumValueImageRectForBounds(bounds: CGRect) -> CGRect
  func trackRectForBounds(bounds: CGRect) -> CGRect
  func thumbRectForBounds(bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
