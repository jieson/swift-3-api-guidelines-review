
class NSURL : NSObject, NSSecureCoding, NSCopying {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, relativeToURL baseURL: NSURL?)
  @available(iOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(iOS 9.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  @available(iOS 9.0, *)
  class func fileURLWithPath(path: String, relativeToURL baseURL: NSURL?) -> NSURL
  @available(iOS 2.0, *)
  class func fileURLWithPath(path: String, isDirectory isDir: Bool) -> NSURL
  class func fileURLWithPath(path: String) -> NSURL
  @available(iOS 7.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?)
  @available(iOS 7.0, *)
  class func fileURLWithFileSystemRepresentation(path: UnsafePointer<Int8>, isDirectory isDir: Bool, relativeToURL baseURL: NSURL?) -> NSURL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  init(dataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  init(absoluteURLWithDataRepresentation data: NSData, relativeToURL baseURL: NSURL?)
  @available(iOS 9.0, *)
  class func absoluteURLWithDataRepresentation(data: NSData, relativeToURL baseURL: NSURL?) -> NSURL
  @available(iOS 9.0, *)
  @NSCopying var dataRepresentation: NSData { get }
  var absoluteString: String { get }
  var relativeString: String? { get }
  @NSCopying var baseURL: NSURL? { get }
  @NSCopying var absoluteURL: NSURL { get }
  var scheme: String { get }
  var resourceSpecifier: String { get }
  var host: String? { get }
  @NSCopying var port: NSNumber? { get }
  var user: String? { get }
  var password: String? { get }
  var path: String? { get }
  var fragment: String? { get }
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(iOS 9.0, *)
  var hasDirectoryPath: Bool { get }
  @available(iOS 7.0, *)
  func getFileSystemRepresentation(buffer: UnsafeMutablePointer<Int8>, maxLength maxBufferLength: Int) -> Bool
  @available(iOS 7.0, *)
  var fileSystemRepresentation: UnsafePointer<Int8> { get }
  var fileURL: Bool { get }
  @NSCopying var standardizedURL: NSURL? { get }
  @available(iOS 4.0, *)
  func checkResourceIsReachableAndReturnError(error: NSErrorPointer) -> Bool
  @available(iOS 4.0, *)
  func isFileReferenceURL() -> Bool
  @available(iOS 4.0, *)
  func fileReferenceURL() -> NSURL?
  @available(iOS 4.0, *)
  @NSCopying var filePathURL: NSURL? { get }
  @available(iOS 4.0, *)
  func getResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(iOS 4.0, *)
  func resourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(iOS 4.0, *)
  func setResourceValue(value: AnyObject?, forKey key: String) throws
  @available(iOS 4.0, *)
  func setResourceValues(keyedValues: [String : AnyObject]) throws
  @available(iOS 7.0, *)
  func removeCachedResourceValueForKey(key: String)
  @available(iOS 7.0, *)
  func removeAllCachedResourceValues()
  @available(iOS 7.0, *)
  func setTemporaryResourceValue(value: AnyObject?, forKey key: String)
  @available(iOS 4.0, *)
  func bookmarkDataWithOptions(options: NSURLBookmarkCreationOptions, includingResourceValuesForKeys keys: [String]?, relativeToURL relativeURL: NSURL?) throws -> NSData
  @available(iOS 4.0, *)
  convenience init(byResolvingBookmarkData bookmarkData: NSData, options: NSURLBookmarkResolutionOptions, relativeToURL relativeURL: NSURL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>) throws
  @available(iOS 4.0, *)
  class func resourceValuesForKeys(keys: [String], fromBookmarkData bookmarkData: NSData) -> [String : AnyObject]?
  @available(iOS 4.0, *)
  class func writeBookmarkData(bookmarkData: NSData, toURL bookmarkFileURL: NSURL, options: NSURLBookmarkFileCreationOptions) throws
  @available(iOS 4.0, *)
  class func bookmarkDataWithContentsOfURL(bookmarkFileURL: NSURL) throws -> NSData
  @available(iOS 8.0, *)
  convenience init(byResolvingAliasFileAtURL url: NSURL, options: NSURLBookmarkResolutionOptions) throws
  @available(iOS 8.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(iOS 8.0, *)
  func stopAccessingSecurityScopedResource()
  convenience init()
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}

extension NSURL : _FileReferenceLiteralConvertible {
  convenience init(failableFileReferenceLiteral path: String)
  required convenience init(fileReferenceLiteral path: String)
}

extension NSURL : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
let NSURLFileScheme: String
@available(iOS 5.0, *)
let NSURLKeysOfUnsetValuesKey: String
@available(iOS 4.0, *)
let NSURLNameKey: String
@available(iOS 4.0, *)
let NSURLLocalizedNameKey: String
@available(iOS 4.0, *)
let NSURLIsRegularFileKey: String
@available(iOS 4.0, *)
let NSURLIsDirectoryKey: String
@available(iOS 4.0, *)
let NSURLIsSymbolicLinkKey: String
@available(iOS 4.0, *)
let NSURLIsVolumeKey: String
@available(iOS 4.0, *)
let NSURLIsPackageKey: String
@available(iOS 9.0, *)
let NSURLIsApplicationKey: String
@available(iOS 4.0, *)
let NSURLIsSystemImmutableKey: String
@available(iOS 4.0, *)
let NSURLIsUserImmutableKey: String
@available(iOS 4.0, *)
let NSURLIsHiddenKey: String
@available(iOS 4.0, *)
let NSURLHasHiddenExtensionKey: String
@available(iOS 4.0, *)
let NSURLCreationDateKey: String
@available(iOS 4.0, *)
let NSURLContentAccessDateKey: String
@available(iOS 4.0, *)
let NSURLContentModificationDateKey: String
@available(iOS 4.0, *)
let NSURLAttributeModificationDateKey: String
@available(iOS 4.0, *)
let NSURLLinkCountKey: String
@available(iOS 4.0, *)
let NSURLParentDirectoryURLKey: String
@available(iOS 4.0, *)
let NSURLVolumeURLKey: String
@available(iOS 4.0, *)
let NSURLTypeIdentifierKey: String
@available(iOS 4.0, *)
let NSURLLocalizedTypeDescriptionKey: String
@available(iOS 4.0, *)
let NSURLLabelNumberKey: String
@available(iOS 4.0, *)
let NSURLLabelColorKey: String
@available(iOS 4.0, *)
let NSURLLocalizedLabelKey: String
@available(iOS 4.0, *)
let NSURLEffectiveIconKey: String
@available(iOS 4.0, *)
let NSURLCustomIconKey: String
@available(iOS 5.0, *)
let NSURLFileResourceIdentifierKey: String
@available(iOS 5.0, *)
let NSURLVolumeIdentifierKey: String
@available(iOS 5.0, *)
let NSURLPreferredIOBlockSizeKey: String
@available(iOS 5.0, *)
let NSURLIsReadableKey: String
@available(iOS 5.0, *)
let NSURLIsWritableKey: String
@available(iOS 5.0, *)
let NSURLIsExecutableKey: String
@available(iOS 5.0, *)
let NSURLFileSecurityKey: String
@available(iOS 5.1, *)
let NSURLIsExcludedFromBackupKey: String
@available(iOS 6.0, *)
let NSURLPathKey: String
@available(iOS 5.0, *)
let NSURLIsMountTriggerKey: String
@available(iOS 8.0, *)
let NSURLGenerationIdentifierKey: String
@available(iOS 8.0, *)
let NSURLDocumentIdentifierKey: String
@available(iOS 8.0, *)
let NSURLAddedToDirectoryDateKey: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeKey: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeNamedPipe: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeCharacterSpecial: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeDirectory: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeBlockSpecial: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeRegular: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeSymbolicLink: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeSocket: String
@available(iOS 5.0, *)
let NSURLFileResourceTypeUnknown: String
@available(iOS 8.0, *)
let NSURLThumbnailDictionaryKey: String
@available(iOS 8.0, *)
let NSThumbnail1024x1024SizeKey: String
@available(iOS 4.0, *)
let NSURLFileSizeKey: String
@available(iOS 4.0, *)
let NSURLFileAllocatedSizeKey: String
@available(iOS 5.0, *)
let NSURLTotalFileSizeKey: String
@available(iOS 5.0, *)
let NSURLTotalFileAllocatedSizeKey: String
@available(iOS 4.0, *)
let NSURLIsAliasFileKey: String
@available(iOS 9.0, *)
let NSURLFileProtectionKey: String
@available(iOS 9.0, *)
let NSURLFileProtectionNone: String
@available(iOS 9.0, *)
let NSURLFileProtectionComplete: String
@available(iOS 9.0, *)
let NSURLFileProtectionCompleteUnlessOpen: String
@available(iOS 9.0, *)
let NSURLFileProtectionCompleteUntilFirstUserAuthentication: String
@available(iOS 4.0, *)
let NSURLVolumeLocalizedFormatDescriptionKey: String
@available(iOS 4.0, *)
let NSURLVolumeTotalCapacityKey: String
@available(iOS 4.0, *)
let NSURLVolumeAvailableCapacityKey: String
@available(iOS 4.0, *)
let NSURLVolumeResourceCountKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsPersistentIDsKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsSymbolicLinksKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsHardLinksKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsJournalingKey: String
@available(iOS 4.0, *)
let NSURLVolumeIsJournalingKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsSparseFilesKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsZeroRunsKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsCaseSensitiveNamesKey: String
@available(iOS 4.0, *)
let NSURLVolumeSupportsCasePreservedNamesKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsRootDirectoryDatesKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsVolumeSizesKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsRenamingKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsAdvisoryFileLockingKey: String
@available(iOS 5.0, *)
let NSURLVolumeSupportsExtendedSecurityKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsBrowsableKey: String
@available(iOS 5.0, *)
let NSURLVolumeMaximumFileSizeKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsEjectableKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsRemovableKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsInternalKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsAutomountedKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsLocalKey: String
@available(iOS 5.0, *)
let NSURLVolumeIsReadOnlyKey: String
@available(iOS 5.0, *)
let NSURLVolumeCreationDateKey: String
@available(iOS 5.0, *)
let NSURLVolumeURLForRemountingKey: String
@available(iOS 5.0, *)
let NSURLVolumeUUIDStringKey: String
@available(iOS 5.0, *)
let NSURLVolumeNameKey: String
@available(iOS 5.0, *)
let NSURLVolumeLocalizedNameKey: String
@available(iOS 5.0, *)
let NSURLIsUbiquitousItemKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemHasUnresolvedConflictsKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemIsDownloadingKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemIsUploadedKey: String
@available(iOS 5.0, *)
let NSURLUbiquitousItemIsUploadingKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingErrorKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemUploadingErrorKey: String
@available(iOS 8.0, *)
let NSURLUbiquitousItemDownloadRequestedKey: String
@available(iOS 8.0, *)
let NSURLUbiquitousItemContainerDisplayNameKey: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusNotDownloaded: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusDownloaded: String
@available(iOS 7.0, *)
let NSURLUbiquitousItemDownloadingStatusCurrent: String
@available(iOS 4.0, *)
struct NSURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MinimalBookmark: NSURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: NSURLBookmarkCreationOptions { get }
}
@available(iOS 4.0, *)
struct NSURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutUI: NSURLBookmarkResolutionOptions { get }
  static var WithoutMounting: NSURLBookmarkResolutionOptions { get }
}
typealias NSURLBookmarkFileCreationOptions = Int
extension NSURL {
  @available(iOS 8.0, *)
  func getPromisedItemResourceValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  @available(iOS 8.0, *)
  func promisedItemResourceValuesForKeys(keys: [String]) throws -> [String : AnyObject]
  @available(iOS 8.0, *)
  func checkPromisedItemIsReachableAndReturnError(error: NSErrorPointer) -> Bool
}
@available(iOS 8.0, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
  convenience init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 7.0, *)
class NSURLComponents : NSObject, NSCopying {
  init()
  init?(URL url: NSURL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  @NSCopying var URL: NSURL? { get }
  func URLRelativeToURL(baseURL: NSURL?) -> NSURL?
  @available(iOS 8.0, *)
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: NSNumber?
  var path: String?
  var query: String?
  var fragment: String?
  var percentEncodedUser: String?
  var percentEncodedPassword: String?
  var percentEncodedHost: String?
  var percentEncodedPath: String?
  var percentEncodedQuery: String?
  var percentEncodedFragment: String?
  @available(iOS 9.0, *)
  var rangeOfScheme: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfUser: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPassword: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfHost: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPort: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPath: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfQuery: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfFragment: NSRange { get }
  @available(iOS 8.0, *)
  var queryItems: [NSURLQueryItem]?
  @available(iOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSCharacterSet {
  @available(iOS 7.0, *)
  class func URLUserAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLPasswordAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLHostAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLPathAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLQueryAllowedCharacterSet() -> NSCharacterSet
  @available(iOS 7.0, *)
  class func URLFragmentAllowedCharacterSet() -> NSCharacterSet
}
extension NSString {
  @available(iOS 7.0, *)
  func stringByAddingPercentEncodingWithAllowedCharacters(allowedCharacters: NSCharacterSet) -> String?
  @available(iOS 7.0, *)
  var stringByRemovingPercentEncoding: String? { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func stringByAddingPercentEscapesUsingEncoding(enc: UInt) -> String?
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func stringByReplacingPercentEscapesUsingEncoding(enc: UInt) -> String?
}
extension NSURL {
  @available(iOS 4.0, *)
  class func fileURLWithPathComponents(components: [String]) -> NSURL?
  @available(iOS 4.0, *)
  var pathComponents: [String]? { get }
  @available(iOS 4.0, *)
  var lastPathComponent: String? { get }
  @available(iOS 4.0, *)
  var pathExtension: String? { get }
  @available(iOS 4.0, *)
  func URLByAppendingPathComponent(pathComponent: String) -> NSURL
  @available(iOS 5.0, *)
  func URLByAppendingPathComponent(pathComponent: String, isDirectory: Bool) -> NSURL
  @available(iOS 4.0, *)
  @NSCopying var URLByDeletingLastPathComponent: NSURL? { get }
  @available(iOS 4.0, *)
  func URLByAppendingPathExtension(pathExtension: String) -> NSURL
  @available(iOS 4.0, *)
  @NSCopying var URLByDeletingPathExtension: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var URLByStandardizingPath: NSURL? { get }
  @available(iOS 4.0, *)
  @NSCopying var URLByResolvingSymlinksInPath: NSURL? { get }
}
@available(iOS 5.0, *)
class NSFileSecurity : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 5.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
