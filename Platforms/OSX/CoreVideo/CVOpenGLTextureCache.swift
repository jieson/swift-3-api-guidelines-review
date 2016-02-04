
class CVOpenGLTextureCache {
}
@available(*, deprecated, renamed="CVOpenGLTextureCache")
typealias CVOpenGLTextureCacheRef = CVOpenGLTextureCache
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeKey: CFString
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeAutomatic: CFString
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeHighestQuality: CFString
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeBestPerformance: CFString
@available(OSX 10.4, *)
func CVOpenGLTextureCacheGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CVOpenGLTextureCacheCreate(allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ cglContext: CGLContextObj, _ cglPixelFormat: CGLPixelFormatObj, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<CVOpenGLTextureCache?>) -> CVReturn
@available(OSX 10.4, *)
func CVOpenGLTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVOpenGLTextureCache, _ sourceImage: CVImageBuffer, _ attributes: CFDictionary?, _ textureOut: UnsafeMutablePointer<CVOpenGLTexture?>) -> CVReturn
@available(OSX 10.4, *)
func CVOpenGLTextureCacheFlush(textureCache: CVOpenGLTextureCache, _ options: CVOptionFlags)
