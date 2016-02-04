
@available(iOS 6.0, *)
class SKStoreProductViewController : UIViewController {
  @available(iOS 6.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKStoreProductViewControllerDelegate?
  @available(iOS 6.0, *)
  func loadProductWithParameters(parameters: [String : AnyObject], completionBlock block: ((Bool, NSError?) -> Void)?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol SKStoreProductViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func productViewControllerDidFinish(viewController: SKStoreProductViewController)
}
@available(iOS 6.0, *)
let SKStoreProductParameterITunesItemIdentifier: String
@available(iOS 8.0, *)
let SKStoreProductParameterAffiliateToken: String
@available(iOS 8.0, *)
let SKStoreProductParameterCampaignToken: String
@available(iOS 8.3, *)
let SKStoreProductParameterProviderToken: String
