
class NSSpeechRecognizer : NSObject {
  init?()
  func startListening()
  func stopListening()
  unowned(unsafe) var delegate: @sil_unmanaged NSSpeechRecognizerDelegate?
  var commands: [String]?
  var displayedCommandsTitle: String?
  var listensInForegroundOnly: Bool
  var blocksOtherRecognizers: Bool
}
protocol NSSpeechRecognizerDelegate : NSObjectProtocol {
  optional func speechRecognizer(sender: NSSpeechRecognizer, didRecognizeCommand command: String)
}
