
@available(tvOS 4.0, *)
enum UIApplicationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Active
  case Inactive
  case Background
}
typealias UIBackgroundTaskIdentifier = Int
@available(tvOS 4.0, *)
let UIBackgroundTaskInvalid: UIBackgroundTaskIdentifier
@available(tvOS 4.0, *)
let UIMinimumKeepAliveTimeout: NSTimeInterval
@available(tvOS 2.0, *)
class UIApplication : UIResponder {
  class func sharedApplication() -> UIApplication
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  func beginIgnoringInteractionEvents()
  func endIgnoringInteractionEvents()
  func isIgnoringInteractionEvents() -> Bool
  var idleTimerDisabled: Bool
  func openURL(url: NSURL) -> Bool
  @available(tvOS 3.0, *)
  func canOpenURL(url: NSURL) -> Bool
  func sendEvent(event: UIEvent)
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(action: Selector, to target: AnyObject?, from sender: AnyObject?, forEvent event: UIEvent?) -> Bool
  @available(tvOS 4.0, *)
  var applicationState: UIApplicationState { get }
  @available(tvOS 4.0, *)
  var backgroundTimeRemaining: NSTimeInterval { get }
  @available(tvOS 4.0, *)
  func beginBackgroundTaskWithExpirationHandler(handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  @available(tvOS 7.0, *)
  func beginBackgroundTaskWithName(taskName: String?, expirationHandler handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  @available(tvOS 4.0, *)
  func endBackgroundTask(identifier: UIBackgroundTaskIdentifier)
  @available(tvOS 4.0, *)
  var protectedDataAvailable: Bool { get }
  @available(tvOS 5.0, *)
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  @available(tvOS 7.0, *)
  var preferredContentSizeCategory: String { get }
  init()
}
extension UIApplication {
  @available(tvOS 8.0, *)
  func registerForRemoteNotifications()
  @available(tvOS 3.0, *)
  func unregisterForRemoteNotifications()
  @available(tvOS 8.0, *)
  func isRegisteredForRemoteNotifications() -> Bool
}
extension UIApplication {
}
extension UIApplication {
}
extension UIApplication {
  @available(tvOS 4.0, *)
  func beginReceivingRemoteControlEvents()
  @available(tvOS 4.0, *)
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
}
extension UIApplication {
}
extension UIApplication {
  @available(tvOS 6.0, *)
  func extendStateRestoration()
  @available(tvOS 6.0, *)
  func completeStateRestoration()
  @available(tvOS 7.0, *)
  func ignoreSnapshotOnNextApplicationLaunch()
  @available(tvOS 7.0, *)
  class func registerObjectForStateRestoration(object: UIStateRestoring, restorationIdentifier: String)
}
protocol UIApplicationDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func applicationDidFinishLaunching(application: UIApplication)
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(tvOS 2.0, *)
  optional func applicationDidBecomeActive(application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationWillResignActive(application: UIApplication)
  @available(tvOS 9.0, *)
  optional func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool
  @available(tvOS 2.0, *)
  optional func applicationDidReceiveMemoryWarning(application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationWillTerminate(application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationSignificantTimeChange(application: UIApplication)
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError)
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject])
  @available(tvOS 7.0, *)
  optional func application(application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: () -> Void)
  @available(tvOS 8.2, *)
  optional func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: ([NSObject : AnyObject]?) -> Void)
  @available(tvOS 9.0, *)
  optional func applicationShouldRequestHealthAuthorization(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationDidEnterBackground(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationWillEnterForeground(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationProtectedDataWillBecomeUnavailable(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationProtectedDataDidBecomeAvailable(application: UIApplication)
  @available(tvOS 5.0, *)
  optional var window: UIWindow? { get set }
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: String) -> Bool
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, willEncodeRestorableStateWithCoder coder: NSCoder)
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, didDecodeRestorableStateWithCoder coder: NSCoder)
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: NSError)
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, didUpdateUserActivity userActivity: NSUserActivity)
}
extension UIApplication {
}
func UIApplicationMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
let UITrackingRunLoopMode: String
@available(tvOS 4.0, *)
let UIApplicationDidEnterBackgroundNotification: String
@available(tvOS 4.0, *)
let UIApplicationWillEnterForegroundNotification: String
let UIApplicationDidFinishLaunchingNotification: String
let UIApplicationDidBecomeActiveNotification: String
let UIApplicationWillResignActiveNotification: String
let UIApplicationDidReceiveMemoryWarningNotification: String
let UIApplicationWillTerminateNotification: String
let UIApplicationSignificantTimeChangeNotification: String
@available(tvOS 3.0, *)
let UIApplicationLaunchOptionsURLKey: String
@available(tvOS 3.0, *)
let UIApplicationLaunchOptionsSourceApplicationKey: String
@available(tvOS 3.2, *)
let UIApplicationLaunchOptionsAnnotationKey: String
@available(tvOS 4.0, *)
let UIApplicationProtectedDataWillBecomeUnavailable: String
@available(tvOS 4.0, *)
let UIApplicationProtectedDataDidBecomeAvailable: String
@available(tvOS 4.0, *)
let UIApplicationLaunchOptionsLocationKey: String
@available(tvOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothCentralsKey: String
@available(tvOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothPeripheralsKey: String
@available(tvOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityDictionaryKey: String
@available(tvOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityTypeKey: String
@available(tvOS 8.0, *)
let UIApplicationOpenSettingsURLString: String
@available(tvOS 9.0, *)
let UIApplicationOpenURLOptionsSourceApplicationKey: String
@available(tvOS 9.0, *)
let UIApplicationOpenURLOptionsAnnotationKey: String
@available(tvOS 9.0, *)
let UIApplicationOpenURLOptionsOpenInPlaceKey: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraSmall: String
@available(tvOS 7.0, *)
let UIContentSizeCategorySmall: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryMedium: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityMedium: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryDidChangeNotification: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryNewValueKey: String
@available(tvOS 7.0, *)
let UIApplicationUserDidTakeScreenshotNotification: String
@available(tvOS 8.0, *)
let UIApplicationKeyboardExtensionPointIdentifier: String
