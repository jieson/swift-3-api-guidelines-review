
typealias CMAttachmentBearer = CFTypeRef
@available(*, deprecated, renamed="CMAttachmentBearer")
typealias CMAttachmentBearerRef = CMAttachmentBearer
typealias CMAttachmentMode = UInt32
var kCMAttachmentMode_ShouldNotPropagate: CMAttachmentMode { get }
var kCMAttachmentMode_ShouldPropagate: CMAttachmentMode { get }
@available(tvOS 4.0, *)
func CMSetAttachment(target: CMAttachmentBearer, _ key: CFString, _ value: CFTypeRef?, _ attachmentMode: CMAttachmentMode)
@available(tvOS 4.0, *)
func CMGetAttachment(target: CMAttachmentBearer, _ key: CFString, _ attachmentModeOut: UnsafeMutablePointer<CMAttachmentMode>) -> CFTypeRef?
@available(tvOS 4.0, *)
func CMRemoveAttachment(target: CMAttachmentBearer, _ key: CFString)
@available(tvOS 4.0, *)
func CMRemoveAllAttachments(target: CMAttachmentBearer)
@available(tvOS 4.0, *)
func CMCopyDictionaryOfAttachments(allocator: CFAllocator?, _ target: CMAttachmentBearer, _ attachmentMode: CMAttachmentMode) -> CFDictionary?
@available(tvOS 4.0, *)
func CMSetAttachments(target: CMAttachmentBearer, _ theAttachments: CFDictionary, _ attachmentMode: CMAttachmentMode)
@available(tvOS 4.0, *)
func CMPropagateAttachments(source: CMAttachmentBearer, _ destination: CMAttachmentBearer)
