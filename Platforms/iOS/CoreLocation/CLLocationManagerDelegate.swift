
protocol CLLocationManagerDelegate : ObjectProtocol {
  @available(iOS 6.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(iOS 3.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdateHeading newHeading: CLHeading)
  @available(iOS 3.0, *)
  optional func locationManagerShouldDisplayHeadingCalibration(manager: CLLocationManager) -> Bool
  @available(iOS 7.0, *)
  optional func locationManager(manager: CLLocationManager, didDetermineState state: CLRegionState, for region: CLRegion)
  @available(iOS 7.0, *)
  optional func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion)
  @available(iOS 7.0, *)
  optional func locationManager(manager: CLLocationManager, rangingBeaconsDidFailFor region: CLBeaconRegion, withError error: Error)
  @available(iOS 4.0, *)
  optional func locationManager(manager: CLLocationManager, didEnter region: CLRegion)
  @available(iOS 4.0, *)
  optional func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion)
  @available(iOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didFailWithError error: Error)
  @available(iOS 4.0, *)
  optional func locationManager(manager: CLLocationManager, monitoringDidFailFor region: CLRegion?, withError error: Error)
  @available(iOS 4.2, *)
  optional func locationManager(manager: CLLocationManager, didChange status: CLAuthorizationStatus)
  @available(iOS 5.0, *)
  optional func locationManager(manager: CLLocationManager, didStartMonitoringFor region: CLRegion)
  @available(iOS 6.0, *)
  optional func locationManagerDidPauseLocationUpdates(manager: CLLocationManager)
  @available(iOS 6.0, *)
  optional func locationManagerDidResumeLocationUpdates(manager: CLLocationManager)
  @available(iOS 6.0, *)
  optional func locationManager(manager: CLLocationManager, didFinishDeferredUpdatesWithError error: Error?)
  @available(iOS 8.0, *)
  optional func locationManager(manager: CLLocationManager, didVisit visit: CLVisit)
}
