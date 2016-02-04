
var kCMFormatDescriptionBridgeError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionBridgeError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSerializedSampleDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_IncompatibleFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_UnsupportedSampleDescriptionFlavor: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSlice: OSStatus { get }
@available(iOS 8.0, *)
let kCMImageDescriptionFlavor_QuickTimeMovie: CFString
@available(iOS 8.0, *)
let kCMImageDescriptionFlavor_ISOFamily: CFString
@available(iOS 8.0, *)
let kCMImageDescriptionFlavor_3GPFamily: CFString
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(allocator: CFAllocator?, _ imageDescriptionData: UnsafePointer<UInt8>, _ imageDescriptionSize: Int, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, _ imageDescriptionBlockBuffer: CMBlockBuffer, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ imageDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianImageDescriptionToHost(imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianImageDescriptionToBig(imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_QuickTimeMovie: CFString
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_QuickTimeMovieV2: CFString
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_ISOFamily: CFString
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_3GPFamily: CFString
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(allocator: CFAllocator?, _ soundDescriptionData: UnsafePointer<UInt8>, _ soundDescriptionSize: Int, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, _ soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, _ audioFormatDescription: CMAudioFormatDescription, _ soundDescriptionFlavor: CFString?, _ soundDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?) -> Bool
@available(iOS 8.0, *)
func CMSwapBigEndianSoundDescriptionToHost(soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianSoundDescriptionToBig(soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(allocator: CFAllocator?, _ textDescriptionData: UnsafePointer<UInt8>, _ textDescriptionSize: Int, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, _ textDescriptionBlockBuffer: CMBlockBuffer, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, _ textFormatDescription: CMTextFormatDescription, _ textDescriptionFlavor: CFString?, _ textDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianTextDescriptionToHost(textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianTextDescriptionToBig(textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(allocator: CFAllocator?, _ closedCaptionDescriptionData: UnsafePointer<UInt8>, _ closedCaptionDescriptionSize: Int, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, _ closedCaptionDescriptionBlockBuffer: CMBlockBuffer, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, _ closedCaptionFormatDescription: CMClosedCaptionFormatDescription, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianClosedCaptionDescriptionToHost(closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianClosedCaptionDescriptionToBig(closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(allocator: CFAllocator?, _ timeCodeDescriptionData: UnsafePointer<UInt8>, _ timeCodeDescriptionSize: Int, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, _ timeCodeDescriptionBlockBuffer: CMBlockBuffer, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, _ timeCodeFormatDescription: CMTimeCodeFormatDescription, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianTimeCodeDescriptionToHost(timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianTimeCodeDescriptionToBig(timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(allocator: CFAllocator?, _ metadataDescriptionData: UnsafePointer<UInt8>, _ metadataDescriptionSize: Int, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, _ metadataDescriptionBlockBuffer: CMBlockBuffer, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, _ metadataFormatDescription: CMMetadataFormatDescription, _ metadataDescriptionFlavor: CFString?, _ metadataDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianMetadataDescriptionToHost(metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianMetadataDescriptionToBig(metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
