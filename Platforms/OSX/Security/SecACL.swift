
struct SecKeychainPromptSelector : OptionSetType {
  init(rawValue: uint16)
  let rawValue: uint16
  static var RequirePassphase: SecKeychainPromptSelector { get }
  static var Unsigned: SecKeychainPromptSelector { get }
  static var UnsignedAct: SecKeychainPromptSelector { get }
  static var Invalid: SecKeychainPromptSelector { get }
  static var InvalidAct: SecKeychainPromptSelector { get }
}
@available(OSX 10.3, *)
func SecACLGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func SecACLCreateWithSimpleContents(access: SecAccess, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector, _ newAcl: UnsafeMutablePointer<SecACL?>) -> OSStatus
@available(OSX 10.3, *)
func SecACLRemove(aclRef: SecACL) -> OSStatus
@available(OSX 10.7, *)
func SecACLCopyContents(acl: SecACL, _ applicationList: UnsafeMutablePointer<CFArray?>, _ description: UnsafeMutablePointer<CFString?>, _ promptSelector: UnsafeMutablePointer<SecKeychainPromptSelector>) -> OSStatus
@available(OSX 10.7, *)
func SecACLSetContents(acl: SecACL, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector) -> OSStatus
@available(OSX 10.7, *)
func SecACLCopyAuthorizations(acl: SecACL) -> CFArray
@available(OSX 10.7, *)
func SecACLUpdateAuthorizations(acl: SecACL, _ authorizations: CFArray) -> OSStatus