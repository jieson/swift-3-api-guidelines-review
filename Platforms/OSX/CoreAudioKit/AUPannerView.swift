
class AUPannerView : NSView {
  var audioUnit: AudioUnit { get }
  /*not inherited*/ init(audioUnit au: AudioUnit)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
