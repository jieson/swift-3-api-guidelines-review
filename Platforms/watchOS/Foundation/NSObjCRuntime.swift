
var NSFoundationVersionNumber: Double
var NSFoundationVersionNumber10_0: Double { get }
var NSFoundationVersionNumber10_1: Double { get }
var NSFoundationVersionNumber10_1_1: Double { get }
var NSFoundationVersionNumber10_1_2: Double { get }
var NSFoundationVersionNumber10_1_3: Double { get }
var NSFoundationVersionNumber10_1_4: Double { get }
var NSFoundationVersionNumber10_2: Double { get }
var NSFoundationVersionNumber10_2_1: Double { get }
var NSFoundationVersionNumber10_2_2: Double { get }
var NSFoundationVersionNumber10_2_3: Double { get }
var NSFoundationVersionNumber10_2_4: Double { get }
var NSFoundationVersionNumber10_2_5: Double { get }
var NSFoundationVersionNumber10_2_6: Double { get }
var NSFoundationVersionNumber10_2_7: Double { get }
var NSFoundationVersionNumber10_2_8: Double { get }
var NSFoundationVersionNumber10_3: Double { get }
var NSFoundationVersionNumber10_3_1: Double { get }
var NSFoundationVersionNumber10_3_2: Double { get }
var NSFoundationVersionNumber10_3_3: Double { get }
var NSFoundationVersionNumber10_3_4: Double { get }
var NSFoundationVersionNumber10_3_5: Double { get }
var NSFoundationVersionNumber10_3_6: Double { get }
var NSFoundationVersionNumber10_3_7: Double { get }
var NSFoundationVersionNumber10_3_8: Double { get }
var NSFoundationVersionNumber10_3_9: Double { get }
var NSFoundationVersionNumber10_4: Double { get }
var NSFoundationVersionNumber10_4_1: Double { get }
var NSFoundationVersionNumber10_4_2: Double { get }
var NSFoundationVersionNumber10_4_3: Double { get }
var NSFoundationVersionNumber10_4_4_Intel: Double { get }
var NSFoundationVersionNumber10_4_4_PowerPC: Double { get }
var NSFoundationVersionNumber10_4_5: Double { get }
var NSFoundationVersionNumber10_4_6: Double { get }
var NSFoundationVersionNumber10_4_7: Double { get }
var NSFoundationVersionNumber10_4_8: Double { get }
var NSFoundationVersionNumber10_4_9: Double { get }
var NSFoundationVersionNumber10_4_10: Double { get }
var NSFoundationVersionNumber10_4_11: Double { get }
var NSFoundationVersionNumber10_5: Double { get }
var NSFoundationVersionNumber10_5_1: Double { get }
var NSFoundationVersionNumber10_5_2: Double { get }
var NSFoundationVersionNumber10_5_3: Double { get }
var NSFoundationVersionNumber10_5_4: Double { get }
var NSFoundationVersionNumber10_5_5: Double { get }
var NSFoundationVersionNumber10_5_6: Double { get }
var NSFoundationVersionNumber10_5_7: Double { get }
var NSFoundationVersionNumber10_5_8: Double { get }
var NSFoundationVersionNumber10_6: Double { get }
var NSFoundationVersionNumber10_6_1: Double { get }
var NSFoundationVersionNumber10_6_2: Double { get }
var NSFoundationVersionNumber10_6_3: Double { get }
var NSFoundationVersionNumber10_6_4: Double { get }
var NSFoundationVersionNumber10_6_5: Double { get }
var NSFoundationVersionNumber10_6_6: Double { get }
var NSFoundationVersionNumber10_6_7: Double { get }
var NSFoundationVersionNumber10_6_8: Double { get }
var NSFoundationVersionNumber10_7: Double { get }
var NSFoundationVersionNumber10_7_1: Double { get }
var NSFoundationVersionNumber10_7_2: Double { get }
var NSFoundationVersionNumber10_7_3: Double { get }
var NSFoundationVersionNumber10_7_4: Double { get }
var NSFoundationVersionNumber10_8: Double { get }
var NSFoundationVersionNumber10_8_1: Double { get }
var NSFoundationVersionNumber10_8_2: Double { get }
var NSFoundationVersionNumber10_8_3: Double { get }
var NSFoundationVersionNumber10_8_4: Double { get }
var NSFoundationVersionNumber10_9: Int32 { get }
var NSFoundationVersionNumber10_9_1: Int32 { get }
var NSFoundationVersionNumber10_9_2: Double { get }
var NSFoundationVersionNumber10_10: Double { get }
var NSFoundationVersionNumber10_10_1: Double { get }
var NSFoundationVersionNumber10_10_2: Double { get }
var NSFoundationVersionNumber10_10_3: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_0: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_1: Double { get }
var NSFoundationVersionNumber_iPhoneOS_2_2: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_0: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_1: Double { get }
var NSFoundationVersionNumber_iPhoneOS_3_2: Double { get }
var NSFoundationVersionNumber_iOS_4_0: Double { get }
var NSFoundationVersionNumber_iOS_4_1: Double { get }
var NSFoundationVersionNumber_iOS_4_2: Double { get }
var NSFoundationVersionNumber_iOS_4_3: Double { get }
var NSFoundationVersionNumber_iOS_5_0: Double { get }
var NSFoundationVersionNumber_iOS_5_1: Double { get }
var NSFoundationVersionNumber_iOS_6_0: Double { get }
var NSFoundationVersionNumber_iOS_6_1: Double { get }
var NSFoundationVersionNumber_iOS_7_0: Double { get }
var NSFoundationVersionNumber_iOS_7_1: Double { get }
var NSFoundationVersionNumber_iOS_8_0: Double { get }
var NSFoundationVersionNumber_iOS_8_1: Double { get }
var NSFoundationVersionNumber_iOS_8_2: Double { get }
var NSFoundationVersionNumber_iOS_8_3: Double { get }
func NSStringFromSelector(aSelector: Selector) -> String
func NSSelectorFromString(aSelectorName: String) -> Selector
func NSStringFromClass(aClass: AnyClass) -> String
func NSClassFromString(aClassName: String) -> AnyClass?
@available(watchOS 2.0, *)
func NSStringFromProtocol(proto: Protocol) -> String
@available(watchOS 2.0, *)
func NSProtocolFromString(namestr: String) -> Protocol?
func NSGetSizeAndAlignment(typePtr: UnsafePointer<Int8>, _ sizep: UnsafeMutablePointer<Int>, _ alignp: UnsafeMutablePointer<Int>) -> UnsafePointer<Int8>
func NSLogv(format: String, _ args: CVaListPointer)
enum NSComparisonResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OrderedAscending
  case OrderedSame
  case OrderedDescending
}
typealias NSComparator = (AnyObject, AnyObject) -> NSComparisonResult
struct NSEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSEnumerationOptions { get }
  static var Reverse: NSEnumerationOptions { get }
}
struct NSSortOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSSortOptions { get }
  static var Stable: NSSortOptions { get }
}
@available(watchOS 2.0, *)
enum NSQualityOfService : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserInteractive
  case UserInitiated
  case Utility
  case Background
  case Default
}
let NSNotFound: Int
