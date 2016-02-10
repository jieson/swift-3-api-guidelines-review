
let GKGameModelMaxScore: Int
let GKGameModelMinScore: Int
protocol GKGameModelUpdate : ObjectProtocol {
  var value: Int { get set }
}
protocol GKGameModelPlayer : ObjectProtocol {
  var playerId: Int { get }
}
protocol GKGameModel : ObjectProtocol, Copying {
  var players: [GKGameModelPlayer]? { get }
  var activePlayer: GKGameModelPlayer? { get }
  func setGameModel(gameModel: GKGameModel)
  func gameModelUpdates(for player: GKGameModelPlayer) -> [GKGameModelUpdate]?
  func apply(gameModelUpdate: GKGameModelUpdate)
  optional func score(for player: GKGameModelPlayer) -> Int
  optional func isWin(for player: GKGameModelPlayer) -> Bool
  optional func isLoss(for player: GKGameModelPlayer) -> Bool
  optional func unapplyGameModelUpdate(gameModelUpdate: GKGameModelUpdate)
}
