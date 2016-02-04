
let localNotificationCenterType: String
enum NotificationSuspensionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Drop
  case Coalesce
  case Hold
  case DeliverImmediately
}
struct DistributedNotificationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DeliverImmediately: DistributedNotificationOptions { get }
  static var PostToAllSessions: DistributedNotificationOptions { get }
}
let notificationDeliverImmediately: DistributedNotificationOptions
let notificationPostToAllSessions: DistributedNotificationOptions
class DistributedNotificationCenter : NotificationCenter {
  class func forType(notificationCenterType: String) -> DistributedNotificationCenter
  class func defaultCenter() -> DistributedNotificationCenter
  func addObserver(observer: AnyObject, selector: Selector, name: String?, object: String?, suspensionBehavior: NotificationSuspensionBehavior)
  func postNotificationName(name: String, object: String?, userInfo: [Object : AnyObject]? = [:], deliverImmediately: Bool)
  func postNotificationName(name: String, object: String?, userInfo: [Object : AnyObject]? = [:], options: DistributedNotificationOptions = [])
  var suspended: Bool
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: String?)
  init()
}