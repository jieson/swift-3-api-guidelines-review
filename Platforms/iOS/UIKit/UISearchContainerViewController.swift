
@available(iOS 9.1, *)
class UISearchContainerViewController : UIViewController {
  var searchController: UISearchController { get }
  init(searchController: UISearchController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}