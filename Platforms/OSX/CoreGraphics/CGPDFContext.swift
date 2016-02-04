
@available(OSX 10.0, *)
func CGPDFContextCreate(consumer: CGDataConsumer?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(OSX 10.0, *)
func CGPDFContextCreateWithURL(url: CFURL?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(OSX 10.5, *)
func CGPDFContextClose(context: CGContext?)
@available(OSX 10.4, *)
func CGPDFContextBeginPage(context: CGContext?, _ pageInfo: CFDictionary?)
@available(OSX 10.4, *)
func CGPDFContextEndPage(context: CGContext?)
@available(OSX 10.7, *)
func CGPDFContextAddDocumentMetadata(context: CGContext?, _ metadata: CFData?)
@available(OSX 10.4, *)
func CGPDFContextSetURLForRect(context: CGContext?, _ url: CFURL, _ rect: CGRect)
@available(OSX 10.4, *)
func CGPDFContextAddDestinationAtPoint(context: CGContext?, _ name: CFString, _ point: CGPoint)
@available(OSX 10.4, *)
func CGPDFContextSetDestinationForRect(context: CGContext?, _ name: CFString, _ rect: CGRect)
@available(OSX 10.4, *)
let kCGPDFContextMediaBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextCropBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextBleedBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextTrimBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextArtBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextTitle: CFString
@available(OSX 10.4, *)
let kCGPDFContextAuthor: CFString
@available(OSX 10.5, *)
let kCGPDFContextSubject: CFString
@available(OSX 10.5, *)
let kCGPDFContextKeywords: CFString
@available(OSX 10.4, *)
let kCGPDFContextCreator: CFString
@available(OSX 10.4, *)
let kCGPDFContextOwnerPassword: CFString
@available(OSX 10.4, *)
let kCGPDFContextUserPassword: CFString
@available(OSX 10.5, *)
let kCGPDFContextEncryptionKeyLength: CFString
@available(OSX 10.4, *)
let kCGPDFContextAllowsPrinting: CFString
@available(OSX 10.4, *)
let kCGPDFContextAllowsCopying: CFString
@available(OSX 10.4, *)
let kCGPDFContextOutputIntent: CFString
@available(OSX 10.4, *)
let kCGPDFXOutputIntentSubtype: CFString
@available(OSX 10.4, *)
let kCGPDFXOutputConditionIdentifier: CFString
@available(OSX 10.4, *)
let kCGPDFXOutputCondition: CFString
@available(OSX 10.4, *)
let kCGPDFXRegistryName: CFString
@available(OSX 10.4, *)
let kCGPDFXInfo: CFString
@available(OSX 10.4, *)
let kCGPDFXDestinationOutputProfile: CFString
@available(OSX 10.4, *)
let kCGPDFContextOutputIntents: CFString
