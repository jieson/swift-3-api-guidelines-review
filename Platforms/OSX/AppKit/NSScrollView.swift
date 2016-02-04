
@available(OSX 10.7, *)
enum NSScrollElasticity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case None
  case Allowed
}
struct __SFlags {
  var RESERVED: UInt32
  var unarchiving: UInt32
  var registeredForWindowWillClose: UInt32
  var findBarPosition: UInt32
  var predominantAxisScrolling: UInt32
  var hContentElasticity: UInt32
  var vContentElasticity: UInt32
  var unused: UInt32
  var findBarVisible: UInt32
  var autoforwardsScrollWheelEvents: UInt32
  var autohidesScrollers: UInt32
  var hasCustomLineBorderColor: UInt32
  var focusRingNeedsRedisplay: UInt32
  var skipRemoveSuperviewCheck: UInt32
  var doesNotDrawBackground: UInt32
  var needsTile: UInt32
  var hasVerticalRuler: UInt32
  var hasHorizontalRuler: UInt32
  var showRulers: UInt32
  var oldRulerInstalled: UInt32
  var borderType: NSBorderType
  var noDynamicScrolling: UInt32
  var hScrollerStatus: UInt32
  var vScrollerStatus: UInt32
  var hScrollerRequired: UInt32
  var vScrollerRequired: UInt32
  init()
  init(RESERVED: UInt32, unarchiving: UInt32, registeredForWindowWillClose: UInt32, findBarPosition: UInt32, predominantAxisScrolling: UInt32, hContentElasticity: UInt32, vContentElasticity: UInt32, unused: UInt32, findBarVisible: UInt32, autoforwardsScrollWheelEvents: UInt32, autohidesScrollers: UInt32, hasCustomLineBorderColor: UInt32, focusRingNeedsRedisplay: UInt32, skipRemoveSuperviewCheck: UInt32, doesNotDrawBackground: UInt32, needsTile: UInt32, hasVerticalRuler: UInt32, hasHorizontalRuler: UInt32, showRulers: UInt32, oldRulerInstalled: UInt32, borderType: NSBorderType, noDynamicScrolling: UInt32, hScrollerStatus: UInt32, vScrollerStatus: UInt32, hScrollerRequired: UInt32, vScrollerRequired: UInt32)
}
typealias _SFlags = __SFlags
class NSScrollView : NSView, NSTextFinderBarContainer {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  @available(OSX 10.7, *)
  class func frameSizeForContentSize(cSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType aType: NSBorderType, controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> NSSize
  @available(OSX 10.7, *)
  class func contentSizeForFrameSize(fSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType aType: NSBorderType, controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> NSSize
  var documentVisibleRect: NSRect { get }
  var contentSize: NSSize { get }
  unowned(unsafe) var documentView: @sil_unmanaged AnyObject?
  var contentView: NSClipView
  var documentCursor: NSCursor?
  var borderType: NSBorderType
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  var hasVerticalScroller: Bool
  var hasHorizontalScroller: Bool
  var verticalScroller: NSScroller?
  var horizontalScroller: NSScroller?
  var autohidesScrollers: Bool
  var horizontalLineScroll: CGFloat
  var verticalLineScroll: CGFloat
  var lineScroll: CGFloat
  var horizontalPageScroll: CGFloat
  var verticalPageScroll: CGFloat
  var pageScroll: CGFloat
  var scrollsDynamically: Bool
  func tile()
  func reflectScrolledClipView(cView: NSClipView)
  func scrollWheel(theEvent: NSEvent)
  @available(OSX 10.7, *)
  var scrollerStyle: NSScrollerStyle
  @available(OSX 10.7, *)
  var scrollerKnobStyle: NSScrollerKnobStyle
  @available(OSX 10.7, *)
  func flashScrollers()
  @available(OSX 10.7, *)
  var horizontalScrollElasticity: NSScrollElasticity
  @available(OSX 10.7, *)
  var verticalScrollElasticity: NSScrollElasticity
  @available(OSX 10.7, *)
  var usesPredominantAxisScrolling: Bool
  @available(OSX 10.8, *)
  var allowsMagnification: Bool
  @available(OSX 10.8, *)
  var magnification: CGFloat
  @available(OSX 10.8, *)
  var maxMagnification: CGFloat
  @available(OSX 10.8, *)
  var minMagnification: CGFloat
  @available(OSX 10.8, *)
  func magnifyToFitRect(rect: NSRect)
  @available(OSX 10.8, *)
  func setMagnification(magnification: CGFloat, centeredAtPoint point: NSPoint)
  @available(OSX 10.9, *)
  func addFloatingSubview(view: NSView, forAxis axis: NSEventGestureAxis)
  @available(OSX 10.10, *)
  var automaticallyAdjustsContentInsets: Bool
  @available(OSX 10.10, *)
  var contentInsets: NSEdgeInsets
  @available(OSX 10.10, *)
  var scrollerInsets: NSEdgeInsets
  convenience init()
  var findBarView: NSView?
  var findBarVisible: Bool
  func findBarViewDidChangeHeight()
}
@available(OSX 10.8, *)
let NSScrollViewWillStartLiveMagnifyNotification: String
@available(OSX 10.8, *)
let NSScrollViewDidEndLiveMagnifyNotification: String
@available(OSX 10.9, *)
let NSScrollViewWillStartLiveScrollNotification: String
@available(OSX 10.9, *)
let NSScrollViewDidLiveScrollNotification: String
@available(OSX 10.9, *)
let NSScrollViewDidEndLiveScrollNotification: String
extension NSScrollView {
  class func setRulerViewClass(rulerViewClass: AnyClass?)
  class func rulerViewClass() -> AnyClass
  var rulersVisible: Bool
  var hasHorizontalRuler: Bool
  var hasVerticalRuler: Bool
  var horizontalRulerView: NSRulerView?
  var verticalRulerView: NSRulerView?
}
@available(OSX 10.7, *)
enum NSScrollViewFindBarPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AboveHorizontalRuler
  case AboveContent
  case BelowContent
}
extension NSScrollView {
  @available(OSX 10.7, *)
  var findBarPosition: NSScrollViewFindBarPosition
}
