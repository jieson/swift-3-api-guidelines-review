
var DOM_KEY_LOCATION_STANDARD: Int { get }
var DOM_KEY_LOCATION_LEFT: Int { get }
var DOM_KEY_LOCATION_RIGHT: Int { get }
var DOM_KEY_LOCATION_NUMPAD: Int { get }
@available(OSX 10.5, *)
class DOMKeyboardEvent : DOMUIEvent {
  var keyIdentifier: String! { get }
  @available(OSX 10.8, *)
  var location: UInt32 { get }
  var ctrlKey: Bool { get }
  var shiftKey: Bool { get }
  var altKey: Bool { get }
  var metaKey: Bool { get }
  @available(OSX 10.5, *)
  var altGraphKey: Bool { get }
  var keyCode: Int32 { get }
  var charCode: Int32 { get }
  func getModifierState(keyIdentifierArg: String!) -> Bool
  @available(OSX 10.8, *)
  func initKeyboardEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, altGraphKey: Bool)
  @available(OSX 10.8, *)
  func initKeyboardEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
