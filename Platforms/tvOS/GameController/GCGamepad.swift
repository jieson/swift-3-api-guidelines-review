
@available(tvOS 7.0, *)
class GCGamepad : Object {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCGamepadValueChangedHandler?
  func saveSnapshot() -> GCGamepadSnapshot
  var dpad: GCControllerDirectionPad { get }
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }
  var leftShoulder: GCControllerButtonInput { get }
  var rightShoulder: GCControllerButtonInput { get }
  init()
}
typealias GCGamepadValueChangedHandler = (GCGamepad, GCControllerElement) -> Void