
@available(iOS 8.0, *)
class WKBackForwardListItem : NSObject {
  @NSCopying var URL: NSURL { get }
  var title: String? { get }
  @NSCopying var initialURL: NSURL { get }
  init()
}
