
@available(iOS 3.2, *)
class UITextChecker : Object {
  func rangeOfMisspelledWordIn(stringToCheck: String, range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language: String) -> NSRange
  func guessesForWordRange(range: NSRange, in string: String, language: String) -> [AnyObject]?
  func completionsForPartialWordRange(range: NSRange, in string: String?, language: String) -> [AnyObject]?
  func ignoreWord(wordToIgnore: String)
  func ignoredWords() -> [AnyObject]?
  func setIgnoredWords(words: [AnyObject]?)
  class func learnWord(word: String)
  class func hasLearnedWord(word: String) -> Bool
  class func unlearnWord(word: String)
  class func availableLanguages() -> [AnyObject]
  init()
}