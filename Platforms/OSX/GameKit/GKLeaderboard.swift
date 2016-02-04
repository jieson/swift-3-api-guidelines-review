
enum GKLeaderboardTimeScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Today
  case Week
  case AllTime
}
enum GKLeaderboardPlayerScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Global
  case FriendsOnly
}
@available(OSX 10.8, *)
class GKLeaderboard : NSObject {
  var timeScope: GKLeaderboardTimeScope
  var playerScope: GKLeaderboardPlayerScope
  @available(OSX 10.10, *)
  var identifier: String?
  var title: String? { get }
  var range: NSRange
  var scores: [GKScore]? { get }
  var maxRange: Int { get }
  var localPlayerScore: GKScore? { get }
  var loading: Bool { get }
  @available(OSX 10.9, *)
  var groupIdentifier: String? { get }
  init()
  @available(OSX 10.10, *)
  init(players: [GKPlayer])
  func loadScoresWithCompletionHandler(completionHandler: (([GKScore]?, NSError?) -> Void)?)
  @available(OSX 10.8, *)
  class func loadLeaderboardsWithCompletionHandler(completionHandler: (([GKLeaderboard]?, NSError?) -> Void)?)
}
extension GKLeaderboard {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use identifier instead")
  var category: String?
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use initWithPlayers: instead")
  init?(playerIDs: [String]?)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use setDefaultLeaderboardIdentifier:completionHandler: on GKLocalPlayer instead")
  class func setDefaultLeaderboard(leaderboardIdentifier: String?, withCompletionHandler completionHandler: ((NSError?) -> Void)?)
}
extension GKLeaderboard {
  @available(OSX 10.8, *)
  func loadImageWithCompletionHandler(completionHandler: ((NSImage?, NSError?) -> Void)?)
}
