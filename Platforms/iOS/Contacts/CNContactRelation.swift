
@available(iOS 9.0, *)
class CNContactRelation : NSObject, NSCopying, NSSecureCoding {
  init(name: String)
  var name: String { get }
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNLabelContactRelationFather: String
@available(iOS 9.0, *)
let CNLabelContactRelationMother: String
@available(iOS 9.0, *)
let CNLabelContactRelationParent: String
@available(iOS 9.0, *)
let CNLabelContactRelationBrother: String
@available(iOS 9.0, *)
let CNLabelContactRelationSister: String
@available(iOS 9.0, *)
let CNLabelContactRelationChild: String
@available(iOS 9.0, *)
let CNLabelContactRelationFriend: String
@available(iOS 9.0, *)
let CNLabelContactRelationSpouse: String
@available(iOS 9.0, *)
let CNLabelContactRelationPartner: String
@available(iOS 9.0, *)
let CNLabelContactRelationAssistant: String
@available(iOS 9.0, *)
let CNLabelContactRelationManager: String
