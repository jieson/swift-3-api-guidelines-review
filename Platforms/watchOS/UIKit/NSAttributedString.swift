
@available(watchOS 2.0, *)
let NSFontAttributeName: String
@available(watchOS 2.0, *)
let NSParagraphStyleAttributeName: String
@available(watchOS 2.0, *)
let NSForegroundColorAttributeName: String
@available(watchOS 2.0, *)
let NSBackgroundColorAttributeName: String
@available(watchOS 2.0, *)
let NSLigatureAttributeName: String
@available(watchOS 2.0, *)
let NSKernAttributeName: String
@available(watchOS 2.0, *)
let NSStrikethroughStyleAttributeName: String
@available(watchOS 2.0, *)
let NSUnderlineStyleAttributeName: String
@available(watchOS 2.0, *)
let NSStrokeColorAttributeName: String
@available(watchOS 2.0, *)
let NSStrokeWidthAttributeName: String
@available(watchOS 2.0, *)
let NSShadowAttributeName: String
@available(watchOS 2.0, *)
let NSTextEffectAttributeName: String
@available(watchOS 2.0, *)
let NSAttachmentAttributeName: String
@available(watchOS 2.0, *)
let NSLinkAttributeName: String
@available(watchOS 2.0, *)
let NSBaselineOffsetAttributeName: String
@available(watchOS 2.0, *)
let NSUnderlineColorAttributeName: String
@available(watchOS 2.0, *)
let NSStrikethroughColorAttributeName: String
@available(watchOS 2.0, *)
let NSObliquenessAttributeName: String
@available(watchOS 2.0, *)
let NSExpansionAttributeName: String
@available(watchOS 2.0, *)
let NSWritingDirectionAttributeName: String
@available(watchOS 2.0, *)
let NSVerticalGlyphFormAttributeName: String
@available(watchOS 2.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(watchOS 2.0, *)
  case StyleThick
  @available(watchOS 2.0, *)
  case StyleDouble
  @available(watchOS 2.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(watchOS 2.0, *)
  case PatternDot
  @available(watchOS 2.0, *)
  case PatternDash
  @available(watchOS 2.0, *)
  case PatternDashDot
  @available(watchOS 2.0, *)
  case PatternDashDotDot
  @available(watchOS 2.0, *)
  case ByWord
}
@available(watchOS 2.0, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(watchOS 2.0, *)
let NSTextEffectLetterpressStyle: String
extension MutableAttributedString {
  @available(watchOS 2.0, *)
  func fixAttributesIn(range: NSRange)
}
@available(watchOS 2.0, *)
let NSPlainTextDocumentType: String
@available(watchOS 2.0, *)
let NSRTFTextDocumentType: String
@available(watchOS 2.0, *)
let NSRTFDTextDocumentType: String
@available(watchOS 2.0, *)
let NSHTMLTextDocumentType: String
@available(watchOS 2.0, *)
let NSTextLayoutSectionOrientation: String
@available(watchOS 2.0, *)
let NSTextLayoutSectionRange: String
@available(watchOS 2.0, *)
let NSDocumentTypeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(watchOS 2.0, *)
let NSDefaultAttributesDocumentAttribute: String
@available(watchOS 2.0, *)
let NSPaperSizeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSPaperMarginDocumentAttribute: String
@available(watchOS 2.0, *)
let NSViewSizeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSViewZoomDocumentAttribute: String
@available(watchOS 2.0, *)
let NSViewModeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSReadOnlyDocumentAttribute: String
@available(watchOS 2.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(watchOS 2.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(watchOS 2.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(watchOS 2.0, *)
let NSTextLayoutSectionsAttribute: String
extension AttributedString {
  @available(watchOS 2.0, *)
  init(url: URL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(watchOS 2.0, *)
  init(data: Data, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(watchOS 2.0, *)
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> Data
  @available(watchOS 2.0, *)
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> FileWrapper
}
extension MutableAttributedString {
  @available(watchOS 2.0, *)
  func readFrom(url: URL, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(watchOS 2.0, *)
  func readFrom(data: Data, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension AttributedString {
  @available(watchOS 2.0, *)
  func containsAttachmentsIn(range: NSRange) -> Bool
}
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSWritingDirectionFormatType instead")
enum NSTextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
extension AttributedString {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: URL, options: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension MutableAttributedString {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -readFromURL:options:documentAttributes:error: instead")
  func readFromFileURL(url: URL, options opts: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}