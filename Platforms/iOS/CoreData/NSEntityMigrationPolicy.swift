
@available(iOS 3.0, *)
let NSMigrationManagerKey: String
@available(iOS 3.0, *)
let NSMigrationSourceObjectKey: String
@available(iOS 3.0, *)
let NSMigrationDestinationObjectKey: String
@available(iOS 3.0, *)
let NSMigrationEntityMappingKey: String
@available(iOS 3.0, *)
let NSMigrationPropertyMappingKey: String
@available(iOS 3.0, *)
let NSMigrationEntityPolicyKey: String
@available(iOS 3.0, *)
class NSEntityMigrationPolicy : Object {
  func begin(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createDestinationInstances(forSourceInstance sInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endInstanceCreation(for mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func createRelationships(forDestinationInstance dInstance: NSManagedObject, entityMapping mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func endRelationshipCreation(for mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func performCustomValidation(for mapping: NSEntityMapping, manager: NSMigrationManager) throws
  func end(mapping: NSEntityMapping, manager: NSMigrationManager) throws
  init()
}
