
@available(iOS 3.0, *)
class NSFetchedPropertyDescription : NSPropertyDescription {
  var fetchRequest: NSFetchRequest?
  init()
  init?(coder aDecoder: NSCoder)
}
