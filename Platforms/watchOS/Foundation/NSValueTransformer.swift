
@available(watchOS 2.0, *)
let NSNegateBooleanTransformerName: String
@available(watchOS 2.0, *)
let NSIsNilTransformerName: String
@available(watchOS 2.0, *)
let NSIsNotNilTransformerName: String
@available(watchOS 2.0, *)
let NSUnarchiveFromDataTransformerName: String
@available(watchOS 2.0, *)
let NSKeyedUnarchiveFromDataTransformerName: String
@available(watchOS 2.0, *)
class NSValueTransformer : NSObject {
  class func setValueTransformer(transformer: NSValueTransformer?, forName name: String)
  /*not inherited*/ init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(value: AnyObject?) -> AnyObject?
  init()
}
