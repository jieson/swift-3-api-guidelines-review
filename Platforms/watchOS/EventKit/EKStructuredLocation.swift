
@available(watchOS 2.0, *)
class EKStructuredLocation : EKObject, Copying {
  convenience init(title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}