
@available(iOS 8.0, *)
struct UIUserNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIUserNotificationType { get }
  static var Badge: UIUserNotificationType { get }
  static var Sound: UIUserNotificationType { get }
  static var Alert: UIUserNotificationType { get }
}
@available(iOS 9.0, *)
enum UIUserNotificationActionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case TextInput
}
@available(iOS 8.0, *)
enum UIUserNotificationActivationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Foreground
  case Background
}
@available(iOS 8.0, *)
enum UIUserNotificationActionContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Minimal
}
@available(iOS 9.0, *)
let UIUserNotificationTextInputActionButtonTitleKey: String
@available(iOS 9.0, *)
let UIUserNotificationActionResponseTypedTextKey: String
@available(iOS 8.0, *)
class UIUserNotificationSettings : Object {
  convenience init(forTypes types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?)
  var types: UIUserNotificationType { get }
  var categories: Set<UIUserNotificationCategory>? { get }
  init()
}
@available(iOS 8.0, *)
class UIUserNotificationCategory : Object, Copying, MutableCopying, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  var identifier: String? { get }
  func actionsFor(context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationCategory : UIUserNotificationCategory {
  var identifier: String?
  func setActions(actions: [UIUserNotificationAction]?, forContext context: UIUserNotificationActionContext)
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class UIUserNotificationAction : Object, Copying, MutableCopying, SecureCoding {
  init()
  init?(coder aDecoder: Coder)
  var identifier: String? { get }
  var title: String? { get }
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior { get }
  @available(iOS 9.0, *)
  var parameters: [Object : AnyObject] { get }
  var activationMode: UIUserNotificationActivationMode { get }
  var isAuthenticationRequired: Bool { get }
  var isDestructive: Bool { get }
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationAction : UIUserNotificationAction {
  var identifier: String?
  var title: String?
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior
  @available(iOS 9.0, *)
  var parameters: [Object : AnyObject]
  var activationMode: UIUserNotificationActivationMode
  var isAuthenticationRequired: Bool
  var isDestructive: Bool
  init()
  init?(coder aDecoder: Coder)
}