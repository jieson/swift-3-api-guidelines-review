
@available(OSX 10.9, *)
class NSAppearance : NSObject, NSCoding {
  @available(OSX 10.9, *)
  var name: String { get }
  class func currentAppearance() -> NSAppearance
  class func setCurrentAppearance(appearance: NSAppearance?)
  /*not inherited*/ init?(named name: String)
  init?(appearanceNamed name: String, bundle: NSBundle?)
  @available(OSX 10.10, *)
  var allowsVibrancy: Bool { get }
  init()
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
let NSAppearanceNameAqua: String
@available(OSX, introduced=10.9, deprecated=10.10, message="Light content should use the default Aqua apppearance.")
let NSAppearanceNameLightContent: String
@available(OSX 10.10, *)
let NSAppearanceNameVibrantDark: String
@available(OSX 10.10, *)
let NSAppearanceNameVibrantLight: String
protocol NSAppearanceCustomization : NSObjectProtocol {
  @available(OSX 10.9, *)
  var appearance: NSAppearance? { get set }
  @available(OSX 10.9, *)
  var effectiveAppearance: NSAppearance { get }
}
