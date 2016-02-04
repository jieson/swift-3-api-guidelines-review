
@available(iOS 3.0, *)
let NSSQLiteStoreType: String
@available(iOS 3.0, *)
let NSBinaryStoreType: String
@available(iOS 3.0, *)
let NSInMemoryStoreType: String
@available(iOS 7.0, *)
enum NSPersistentStoreUbiquitousTransitionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AccountAdded
  case AccountRemoved
  case ContentRemoved
  case InitialImportCompleted
}
@available(iOS 3.0, *)
let NSStoreTypeKey: String
@available(iOS 3.0, *)
let NSStoreUUIDKey: String
@available(iOS 7.0, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(iOS 3.0, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(iOS 3.0, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(iOS 3.0, *)
let NSAddedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSRemovedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(iOS 3.0, *)
let NSPersistentStoreTimeoutOption: String
@available(iOS 3.0, *)
let NSSQLitePragmasOption: String
@available(iOS 3.0, *)
let NSSQLiteAnalyzeOption: String
@available(iOS 3.0, *)
let NSSQLiteManualVacuumOption: String
@available(iOS 3.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(iOS 3.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(iOS 3.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(iOS 3.0, *)
let NSStoreModelVersionHashesKey: String
@available(iOS 3.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(iOS 3.0, *)
let NSPersistentStoreOSCompatibility: String
@available(iOS 5.0, *)
let NSPersistentStoreUbiquitousContentNameKey: String
@available(iOS 5.0, *)
let NSPersistentStoreUbiquitousContentURLKey: String
@available(iOS 5.0, *)
let NSPersistentStoreDidImportUbiquitousContentChangesNotification: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousTransitionTypeKey: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousPeerTokenOption: String
@available(iOS 7.0, *)
let NSPersistentStoreRemoveUbiquitousMetadataOption: String
@available(iOS 7.0, *)
let NSPersistentStoreUbiquitousContainerIdentifierKey: String
@available(iOS 7.0, *)
let NSPersistentStoreRebuildFromUbiquitousContentOption: String
@available(iOS 6.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(iOS 5.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(iOS 3.0, *)
class NSPersistentStoreCoordinator : NSObject, NSLocking {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(iOS 8.0, *)
  var name: String?
  func persistentStoreForURL(URL: NSURL) -> NSPersistentStore?
  func URLForPersistentStore(store: NSPersistentStore) -> NSURL
  @available(iOS 3.0, *)
  func setURL(url: NSURL, forPersistentStore store: NSPersistentStore) -> Bool
  func addPersistentStoreWithType(storeType: String, configuration: String?, URL storeURL: NSURL?, options: [NSObject : AnyObject]?) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, forPersistentStore store: NSPersistentStore)
  func metadataForPersistentStore(store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectIDForURIRepresentation(url: NSURL) -> NSManagedObjectID?
  @available(iOS 5.0, *)
  func executeRequest(request: NSPersistentStoreRequest, withContext context: NSManagedObjectContext) throws -> AnyObject
  @available(iOS 3.0, *)
  class func registeredStoreTypes() -> [String : NSValue]
  @available(iOS 3.0, *)
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  @available(iOS 7.0, *)
  class func metadataForPersistentStoreOfType(storeType: String, URL url: NSURL, options: [NSObject : AnyObject]?) throws -> [String : AnyObject]
  @available(iOS 7.0, *)
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, URL url: NSURL, options: [NSObject : AnyObject]?) throws
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStoreOfType(storeType: String?, URL url: NSURL) throws -> [String : AnyObject]
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, URL url: NSURL) throws
  @available(iOS 7.0, *)
  class func removeUbiquitousContentAndPersistentStoreAtURL(storeURL: NSURL, options: [NSObject : AnyObject]?) throws
  func migratePersistentStore(store: NSPersistentStore, toURL URL: NSURL, options: [NSObject : AnyObject]?, withType storeType: String) throws -> NSPersistentStore
  @available(iOS 9.0, *)
  func destroyPersistentStoreAtURL(url: NSURL, withType storeType: String, options: [NSObject : AnyObject]?) throws
  @available(iOS 9.0, *)
  func replacePersistentStoreAtURL(destinationURL: NSURL, destinationOptions: [NSObject : AnyObject]?, withPersistentStoreFromURL sourceURL: NSURL, sourceOptions: [NSObject : AnyObject]?, storeType: String) throws
  @available(iOS 8.0, *)
  func performBlock(block: () -> Void)
  @available(iOS 8.0, *)
  func performBlockAndWait(block: () -> Void)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlockAndWait: instead")
  func lock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlockAndWait: instead")
  func unlock()
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use -performBlock: instead")
  func tryLock() -> Bool
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
