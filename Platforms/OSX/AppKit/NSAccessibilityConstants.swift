
let NSAccessibilityErrorCodeExceptionInfo: String
let NSAccessibilityRoleAttribute: String
let NSAccessibilityRoleDescriptionAttribute: String
let NSAccessibilitySubroleAttribute: String
let NSAccessibilityHelpAttribute: String
let NSAccessibilityValueAttribute: String
let NSAccessibilityMinValueAttribute: String
let NSAccessibilityMaxValueAttribute: String
let NSAccessibilityEnabledAttribute: String
let NSAccessibilityFocusedAttribute: String
let NSAccessibilityParentAttribute: String
let NSAccessibilityChildrenAttribute: String
let NSAccessibilityWindowAttribute: String
let NSAccessibilityTopLevelUIElementAttribute: String
let NSAccessibilitySelectedChildrenAttribute: String
let NSAccessibilityVisibleChildrenAttribute: String
let NSAccessibilityPositionAttribute: String
let NSAccessibilitySizeAttribute: String
let NSAccessibilityContentsAttribute: String
let NSAccessibilityTitleAttribute: String
let NSAccessibilityDescriptionAttribute: String
let NSAccessibilityShownMenuAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityValueDescriptionAttribute: String
@available(OSX 10.10, *)
let NSAccessibilitySharedFocusElementsAttribute: String
let NSAccessibilityPreviousContentsAttribute: String
let NSAccessibilityNextContentsAttribute: String
let NSAccessibilityHeaderAttribute: String
let NSAccessibilityEditedAttribute: String
let NSAccessibilityTabsAttribute: String
let NSAccessibilityHorizontalScrollBarAttribute: String
let NSAccessibilityVerticalScrollBarAttribute: String
let NSAccessibilityOverflowButtonAttribute: String
let NSAccessibilityIncrementButtonAttribute: String
let NSAccessibilityDecrementButtonAttribute: String
let NSAccessibilityFilenameAttribute: String
let NSAccessibilityExpandedAttribute: String
let NSAccessibilitySelectedAttribute: String
let NSAccessibilitySplittersAttribute: String
let NSAccessibilityDocumentAttribute: String
let NSAccessibilityActivationPointAttribute: String
let NSAccessibilityURLAttribute: String
let NSAccessibilityIndexAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityRowCountAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityColumnCountAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityOrderedByRowAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityWarningValueAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityCriticalValueAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityPlaceholderValueAttribute: String
@available(OSX 10.9, *)
let NSAccessibilityContainsProtectedContentAttribute: String
@available(OSX 10.10, *)
let NSAccessibilityAlternateUIVisibleAttribute: String
let NSAccessibilityTitleUIElementAttribute: String
let NSAccessibilityServesAsTitleForUIElementsAttribute: String
let NSAccessibilityLinkedUIElementsAttribute: String
let NSAccessibilitySelectedTextAttribute: String
let NSAccessibilitySelectedTextRangeAttribute: String
let NSAccessibilityNumberOfCharactersAttribute: String
let NSAccessibilityVisibleCharacterRangeAttribute: String
let NSAccessibilitySharedTextUIElementsAttribute: String
let NSAccessibilitySharedCharacterRangeAttribute: String
let NSAccessibilityInsertionPointLineNumberAttribute: String
@available(OSX 10.5, *)
let NSAccessibilitySelectedTextRangesAttribute: String
let NSAccessibilityLineForIndexParameterizedAttribute: String
let NSAccessibilityRangeForLineParameterizedAttribute: String
let NSAccessibilityStringForRangeParameterizedAttribute: String
let NSAccessibilityRangeForPositionParameterizedAttribute: String
let NSAccessibilityRangeForIndexParameterizedAttribute: String
let NSAccessibilityBoundsForRangeParameterizedAttribute: String
let NSAccessibilityRTFForRangeParameterizedAttribute: String
let NSAccessibilityStyleRangeForIndexParameterizedAttribute: String
let NSAccessibilityAttributedStringForRangeParameterizedAttribute: String
let NSAccessibilityFontTextAttribute: String
let NSAccessibilityForegroundColorTextAttribute: String
let NSAccessibilityBackgroundColorTextAttribute: String
let NSAccessibilityUnderlineColorTextAttribute: String
let NSAccessibilityStrikethroughColorTextAttribute: String
let NSAccessibilityUnderlineTextAttribute: String
let NSAccessibilitySuperscriptTextAttribute: String
let NSAccessibilityStrikethroughTextAttribute: String
let NSAccessibilityShadowTextAttribute: String
let NSAccessibilityAttachmentTextAttribute: String
let NSAccessibilityLinkTextAttribute: String
@available(OSX 10.7, *)
let NSAccessibilityAutocorrectedTextAttribute: String
@available(OSX 10.11, *)
let NSAccessibilityListItemPrefixTextAttribute: String
@available(OSX 10.11, *)
let NSAccessibilityListItemIndexTextAttribute: String
@available(OSX 10.11, *)
let NSAccessibilityListItemLevelTextAttribute: String
let NSAccessibilityMisspelledTextAttribute: String
@available(OSX 10.4, *)
let NSAccessibilityMarkedMisspelledTextAttribute: String
let NSAccessibilityFontNameKey: String
let NSAccessibilityFontFamilyKey: String
let NSAccessibilityVisibleNameKey: String
let NSAccessibilityFontSizeKey: String
let NSAccessibilityMainAttribute: String
let NSAccessibilityMinimizedAttribute: String
let NSAccessibilityCloseButtonAttribute: String
let NSAccessibilityZoomButtonAttribute: String
let NSAccessibilityMinimizeButtonAttribute: String
let NSAccessibilityToolbarButtonAttribute: String
let NSAccessibilityProxyAttribute: String
let NSAccessibilityGrowAreaAttribute: String
let NSAccessibilityModalAttribute: String
let NSAccessibilityDefaultButtonAttribute: String
let NSAccessibilityCancelButtonAttribute: String
@available(OSX 10.7, *)
let NSAccessibilityFullScreenButtonAttribute: String
let NSAccessibilityMenuBarAttribute: String
let NSAccessibilityWindowsAttribute: String
let NSAccessibilityFrontmostAttribute: String
let NSAccessibilityHiddenAttribute: String
let NSAccessibilityMainWindowAttribute: String
let NSAccessibilityFocusedWindowAttribute: String
let NSAccessibilityFocusedUIElementAttribute: String
@available(OSX 10.8, *)
let NSAccessibilityExtrasMenuBarAttribute: String
@available(OSX 10.10, *)
enum NSAccessibilityOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Vertical
  case Horizontal
}
let NSAccessibilityOrientationAttribute: String
let NSAccessibilityVerticalOrientationValue: String
let NSAccessibilityHorizontalOrientationValue: String
let NSAccessibilityUnknownOrientationValue: String
let NSAccessibilityColumnTitlesAttribute: String
let NSAccessibilitySearchButtonAttribute: String
let NSAccessibilitySearchMenuAttribute: String
let NSAccessibilityClearButtonAttribute: String
let NSAccessibilityRowsAttribute: String
let NSAccessibilityVisibleRowsAttribute: String
let NSAccessibilitySelectedRowsAttribute: String
let NSAccessibilityColumnsAttribute: String
let NSAccessibilityVisibleColumnsAttribute: String
let NSAccessibilitySelectedColumnsAttribute: String
let NSAccessibilitySortDirectionAttribute: String
@available(OSX 10.6, *)
let NSAccessibilitySelectedCellsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityVisibleCellsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityRowHeaderUIElementsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityColumnHeaderUIElementsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityCellForColumnAndRowParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityRowIndexRangeAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityColumnIndexRangeAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityHorizontalUnitsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityVerticalUnitsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityHorizontalUnitDescriptionAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityVerticalUnitDescriptionAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutPointForScreenPointParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutSizeForScreenSizeParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityScreenPointForLayoutPointParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityScreenSizeForLayoutSizeParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityHandlesAttribute: String
let NSAccessibilityAscendingSortDirectionValue: String
let NSAccessibilityDescendingSortDirectionValue: String
let NSAccessibilityUnknownSortDirectionValue: String
@available(OSX 10.10, *)
enum NSAccessibilitySortDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Ascending
  case Descending
}
let NSAccessibilityDisclosingAttribute: String
let NSAccessibilityDisclosedRowsAttribute: String
let NSAccessibilityDisclosedByRowAttribute: String
let NSAccessibilityDisclosureLevelAttribute: String
let NSAccessibilityAllowedValuesAttribute: String
let NSAccessibilityLabelUIElementsAttribute: String
let NSAccessibilityLabelValueAttribute: String
@available(OSX, introduced=10.1, deprecated=10.10)
let NSAccessibilityMatteHoleAttribute: String
@available(OSX, introduced=10.1, deprecated=10.10)
let NSAccessibilityMatteContentUIElementAttribute: String
let NSAccessibilityMarkerUIElementsAttribute: String
let NSAccessibilityMarkerValuesAttribute: String
let NSAccessibilityMarkerGroupUIElementAttribute: String
let NSAccessibilityUnitsAttribute: String
let NSAccessibilityUnitDescriptionAttribute: String
let NSAccessibilityMarkerTypeAttribute: String
let NSAccessibilityMarkerTypeDescriptionAttribute: String
@available(OSX 10.7, *)
let NSAccessibilityIdentifierAttribute: String
let NSAccessibilityLeftTabStopMarkerTypeValue: String
let NSAccessibilityRightTabStopMarkerTypeValue: String
let NSAccessibilityCenterTabStopMarkerTypeValue: String
let NSAccessibilityDecimalTabStopMarkerTypeValue: String
let NSAccessibilityHeadIndentMarkerTypeValue: String
let NSAccessibilityTailIndentMarkerTypeValue: String
let NSAccessibilityFirstLineIndentMarkerTypeValue: String
let NSAccessibilityUnknownMarkerTypeValue: String
@available(OSX 10.10, *)
enum NSAccessibilityRulerMarkerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case TabStopLeft
  case TabStopRight
  case TabStopCenter
  case TabStopDecimal
  case IndentHead
  case IndentTail
  case IndentFirstLine
}
let NSAccessibilityInchesUnitValue: String
let NSAccessibilityCentimetersUnitValue: String
let NSAccessibilityPointsUnitValue: String
let NSAccessibilityPicasUnitValue: String
let NSAccessibilityUnknownUnitValue: String
@available(OSX 10.10, *)
enum NSAccessibilityUnits : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Inches
  case Centimeters
  case Points
  case Picas
}
let NSAccessibilityPressAction: String
let NSAccessibilityIncrementAction: String
let NSAccessibilityDecrementAction: String
let NSAccessibilityConfirmAction: String
let NSAccessibilityPickAction: String
let NSAccessibilityCancelAction: String
let NSAccessibilityRaiseAction: String
let NSAccessibilityShowMenuAction: String
let NSAccessibilityDeleteAction: String
@available(OSX 10.9, *)
let NSAccessibilityShowAlternateUIAction: String
@available(OSX 10.9, *)
let NSAccessibilityShowDefaultUIAction: String
let NSAccessibilityMainWindowChangedNotification: String
let NSAccessibilityFocusedWindowChangedNotification: String
let NSAccessibilityFocusedUIElementChangedNotification: String
let NSAccessibilityApplicationActivatedNotification: String
let NSAccessibilityApplicationDeactivatedNotification: String
let NSAccessibilityApplicationHiddenNotification: String
let NSAccessibilityApplicationShownNotification: String
let NSAccessibilityWindowCreatedNotification: String
let NSAccessibilityWindowMovedNotification: String
let NSAccessibilityWindowResizedNotification: String
let NSAccessibilityWindowMiniaturizedNotification: String
let NSAccessibilityWindowDeminiaturizedNotification: String
let NSAccessibilityDrawerCreatedNotification: String
let NSAccessibilitySheetCreatedNotification: String
let NSAccessibilityUIElementDestroyedNotification: String
let NSAccessibilityValueChangedNotification: String
let NSAccessibilityTitleChangedNotification: String
let NSAccessibilityResizedNotification: String
let NSAccessibilityMovedNotification: String
let NSAccessibilityCreatedNotification: String
@available(OSX 10.9, *)
let NSAccessibilityLayoutChangedNotification: String
let NSAccessibilityHelpTagCreatedNotification: String
let NSAccessibilitySelectedTextChangedNotification: String
let NSAccessibilityRowCountChangedNotification: String
let NSAccessibilitySelectedChildrenChangedNotification: String
let NSAccessibilitySelectedRowsChangedNotification: String
let NSAccessibilitySelectedColumnsChangedNotification: String
@available(OSX 10.6, *)
let NSAccessibilityRowExpandedNotification: String
@available(OSX 10.6, *)
let NSAccessibilityRowCollapsedNotification: String
@available(OSX 10.6, *)
let NSAccessibilitySelectedCellsChangedNotification: String
@available(OSX 10.6, *)
let NSAccessibilityUnitsChangedNotification: String
@available(OSX 10.6, *)
let NSAccessibilitySelectedChildrenMovedNotification: String
@available(OSX 10.7, *)
let NSAccessibilityAnnouncementRequestedNotification: String
let NSAccessibilityUnknownRole: String
let NSAccessibilityButtonRole: String
let NSAccessibilityRadioButtonRole: String
let NSAccessibilityCheckBoxRole: String
let NSAccessibilitySliderRole: String
let NSAccessibilityTabGroupRole: String
let NSAccessibilityTextFieldRole: String
let NSAccessibilityStaticTextRole: String
let NSAccessibilityTextAreaRole: String
let NSAccessibilityScrollAreaRole: String
let NSAccessibilityPopUpButtonRole: String
let NSAccessibilityMenuButtonRole: String
let NSAccessibilityTableRole: String
let NSAccessibilityApplicationRole: String
let NSAccessibilityGroupRole: String
let NSAccessibilityRadioGroupRole: String
let NSAccessibilityListRole: String
let NSAccessibilityScrollBarRole: String
let NSAccessibilityValueIndicatorRole: String
let NSAccessibilityImageRole: String
let NSAccessibilityMenuBarRole: String
let NSAccessibilityMenuRole: String
let NSAccessibilityMenuItemRole: String
let NSAccessibilityColumnRole: String
let NSAccessibilityRowRole: String
let NSAccessibilityToolbarRole: String
let NSAccessibilityBusyIndicatorRole: String
let NSAccessibilityProgressIndicatorRole: String
let NSAccessibilityWindowRole: String
let NSAccessibilityDrawerRole: String
let NSAccessibilitySystemWideRole: String
let NSAccessibilityOutlineRole: String
let NSAccessibilityIncrementorRole: String
let NSAccessibilityBrowserRole: String
let NSAccessibilityComboBoxRole: String
let NSAccessibilitySplitGroupRole: String
let NSAccessibilitySplitterRole: String
let NSAccessibilityColorWellRole: String
let NSAccessibilityGrowAreaRole: String
let NSAccessibilitySheetRole: String
let NSAccessibilityHelpTagRole: String
let NSAccessibilityMatteRole: String
let NSAccessibilityRulerRole: String
let NSAccessibilityRulerMarkerRole: String
let NSAccessibilityLinkRole: String
@available(OSX 10.5, *)
let NSAccessibilityDisclosureTriangleRole: String
@available(OSX 10.5, *)
let NSAccessibilityGridRole: String
let NSAccessibilityRelevanceIndicatorRole: String
@available(OSX 10.6, *)
let NSAccessibilityLevelIndicatorRole: String
@available(OSX 10.6, *)
let NSAccessibilityCellRole: String
@available(OSX 10.7, *)
let NSAccessibilityPopoverRole: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutAreaRole: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutItemRole: String
@available(OSX 10.6, *)
let NSAccessibilityHandleRole: String
let NSAccessibilityUnknownSubrole: String
let NSAccessibilityCloseButtonSubrole: String
let NSAccessibilityZoomButtonSubrole: String
let NSAccessibilityMinimizeButtonSubrole: String
let NSAccessibilityToolbarButtonSubrole: String
let NSAccessibilityTableRowSubrole: String
let NSAccessibilityOutlineRowSubrole: String
let NSAccessibilitySecureTextFieldSubrole: String
let NSAccessibilityStandardWindowSubrole: String
let NSAccessibilityDialogSubrole: String
let NSAccessibilitySystemDialogSubrole: String
let NSAccessibilityFloatingWindowSubrole: String
let NSAccessibilitySystemFloatingWindowSubrole: String
let NSAccessibilityIncrementArrowSubrole: String
let NSAccessibilityDecrementArrowSubrole: String
let NSAccessibilityIncrementPageSubrole: String
let NSAccessibilityDecrementPageSubrole: String
let NSAccessibilitySearchFieldSubrole: String
let NSAccessibilityTextAttachmentSubrole: String
let NSAccessibilityTextLinkSubrole: String
@available(OSX 10.5, *)
let NSAccessibilityTimelineSubrole: String
@available(OSX 10.6, *)
let NSAccessibilitySortButtonSubrole: String
@available(OSX 10.6, *)
let NSAccessibilityRatingIndicatorSubrole: String
@available(OSX 10.6, *)
let NSAccessibilityContentListSubrole: String
@available(OSX 10.6, *)
let NSAccessibilityDefinitionListSubrole: String
@available(OSX 10.7, *)
let NSAccessibilityFullScreenButtonSubrole: String
@available(OSX 10.9, *)
let NSAccessibilityToggleSubrole: String
@available(OSX 10.9, *)
let NSAccessibilitySwitchSubrole: String
@available(OSX 10.9, *)
let NSAccessibilityDescriptionListSubrole: String
@available(OSX 10.7, *)
func NSAccessibilityPostNotificationWithUserInfo(element: AnyObject, _ notification: String, _ userInfo: [NSObject : AnyObject])
@available(OSX 10.9, *)
let NSAccessibilityUIElementsKey: String
@available(OSX 10.9, *)
let NSAccessibilityPriorityKey: String
@available(OSX 10.7, *)
let NSAccessibilityAnnouncementKey: String
@available(OSX 10.9, *)
enum NSAccessibilityPriorityLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
