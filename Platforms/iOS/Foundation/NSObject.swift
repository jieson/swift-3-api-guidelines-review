
protocol Copying {
  func copy(with zone: Zone = nil) -> AnyObject
}
protocol MutableCopying {
  func mutableCopy(with zone: Zone = nil) -> AnyObject
}
protocol Coding {
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SecureCoding : Coding {
  static func supportsSecureCoding() -> Bool
}
extension Object {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObject(for aCoder: Coder) -> AnyObject?
  func replacementObject(for aCoder: Coder) -> AnyObject?
  class func awakeAfter(aDecoder: Coder) -> AnyObject?
  func awakeAfter(aDecoder: Coder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
protocol DiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension Object {
  @available(iOS 4.0, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> CFTypeRef?
