ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (425@400).
	panel position: (0@0).
	panel hResizing: (#spaceFill).
	panel vResizing: (#spaceFill).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#leftCenter).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: (nil).
	panel balloonColor: (Color transparent).
	panel color: (Color lightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	methodLabel := UiLabel new.
	methodLabel changeTableLayout.
	methodLabel extent: (48@18).
	methodLabel position: (4@4).
	methodLabel hResizing: (#shrinkWrap).
	methodLabel vResizing: (#shrinkWrap).
	methodLabel minWidth: (2).
	methodLabel minHeight: (2).
	methodLabel cellInset: (0).
	methodLabel cellPositioning: (#center).
	methodLabel cellSpacing: (#none).
	methodLabel layoutInset: (0).
	methodLabel listCentering: (#topLeft).
	methodLabel listDirection: (#leftToRight).
	methodLabel listSpacing: (#none).
	methodLabel maxCellSize: (1073741823).
	methodLabel minCellSize: (0).
	methodLabel wrapCentering: (#topLeft).
	methodLabel wrapDirection: (#none).
	methodLabel frameFractions: (0@0 corner: 1@0.025).
	methodLabel frameOffsets: (0@0 corner: 0@0).
	methodLabel balloonText: (nil).
	methodLabel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.937)).
	methodLabel text: ('Method:').
	methodLabel setProperty: #formByDesigner toValue: 'nil'.
	methodLabel form: (nil).
	methodLabel setProperty: #objectName toValue: 'methodLabel'.
	panel addChild: methodLabel.
	dictionaryLabel := UiLabel new.
	dictionaryLabel changeProportionalLayout.
	dictionaryLabel extent: (102@18).
	dictionaryLabel position: (4@26).
	dictionaryLabel hResizing: (#shrinkWrap).
	dictionaryLabel vResizing: (#shrinkWrap).
	dictionaryLabel minWidth: (2).
	dictionaryLabel minHeight: (2).
	dictionaryLabel cellInset: (0).
	dictionaryLabel cellPositioning: (#center).
	dictionaryLabel cellSpacing: (#none).
	dictionaryLabel layoutInset: (0).
	dictionaryLabel listCentering: (#topLeft).
	dictionaryLabel listDirection: (#leftToRight).
	dictionaryLabel listSpacing: (#none).
	dictionaryLabel maxCellSize: (1073741823).
	dictionaryLabel minCellSize: (0).
	dictionaryLabel wrapCentering: (#topLeft).
	dictionaryLabel wrapDirection: (#none).
	dictionaryLabel frameFractions: (0@0 corner: 1@0.085).
	dictionaryLabel frameOffsets: (0@0 corner: 0@0).
	dictionaryLabel balloonText: (nil).
	dictionaryLabel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	dictionaryLabel text: ('Not in Dictionary:').
	dictionaryLabel setProperty: #formByDesigner toValue: 'nil'.
	dictionaryLabel form: (nil).
	dictionaryLabel setProperty: #objectName toValue: 'dictionaryLabel'.
	panel addChild: dictionaryLabel.
	methodEdit := UiTextEdit new.
	methodEdit extent: (417@103).
	methodEdit position: (4@48).
	methodEdit hResizing: (#spaceFill).
	methodEdit vResizing: (#spaceFill).
	methodEdit minWidth: (2).
	methodEdit minHeight: (2).
	methodEdit cellInset: (0).
	methodEdit cellPositioning: (#center).
	methodEdit cellSpacing: (#none).
	methodEdit layoutInset: (0).
	methodEdit listCentering: (#topLeft).
	methodEdit listDirection: (#topToBottom).
	methodEdit listSpacing: (#none).
	methodEdit maxCellSize: (1073741823).
	methodEdit minCellSize: (0).
	methodEdit wrapCentering: (#topLeft).
	methodEdit wrapDirection: (#none).
	methodEdit frameFractions: (0@0 corner: 1@0.4).
	methodEdit frameOffsets: (0@40 corner: 0@ -20).
	methodEdit balloonText: (nil).
	methodEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	methodEdit widgetResizable: (true).
	methodEdit horizontalScrollBarPolicy: (#alwaysOff).
	methodEdit verticalScrollBarPolicy: (#alwaysOn).
	methodEdit outerBorderWidth: (1).
	methodEdit scrollBarThickness: (9).
	methodEdit theText: ('').
	methodEdit readOnly: (false).
	methodEdit autoConvert: (false).
	methodEdit autoAccept: (false).
	methodEdit acceptOnFocusLost: (false).
	methodEdit scrollingMode: (#none).
	methodEdit scrollingLimit: (10).
	methodEdit setProperty: #objectName toValue: 'methodEdit'.
	panel addChild: methodEdit.
	ignoreButton := PluggableButtonMorph new.
	ignoreButton changeTableLayout.
	ignoreButton extent: (417@25).
	ignoreButton position: (4@155).
	ignoreButton hResizing: (#spaceFill).
	ignoreButton vResizing: (#shrinkWrap).
	ignoreButton minWidth: (2).
	ignoreButton minHeight: (2).
	ignoreButton cellInset: (0).
	ignoreButton cellPositioning: (#topCenter).
	ignoreButton cellSpacing: (#none).
	ignoreButton layoutInset: (2).
	ignoreButton listCentering: (#topLeft).
	ignoreButton listDirection: (#topToBottom).
	ignoreButton listSpacing: (#none).
	ignoreButton maxCellSize: (1073741823).
	ignoreButton minCellSize: (0).
	ignoreButton wrapCentering: (#center).
	ignoreButton wrapDirection: (#none).
	ignoreButton frameFractions: (0@0.3 corner: 0.5@0.5).
	ignoreButton frameOffsets: (0@0 corner: 0@0).
	ignoreButton balloonText: (nil).
	ignoreButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	ignoreButton setProperty: #objectName toValue: 'ignoreButton'.
	panel addChild: ignoreButton.
	addToDictionaryButton := PluggableButtonMorph new.
	addToDictionaryButton changeTableLayout.
	addToDictionaryButton extent: (417@25).
	addToDictionaryButton position: (4@184).
	addToDictionaryButton hResizing: (#spaceFill).
	addToDictionaryButton vResizing: (#shrinkWrap).
	addToDictionaryButton minWidth: (2).
	addToDictionaryButton minHeight: (2).
	addToDictionaryButton cellInset: (0).
	addToDictionaryButton cellPositioning: (#topCenter).
	addToDictionaryButton cellSpacing: (#none).
	addToDictionaryButton layoutInset: (2).
	addToDictionaryButton listCentering: (#topLeft).
	addToDictionaryButton listDirection: (#topToBottom).
	addToDictionaryButton listSpacing: (#none).
	addToDictionaryButton maxCellSize: (1073741823).
	addToDictionaryButton minCellSize: (0).
	addToDictionaryButton wrapCentering: (#center).
	addToDictionaryButton wrapDirection: (#none).
	addToDictionaryButton frameFractions: (0.5@0.3 corner: 1@0.5).
	addToDictionaryButton frameOffsets: (0@0 corner: 0@0).
	addToDictionaryButton balloonText: (nil).
	addToDictionaryButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	addToDictionaryButton setProperty: #objectName toValue: 'addToDictionaryButton'.
	panel addChild: addToDictionaryButton.
	unnamedMorph1 := UiLabel new.
	unnamedMorph1 changeProportionalLayout.
	unnamedMorph1 extent: (78@18).
	unnamedMorph1 position: (4@213).
	unnamedMorph1 hResizing: (#shrinkWrap).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (0).
	unnamedMorph1 cellPositioning: (#topRight).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#leftToRight).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0.35 corner: 1@0.55).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph1 text: ('Suggestions:').
	unnamedMorph1 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph1 form: (nil).
	panel addChild: unnamedMorph1.
	suggestionWidget := UiListWidget new.
	suggestionWidget extent: (417@103).
	suggestionWidget position: (4@235).
	suggestionWidget hResizing: (#spaceFill).
	suggestionWidget vResizing: (#spaceFill).
	suggestionWidget minWidth: (2).
	suggestionWidget minHeight: (2).
	suggestionWidget cellInset: (0).
	suggestionWidget cellPositioning: (#center).
	suggestionWidget cellSpacing: (#none).
	suggestionWidget layoutInset: (0).
	suggestionWidget listCentering: (#topLeft).
	suggestionWidget listDirection: (#topToBottom).
	suggestionWidget listSpacing: (#none).
	suggestionWidget maxCellSize: (1073741823).
	suggestionWidget minCellSize: (0).
	suggestionWidget wrapCentering: (#topLeft).
	suggestionWidget wrapDirection: (#none).
	suggestionWidget frameFractions: (0@0.45 corner: 1@0.7).
	suggestionWidget frameOffsets: (0@18 corner: 0@ -30).
	suggestionWidget balloonText: (nil).
	suggestionWidget balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	suggestionWidget widgetResizable: (true).
	suggestionWidget horizontalScrollBarPolicy: (#alwaysOff).
	suggestionWidget verticalScrollBarPolicy: (#asNeeded).
	suggestionWidget outerBorderWidth: (0).
	suggestionWidget scrollBarThickness: (9).
	suggestionWidget modelClass: (UiPropertyItemNode).
	suggestionWidget horizontalHeaderVisible: (false).
	suggestionWidget verticalHeaderVisible: (false).
	suggestionWidget selectionBehavior: (#selectRows).
	suggestionWidget selectionMode: (UiViewSingleSelection).
	suggestionWidget listOrientation: (#default).
	suggestionWidget hAlignment: (#left).
	suggestionWidget vAlignment: (#top).
	suggestionWidget setProperty: #objectName toValue: 'suggestionWidget'.
	panel addChild: suggestionWidget.
	replaceButton := PluggableButtonMorph new.
	replaceButton changeTableLayout.
	replaceButton extent: (417@25).
	replaceButton position: (4@342).
	replaceButton hResizing: (#spaceFill).
	replaceButton vResizing: (#shrinkWrap).
	replaceButton minWidth: (2).
	replaceButton minHeight: (2).
	replaceButton cellInset: (0).
	replaceButton cellPositioning: (#topCenter).
	replaceButton cellSpacing: (#none).
	replaceButton layoutInset: (2).
	replaceButton listCentering: (#topLeft).
	replaceButton listDirection: (#topToBottom).
	replaceButton listSpacing: (#none).
	replaceButton maxCellSize: (1073741823).
	replaceButton minCellSize: (0).
	replaceButton wrapCentering: (#center).
	replaceButton wrapDirection: (#none).
	replaceButton frameFractions: (0@0.4 corner: 0.5@1).
	replaceButton frameOffsets: (0@0 corner: 0@ -25).
	replaceButton balloonText: (nil).
	replaceButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	replaceButton setProperty: #objectName toValue: 'replaceButton'.
	panel addChild: replaceButton.
	replaceAllButton := PluggableButtonMorph new.
	replaceAllButton changeTableLayout.
	replaceAllButton extent: (417@25).
	replaceAllButton position: (4@371).
	replaceAllButton hResizing: (#spaceFill).
	replaceAllButton vResizing: (#shrinkWrap).
	replaceAllButton minWidth: (2).
	replaceAllButton minHeight: (2).
	replaceAllButton cellInset: (0).
	replaceAllButton cellPositioning: (#topCenter).
	replaceAllButton cellSpacing: (#none).
	replaceAllButton layoutInset: (2).
	replaceAllButton listCentering: (#topLeft).
	replaceAllButton listDirection: (#topToBottom).
	replaceAllButton listSpacing: (#none).
	replaceAllButton maxCellSize: (1073741823).
	replaceAllButton minCellSize: (0).
	replaceAllButton wrapCentering: (#center).
	replaceAllButton wrapDirection: (#none).
	replaceAllButton frameFractions: (0.5@0.4 corner: 1@1).
	replaceAllButton frameOffsets: (0@0 corner: 0@ -25).
	replaceAllButton balloonText: (nil).
	replaceAllButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	replaceAllButton setProperty: #objectName toValue: 'replaceAllButton'.
	panel addChild: replaceAllButton.
	panel setProperty: #uiClassName toValue: 'DTRCorrectionWindow'.