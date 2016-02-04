
@available(tvOS 8.0, *)
class AVAudioUnitTimePitch : AVAudioUnitTimeEffect {
  var rate: Float
  var pitch: Float
  var overlap: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
