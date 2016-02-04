
struct NSPropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immutable: NSPropertyListMutabilityOptions { get }
  static var MutableContainers: NSPropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: NSPropertyListMutabilityOptions { get }
}
enum NSPropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
typealias NSPropertyListReadOptions = NSPropertyListMutabilityOptions
typealias NSPropertyListWriteOptions = Int
class NSPropertyListSerialization : NSObject {
  class func propertyList(plist: AnyObject, isValidForFormat format: NSPropertyListFormat) -> Bool
  @available(OSX 10.6, *)
  class func dataWithPropertyList(plist: AnyObject, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions) throws -> NSData
  @available(OSX 10.6, *)
  class func writePropertyList(plist: AnyObject, toStream stream: NSOutputStream, format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions, error: NSErrorPointer) -> Int
  @available(OSX 10.6, *)
  class func propertyListWithData(data: NSData, options opt: NSPropertyListReadOptions, format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(OSX 10.6, *)
  class func propertyListWithStream(stream: NSInputStream, options opt: NSPropertyListReadOptions, format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use dataWithPropertyList:format:options:error: instead.")
  class func dataFromPropertyList(plist: AnyObject, format: NSPropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> NSData?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyListFromData(data: NSData, mutabilityOption opt: NSPropertyListMutabilityOptions, format: UnsafeMutablePointer<NSPropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
