
@available(OSX 10.11, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @available(OSX 10.11, *)
  @NSCopying var IPv4Settings: NEIPv4Settings?
  @available(OSX 10.11, *)
  @NSCopying var IPv6Settings: NEIPv6Settings?
  @available(OSX 10.11, *)
  @NSCopying var tunnelOverheadBytes: NSNumber?
  @available(OSX 10.11, *)
  @NSCopying var MTU: NSNumber?
  @available(OSX 10.11, *)
  init(tunnelRemoteAddress address: String)
  init()
  init?(coder aDecoder: NSCoder)
}
