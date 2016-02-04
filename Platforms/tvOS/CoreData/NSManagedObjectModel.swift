
@available(tvOS 3.0, *)
class NSManagedObjectModel : Object, Coding, Copying, FastEnumeration {
  class func mergedModelFrom(bundles: [Bundle]?) -> NSManagedObjectModel?
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel]?)
  init()
  convenience init?(contentsOf url: URL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entitiesForConfiguration(configuration: String?) -> [NSEntityDescription]?
  func setEntities(entities: [NSEntityDescription], forConfiguration configuration: String)
  func setFetchRequestTemplate(fetchRequestTemplate: NSFetchRequest?, forName name: String)
  func fetchRequestTemplateForName(name: String) -> NSFetchRequest?
  func fetchRequestFromTemplateWithName(name: String, substitutionVariables variables: [String : AnyObject]) -> NSFetchRequest?
  var localizationDictionary: [String : String]?
  @available(tvOS 3.0, *)
  class func mergedModelFrom(bundles: [Bundle]?, forStoreMetadata metadata: [String : AnyObject]) -> NSManagedObjectModel?
  @available(tvOS 3.0, *)
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel], forStoreMetadata metadata: [String : AnyObject])
  @available(tvOS 3.0, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest] { get }
  @available(tvOS 3.0, *)
  var versionIdentifiers: Set<Object>
  @available(tvOS 3.0, *)
  func isConfiguration(configuration: String?, compatibleWithStoreMetadata metadata: [String : AnyObject]) -> Bool
  @available(tvOS 3.0, *)
  var entityVersionHashesByName: [String : Data] { get }
  @available(tvOS 3.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 3.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 3.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct __managedObjectModelFlags {
  var _isInUse: UInt32
  var _isImmutable: UInt32
  var _isOptimizedForEncoding: UInt32
  var _hasEntityWithConstraints: UInt32
  var _reservedEntityDescription: UInt32
  init()
  init(_isInUse: UInt32, _isImmutable: UInt32, _isOptimizedForEncoding: UInt32, _hasEntityWithConstraints: UInt32, _reservedEntityDescription: UInt32)
}