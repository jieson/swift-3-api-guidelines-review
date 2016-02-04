
enum GKGameCenterViewControllerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Leaderboards
  case Achievements
  case Challenges
}
@available(OSX 10.9, *)
class GKGameCenterViewController : NSViewController, GKViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKGameCenterViewController {
  unowned(unsafe) var gameCenterDelegate: @sil_unmanaged GKGameCenterControllerDelegate?
  var viewState: GKGameCenterViewControllerState
}
extension GKGameCenterViewController {
  @available(OSX 10.8, *)
  var leaderboardTimeScope: GKLeaderboardTimeScope
  @available(OSX 10.10, *)
  var leaderboardIdentifier: String?
  @available(OSX, introduced=10.8, deprecated=10.10, message="GKGameCenterViewController's leaderboardCategory property is deprecated. Use leaderboardIdentifier instead.")
  var leaderboardCategory: String?
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  func gameCenterViewControllerDidFinish(gameCenterViewController: GKGameCenterViewController)
}
