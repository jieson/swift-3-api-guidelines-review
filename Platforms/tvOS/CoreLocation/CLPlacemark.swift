
@available(tvOS 5.0, *)
class CLPlacemark : NSObject, NSCopying, NSSecureCoding {
  init(placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @available(tvOS 9.0, *)
  @NSCopying var timeZone: NSTimeZone? { get }
  var addressDictionary: [NSObject : AnyObject]? { get }
  var name: String? { get }
  var thoroughfare: String? { get }
  var subThoroughfare: String? { get }
  var locality: String? { get }
  var subLocality: String? { get }
  var administrativeArea: String? { get }
  var subAdministrativeArea: String? { get }
  var postalCode: String? { get }
  var ISOcountryCode: String? { get }
  var country: String? { get }
  var inlandWater: String? { get }
  var ocean: String? { get }
  var areasOfInterest: [String]? { get }
  init()
  @available(tvOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
