
typealias unichar = UInt16
struct NSStringCompareOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitiveSearch: NSStringCompareOptions { get }
  static var LiteralSearch: NSStringCompareOptions { get }
  static var BackwardsSearch: NSStringCompareOptions { get }
  static var AnchoredSearch: NSStringCompareOptions { get }
  static var NumericSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var DiacriticInsensitiveSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var WidthInsensitiveSearch: NSStringCompareOptions { get }
  @available(OSX 10.5, *)
  static var ForcedOrderingSearch: NSStringCompareOptions { get }
  @available(OSX 10.7, *)
  static var RegularExpressionSearch: NSStringCompareOptions { get }
}
var NSASCIIStringEncoding: UInt { get }
var NSNEXTSTEPStringEncoding: UInt { get }
var NSJapaneseEUCStringEncoding: UInt { get }
var NSUTF8StringEncoding: UInt { get }
var NSISOLatin1StringEncoding: UInt { get }
var NSSymbolStringEncoding: UInt { get }
var NSNonLossyASCIIStringEncoding: UInt { get }
var NSShiftJISStringEncoding: UInt { get }
var NSISOLatin2StringEncoding: UInt { get }
var NSUnicodeStringEncoding: UInt { get }
var NSWindowsCP1251StringEncoding: UInt { get }
var NSWindowsCP1252StringEncoding: UInt { get }
var NSWindowsCP1253StringEncoding: UInt { get }
var NSWindowsCP1254StringEncoding: UInt { get }
var NSWindowsCP1250StringEncoding: UInt { get }
var NSISO2022JPStringEncoding: UInt { get }
var NSMacOSRomanStringEncoding: UInt { get }
var NSUTF16StringEncoding: UInt { get }
var NSUTF16BigEndianStringEncoding: UInt { get }
var NSUTF16LittleEndianStringEncoding: UInt { get }
var NSUTF32StringEncoding: UInt { get }
var NSUTF32BigEndianStringEncoding: UInt { get }
var NSUTF32LittleEndianStringEncoding: UInt { get }
struct NSStringEncodingConversionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AllowLossy: NSStringEncodingConversionOptions { get }
  static var ExternalRepresentation: NSStringEncodingConversionOptions { get }
}
class NSString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var length: Int { get }
  func characterAtIndex(index: Int) -> unichar
  init()
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}

extension NSString : StringLiteralConvertible {
  required convenience init(unicodeScalarLiteral value: StaticString)
  required convenience init(extendedGraphemeClusterLiteral value: StaticString)
  required convenience init(stringLiteral value: StaticString)
  typealias StringLiteralType = StaticString
  typealias ExtendedGraphemeClusterLiteralType = StaticString
  typealias UnicodeScalarLiteralType = StaticString
}

extension NSString {
  convenience init(format: NSString, _ args: CVarArgType...)
  convenience init(format: NSString, locale: NSLocale?, _ args: CVarArgType...)
  @warn_unused_result
  class func localizedStringWithFormat(format: NSString, _ args: CVarArgType...) -> Self
  @warn_unused_result
  func stringByAppendingFormat(format: NSString, _ args: CVarArgType...) -> NSString
}

extension NSString {
  @objc(_swiftInitWithString_NSString:) convenience init(string aString: NSString)
}

extension NSString : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension NSString {
  func substringFromIndex(from: Int) -> String
  func substringToIndex(to: Int) -> String
  func substringWithRange(range: NSRange) -> String
  func getCharacters(buffer: UnsafeMutablePointer<unichar>, range: NSRange)
  func compare(string: String) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions, range compareRange: NSRange) -> NSComparisonResult
  func compare(string: String, options mask: NSStringCompareOptions, range compareRange: NSRange, locale: AnyObject?) -> NSComparisonResult
  func caseInsensitiveCompare(string: String) -> NSComparisonResult
  func localizedCompare(string: String) -> NSComparisonResult
  func localizedCaseInsensitiveCompare(string: String) -> NSComparisonResult
  @available(OSX 10.6, *)
  func localizedStandardCompare(string: String) -> NSComparisonResult
  func isEqualToString(aString: String) -> Bool
  func hasPrefix(str: String) -> Bool
  func hasSuffix(str: String) -> Bool
  func commonPrefixWithString(str: String, options mask: NSStringCompareOptions) -> String
  @available(OSX 10.10, *)
  func containsString(str: String) -> Bool
  @available(OSX 10.10, *)
  func localizedCaseInsensitiveContainsString(str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardContainsString(str: String) -> Bool
  @available(OSX 10.11, *)
  func localizedStandardRangeOfString(str: String) -> NSRange
  func rangeOfString(searchString: String) -> NSRange
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  @available(OSX 10.5, *)
  func rangeOfString(searchString: String, options mask: NSStringCompareOptions, range searchRange: NSRange, locale: NSLocale?) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet, options mask: NSStringCompareOptions) -> NSRange
  func rangeOfCharacterFromSet(searchSet: NSCharacterSet, options mask: NSStringCompareOptions, range searchRange: NSRange) -> NSRange
  func rangeOfComposedCharacterSequenceAtIndex(index: Int) -> NSRange
  @available(OSX 10.5, *)
  func rangeOfComposedCharacterSequencesForRange(range: NSRange) -> NSRange
  func stringByAppendingString(aString: String) -> String
  var doubleValue: Double { get }
  var floatValue: Float { get }
  var intValue: Int32 { get }
  @available(OSX 10.5, *)
  var integerValue: Int { get }
  @available(OSX 10.5, *)
  var longLongValue: Int64 { get }
  @available(OSX 10.5, *)
  var boolValue: Bool { get }
  var uppercaseString: String { get }
  var lowercaseString: String { get }
  var capitalizedString: String { get }
  @available(OSX 10.11, *)
  var localizedUppercaseString: String { get }
  @available(OSX 10.11, *)
  var localizedLowercaseString: String { get }
  @available(OSX 10.11, *)
  var localizedCapitalizedString: String { get }
  @available(OSX 10.8, *)
  func uppercaseStringWithLocale(locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func lowercaseStringWithLocale(locale: NSLocale?) -> String
  @available(OSX 10.8, *)
  func capitalizedStringWithLocale(locale: NSLocale?) -> String
  func getLineStart(startPtr: UnsafeMutablePointer<Int>, end lineEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func lineRangeForRange(range: NSRange) -> NSRange
  func getParagraphStart(startPtr: UnsafeMutablePointer<Int>, end parEndPtr: UnsafeMutablePointer<Int>, contentsEnd contentsEndPtr: UnsafeMutablePointer<Int>, forRange range: NSRange)
  func paragraphRangeForRange(range: NSRange) -> NSRange
  @available(OSX 10.6, *)
  func enumerateSubstringsInRange(range: NSRange, options opts: NSStringEnumerationOptions, usingBlock block: (String?, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateLinesUsingBlock(block: (String, UnsafeMutablePointer<ObjCBool>) -> Void)
  var UTF8String: UnsafePointer<Int8> { get }
  var fastestEncoding: UInt { get }
  var smallestEncoding: UInt { get }
  func dataUsingEncoding(encoding: UInt, allowLossyConversion lossy: Bool) -> NSData?
  func dataUsingEncoding(encoding: UInt) -> NSData?
  func canBeConvertedToEncoding(encoding: UInt) -> Bool
  func cStringUsingEncoding(encoding: UInt) -> UnsafePointer<Int8>
  func getCString(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferCount: Int, encoding: UInt) -> Bool
  func getBytes(buffer: UnsafeMutablePointer<Void>, maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: UInt, options: NSStringEncodingConversionOptions, range: NSRange, remainingRange leftover: NSRangePointer) -> Bool
  func maximumLengthOfBytesUsingEncoding(enc: UInt) -> Int
  func lengthOfBytesUsingEncoding(enc: UInt) -> Int
  class func availableStringEncodings() -> UnsafePointer<UInt>
  class func localizedNameOfStringEncoding(encoding: UInt) -> String
  class func defaultCStringEncoding() -> UInt
  var decomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func componentsSeparatedByString(separator: String) -> [String]
  @available(OSX 10.5, *)
  func componentsSeparatedByCharactersInSet(separator: NSCharacterSet) -> [String]
  func stringByTrimmingCharactersInSet(set: NSCharacterSet) -> String
  func stringByPaddingToLength(newLength: Int, withString padString: String, startingAtIndex padIndex: Int) -> String
  @available(OSX 10.5, *)
  func stringByFoldingWithOptions(options: NSStringCompareOptions, locale: NSLocale?) -> String
  @available(OSX 10.5, *)
  func stringByReplacingOccurrencesOfString(target: String, withString replacement: String, options: NSStringCompareOptions, range searchRange: NSRange) -> String
  @available(OSX 10.5, *)
  func stringByReplacingOccurrencesOfString(target: String, withString replacement: String) -> String
  @available(OSX 10.5, *)
  func stringByReplacingCharactersInRange(range: NSRange, withString replacement: String) -> String
  @available(OSX 10.11, *)
  func stringByApplyingTransform(transform: String, reverse: Bool) -> String?
  func writeToURL(url: NSURL, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool, encoding enc: UInt) throws
  var description: String { get }
  var hash: Int { get }
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
struct NSStringEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByLines: NSStringEnumerationOptions { get }
  static var ByParagraphs: NSStringEnumerationOptions { get }
  static var ByComposedCharacterSequences: NSStringEnumerationOptions { get }
  static var ByWords: NSStringEnumerationOptions { get }
  static var BySentences: NSStringEnumerationOptions { get }
  static var Reverse: NSStringEnumerationOptions { get }
  static var SubstringNotRequired: NSStringEnumerationOptions { get }
  static var Localized: NSStringEnumerationOptions { get }
}
@available(OSX 10.11, *)
let NSStringTransformLatinToKatakana: String
@available(OSX 10.11, *)
let NSStringTransformLatinToHiragana: String
@available(OSX 10.11, *)
let NSStringTransformLatinToHangul: String
@available(OSX 10.11, *)
let NSStringTransformLatinToArabic: String
@available(OSX 10.11, *)
let NSStringTransformLatinToHebrew: String
@available(OSX 10.11, *)
let NSStringTransformLatinToThai: String
@available(OSX 10.11, *)
let NSStringTransformLatinToCyrillic: String
@available(OSX 10.11, *)
let NSStringTransformLatinToGreek: String
@available(OSX 10.11, *)
let NSStringTransformToLatin: String
@available(OSX 10.11, *)
let NSStringTransformMandarinToLatin: String
@available(OSX 10.11, *)
let NSStringTransformHiraganaToKatakana: String
@available(OSX 10.11, *)
let NSStringTransformFullwidthToHalfwidth: String
@available(OSX 10.11, *)
let NSStringTransformToXMLHex: String
@available(OSX 10.11, *)
let NSStringTransformToUnicodeName: String
@available(OSX 10.11, *)
let NSStringTransformStripCombiningMarks: String
@available(OSX 10.11, *)
let NSStringTransformStripDiacritics: String
extension NSString {
  @available(OSX 10.10, *)
  class func stringEncodingForData(data: NSData, encodingOptions opts: [String : AnyObject]?, convertedString string: AutoreleasingUnsafeMutablePointer<NSString?>, usedLossyConversion: UnsafeMutablePointer<ObjCBool>) -> UInt
}
@available(OSX 10.10, *)
let NSStringEncodingDetectionSuggestedEncodingsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionDisallowedEncodingsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionUseOnlySuggestedEncodingsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionAllowLossyKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionFromWindowsKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionLossySubstitutionKey: String
@available(OSX 10.10, *)
let NSStringEncodingDetectionLikelyLanguageKey: String
class NSMutableString : NSString {
  func replaceCharactersInRange(range: NSRange, withString aString: String)
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}

extension NSMutableString {
  func appendFormat(format: NSString, _ args: CVarArgType...)
}
extension NSMutableString {
  func insertString(aString: String, atIndex loc: Int)
  func deleteCharactersInRange(range: NSRange)
  func appendString(aString: String)
  func setString(aString: String)
  func replaceOccurrencesOfString(target: String, withString replacement: String, options: NSStringCompareOptions, range searchRange: NSRange) -> Int
  @available(OSX 10.11, *)
  func applyTransform(transform: String, reverse: Bool, range: NSRange, updatedRange resultingRange: NSRangePointer) -> Bool
  init(capacity: Int)
}
let NSCharacterConversionException: String
let NSParseErrorException: String
extension NSString {
  func propertyList() -> AnyObject
  func propertyListFromStringsFileFormat() -> [NSObject : AnyObject]?
}
extension NSString {
  func getCharacters(buffer: UnsafeMutablePointer<unichar>)
}
var NSProprietaryStringEncoding: UInt { get }
class NSSimpleCString : NSString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
class NSConstantString : NSSimpleCString {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(charactersNoCopy characters: UnsafeMutablePointer<unichar>, length: Int, freeWhenDone freeBuffer: Bool)
  convenience init(characters: UnsafePointer<unichar>, length: Int)
  convenience init?(UTF8String nullTerminatedCString: UnsafePointer<Int8>)
  convenience init(string aString: String)
  convenience init(format: String, arguments argList: CVaListPointer)
  convenience init(format: String, locale: AnyObject?, arguments argList: CVaListPointer)
  convenience init?(data: NSData, encoding: UInt)
  convenience init?(bytes: UnsafePointer<Void>, length len: Int, encoding: UInt)
  convenience init?(bytesNoCopy bytes: UnsafeMutablePointer<Void>, length len: Int, encoding: UInt, freeWhenDone freeBuffer: Bool)
  convenience init?(CString nullTerminatedCString: UnsafePointer<Int8>, encoding: UInt)
  convenience init(contentsOfURL url: NSURL, encoding enc: UInt) throws
  convenience init(contentsOfFile path: String, encoding enc: UInt) throws
  convenience init(contentsOfURL url: NSURL, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
  convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>) throws
}
