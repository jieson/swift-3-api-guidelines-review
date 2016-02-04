
@available(tvOS 2.0, *)
func CGPDFContextCreate(consumer: CGDataConsumer?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(tvOS 2.0, *)
func CGPDFContextCreateWithURL(url: CFURL?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(tvOS 2.0, *)
func CGPDFContextClose(context: CGContext?)
@available(tvOS 2.0, *)
func CGPDFContextBeginPage(context: CGContext?, _ pageInfo: CFDictionary?)
@available(tvOS 2.0, *)
func CGPDFContextEndPage(context: CGContext?)
@available(tvOS 4.0, *)
func CGPDFContextAddDocumentMetadata(context: CGContext?, _ metadata: CFData?)
@available(tvOS 2.0, *)
func CGPDFContextSetURLForRect(context: CGContext?, _ url: CFURL, _ rect: CGRect)
@available(tvOS 2.0, *)
func CGPDFContextAddDestinationAtPoint(context: CGContext?, _ name: CFString, _ point: CGPoint)
@available(tvOS 2.0, *)
func CGPDFContextSetDestinationForRect(context: CGContext?, _ name: CFString, _ rect: CGRect)
@available(tvOS 2.0, *)
let kCGPDFContextMediaBox: CFString
@available(tvOS 2.0, *)
let kCGPDFContextCropBox: CFString
@available(tvOS 2.0, *)
let kCGPDFContextBleedBox: CFString
@available(tvOS 2.0, *)
let kCGPDFContextTrimBox: CFString
@available(tvOS 2.0, *)
let kCGPDFContextArtBox: CFString
@available(tvOS 2.0, *)
let kCGPDFContextTitle: CFString
@available(tvOS 2.0, *)
let kCGPDFContextAuthor: CFString
@available(tvOS 2.0, *)
let kCGPDFContextSubject: CFString
@available(tvOS 2.0, *)
let kCGPDFContextKeywords: CFString
@available(tvOS 2.0, *)
let kCGPDFContextCreator: CFString
@available(tvOS 2.0, *)
let kCGPDFContextOwnerPassword: CFString
@available(tvOS 2.0, *)
let kCGPDFContextUserPassword: CFString
@available(tvOS 2.0, *)
let kCGPDFContextEncryptionKeyLength: CFString
@available(tvOS 2.0, *)
let kCGPDFContextAllowsPrinting: CFString
@available(tvOS 2.0, *)
let kCGPDFContextAllowsCopying: CFString
