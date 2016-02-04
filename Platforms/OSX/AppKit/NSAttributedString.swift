
@available(OSX 10.0, *)
let NSFontAttributeName: String
@available(OSX 10.0, *)
let NSParagraphStyleAttributeName: String
@available(OSX 10.0, *)
let NSForegroundColorAttributeName: String
@available(OSX 10.0, *)
let NSBackgroundColorAttributeName: String
@available(OSX 10.0, *)
let NSLigatureAttributeName: String
@available(OSX 10.0, *)
let NSKernAttributeName: String
@available(OSX 10.0, *)
let NSStrikethroughStyleAttributeName: String
@available(OSX 10.0, *)
let NSUnderlineStyleAttributeName: String
@available(OSX 10.0, *)
let NSStrokeColorAttributeName: String
@available(OSX 10.0, *)
let NSStrokeWidthAttributeName: String
@available(OSX 10.0, *)
let NSShadowAttributeName: String
@available(OSX 10.10, *)
let NSTextEffectAttributeName: String
@available(OSX 10.0, *)
let NSAttachmentAttributeName: String
@available(OSX 10.0, *)
let NSLinkAttributeName: String
@available(OSX 10.0, *)
let NSBaselineOffsetAttributeName: String
@available(OSX 10.0, *)
let NSUnderlineColorAttributeName: String
@available(OSX 10.0, *)
let NSStrikethroughColorAttributeName: String
@available(OSX 10.0, *)
let NSObliquenessAttributeName: String
@available(OSX 10.0, *)
let NSExpansionAttributeName: String
@available(OSX 10.6, *)
let NSWritingDirectionAttributeName: String
@available(OSX 10.7, *)
let NSVerticalGlyphFormAttributeName: String
let NSCursorAttributeName: String
let NSToolTipAttributeName: String
let NSMarkedClauseSegmentAttributeName: String
@available(OSX 10.8, *)
let NSTextAlternativesAttributeName: String
let NSSpellingStateAttributeName: String
let NSSuperscriptAttributeName: String
let NSGlyphInfoAttributeName: String
@available(OSX 10.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(OSX 10.0, *)
  case StyleThick
  @available(OSX 10.0, *)
  case StyleDouble
  @available(OSX 10.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(OSX 10.0, *)
  case PatternDot
  @available(OSX 10.0, *)
  case PatternDash
  @available(OSX 10.0, *)
  case PatternDashDot
  @available(OSX 10.0, *)
  case PatternDashDotDot
  @available(OSX 10.0, *)
  case ByWord
}
@available(OSX 10.11, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(OSX 10.10, *)
let NSTextEffectLetterpressStyle: String
@available(OSX 10.5, *)
var NSSpellingStateSpellingFlag: Int { get }
@available(OSX 10.5, *)
var NSSpellingStateGrammarFlag: Int { get }
extension NSMutableAttributedString {
  @available(OSX 10.0, *)
  func fixAttributesInRange(range: NSRange)
  func fixFontAttributeInRange(range: NSRange)
  func fixParagraphStyleAttributeInRange(range: NSRange)
  func fixAttachmentAttributeInRange(range: NSRange)
}
@available(OSX 10.0, *)
let NSPlainTextDocumentType: String
@available(OSX 10.0, *)
let NSRTFTextDocumentType: String
@available(OSX 10.0, *)
let NSRTFDTextDocumentType: String
@available(OSX 10.0, *)
let NSHTMLTextDocumentType: String
let NSMacSimpleTextDocumentType: String
let NSDocFormatTextDocumentType: String
let NSWordMLTextDocumentType: String
let NSWebArchiveTextDocumentType: String
@available(OSX 10.5, *)
let NSOfficeOpenXMLTextDocumentType: String
@available(OSX 10.5, *)
let NSOpenDocumentTextDocumentType: String
@available(OSX 10.7, *)
let NSTextLayoutSectionOrientation: String
@available(OSX 10.7, *)
let NSTextLayoutSectionRange: String
@available(OSX 10.0, *)
let NSDocumentTypeDocumentAttribute: String
let NSConvertedDocumentAttribute: String
let NSCocoaVersionDocumentAttribute: String
@available(OSX 10.6, *)
let NSFileTypeDocumentAttribute: String
let NSTitleDocumentAttribute: String
let NSCompanyDocumentAttribute: String
let NSCopyrightDocumentAttribute: String
let NSSubjectDocumentAttribute: String
let NSAuthorDocumentAttribute: String
let NSKeywordsDocumentAttribute: String
let NSCommentDocumentAttribute: String
let NSEditorDocumentAttribute: String
let NSCreationTimeDocumentAttribute: String
let NSModificationTimeDocumentAttribute: String
@available(OSX 10.5, *)
let NSManagerDocumentAttribute: String
@available(OSX 10.6, *)
let NSCategoryDocumentAttribute: String
@available(OSX 10.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(OSX 10.11, *)
let NSDefaultAttributesDocumentAttribute: String
@available(OSX 10.0, *)
let NSPaperSizeDocumentAttribute: String
let NSLeftMarginDocumentAttribute: String
let NSRightMarginDocumentAttribute: String
let NSTopMarginDocumentAttribute: String
let NSBottomMarginDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewSizeDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewZoomDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewModeDocumentAttribute: String
@available(OSX 10.0, *)
let NSReadOnlyDocumentAttribute: String
@available(OSX 10.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(OSX 10.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(OSX 10.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(OSX 10.7, *)
let NSTextLayoutSectionsAttribute: String
let NSExcludedElementsDocumentAttribute: String
let NSTextEncodingNameDocumentAttribute: String
let NSPrefixSpacesDocumentAttribute: String
let NSDocumentTypeDocumentOption: String
let NSDefaultAttributesDocumentOption: String
let NSCharacterEncodingDocumentOption: String
let NSTextEncodingNameDocumentOption: String
let NSBaseURLDocumentOption: String
let NSTimeoutDocumentOption: String
let NSWebPreferencesDocumentOption: String
let NSWebResourceLoadDelegateDocumentOption: String
let NSTextSizeMultiplierDocumentOption: String
@available(OSX 10.6, *)
let NSFileTypeDocumentOption: String
extension NSAttributedString {
  @available(OSX 10.11, *)
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  func dataFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSData
  @available(OSX 10.0, *)
  func fileWrapperFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSFileWrapper
  init?(RTF data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(RTFD data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, baseURL base: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(docFormat data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(HTML data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(RTFDFileWrapper wrapper: NSFileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  func RTFFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
  func RTFDFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
  func RTFDFileWrapperFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSFileWrapper?
  func docFormatFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
}
extension NSMutableAttributedString {
  @available(OSX 10.11, *)
  func readFromURL(url: NSURL, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
  @available(OSX 10.0, *)
  func readFromData(data: NSData, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
}
extension NSAttributedString {
  func fontAttributesInRange(range: NSRange) -> [String : AnyObject]
  func rulerAttributesInRange(range: NSRange) -> [String : AnyObject]
  @available(OSX 10.11, *)
  func containsAttachmentsInRange(range: NSRange) -> Bool
  func lineBreakBeforeIndex(location: Int, withinRange aRange: NSRange) -> Int
  func lineBreakByHyphenatingBeforeIndex(location: Int, withinRange aRange: NSRange) -> Int
  func doubleClickAtIndex(location: Int) -> NSRange
  func nextWordFromIndex(location: Int, forward isForward: Bool) -> Int
  func rangeOfTextBlock(block: NSTextBlock, atIndex location: Int) -> NSRange
  func rangeOfTextTable(table: NSTextTable, atIndex location: Int) -> NSRange
  func rangeOfTextList(list: NSTextList, atIndex location: Int) -> NSRange
  func itemNumberInTextList(list: NSTextList, atIndex location: Int) -> Int
}
extension NSAttributedString : NSPasteboardReading, NSPasteboardWriting {
  @available(OSX 10.5, *)
  class func textTypes() -> [String]
  @available(OSX 10.5, *)
  class func textUnfilteredTypes() -> [String]
  @available(OSX 10.0, *)
  class func readableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  @available(OSX 10.0, *)
  func writableTypesForPasteboard(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.0, *)
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
extension NSMutableAttributedString {
  func superscriptRange(range: NSRange)
  func subscriptRange(range: NSRange)
  func unscriptRange(range: NSRange)
  func applyFontTraits(traitMask: NSFontTraitMask, range: NSRange)
  func setAlignment(alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(writingDirection: NSWritingDirection, range: NSRange)
}
@available(OSX, introduced=10.0, deprecated=10.11, message="This attribute is bound to a specific implementation of ATS feature and not generically supported by wide range of fonts. The majority of characters accessed through this API are now encoded in the Unicode standard. Use the CTFont feature API for fine control over character shape choices.")
let NSCharacterShapeAttributeName: String
@available(OSX, introduced=10.8, deprecated=10.11)
let NSUsesScreenFontsDocumentAttribute: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSUnderlineByWord instead")
var NSUnderlineByWordMask: Int
extension NSAttributedString {
  var containsAttachments: Bool { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(URL url: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSDataDetector instead")
  func URLAtIndex(location: Int, effectiveRange: NSRangePointer) -> NSURL?
}
extension NSMutableAttributedString {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -readFromURL:options:documentAttributes:error: instead")
  func readFromURL(url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -readFromData:options:documentAttributes:error: instead")
  func readFromData(data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
}
