
enum NSPopUpArrowPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoArrow
  case ArrowAtCenter
  case ArrowAtBottom
}
class NSPopUpButtonCell : NSMenuItemCell {
  init(textCell stringValue: String, pullsDown pullDown: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: RectEdge
  var usesItemFromMenu: Bool
  var altersStateOfSelectedItem: Bool
  func addItemWithTitle(title: String)
  func addItemsWithTitles(itemTitles: [String])
  func insertItemWithTitle(title: String, at index: Int)
  func removeItemWithTitle(title: String)
  func removeItemAt(index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOf(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(title: String) -> Int
  func indexOfItemWithTag(tag: Int) -> Int
  func indexOfItemWithRepresentedObject(obj: AnyObject?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAt(index: Int) -> NSMenuItem?
  func itemWithTitle(title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func select(item: NSMenuItem?)
  func selectItemAt(index: Int)
  func selectItemWithTitle(title: String)
  func selectItemWithTag(tag: Int) -> Bool
  func setTitle(aString: String?)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAt(index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func attachPopUpWithFrame(cellFrame: Rect, in controlView: NSView)
  func dismissPopUp()
  func performClickWithFrame(frame: Rect, in controlView: NSView)
  var arrowPosition: NSPopUpArrowPosition
  convenience init(textCell aString: String)
  convenience init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct __pbcFlags {
  var pullsDown: UInt32
  var preferredEdge: UInt32
  var menuIsAttached: UInt32
  var usesItemFromMenu: UInt32
  var altersStateOfSelectedItem: UInt32
  var decoding: UInt32
  var arrowPosition: UInt32
  var ignoreMenuLayout: UInt32
  var drawing: UInt32
  var menuShouldBeUniquedAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(pullsDown: UInt32, preferredEdge: UInt32, menuIsAttached: UInt32, usesItemFromMenu: UInt32, altersStateOfSelectedItem: UInt32, decoding: UInt32, arrowPosition: UInt32, ignoreMenuLayout: UInt32, drawing: UInt32, menuShouldBeUniquedAgainstMain: UInt32, RESERVED: UInt32)
}
let NSPopUpButtonCellWillPopUpNotification: String