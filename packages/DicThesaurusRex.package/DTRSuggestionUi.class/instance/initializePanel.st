ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel changeProportionalLayout.
	panel extent: (290@130).
	panel position: (0@0).
	panel hResizing: (#spaceFill).
	panel vResizing: (#spaceFill).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color veryLightGray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	listWidget := UiListWidget new.
	listWidget extent: (165@122).
	listWidget position: (4@4).
	listWidget hResizing: (#spaceFill).
	listWidget vResizing: (#spaceFill).
	listWidget minWidth: (2).
	listWidget minHeight: (2).
	listWidget cellInset: (0).
	listWidget cellPositioning: (#center).
	listWidget cellSpacing: (#none).
	listWidget layoutInset: (0).
	listWidget listCentering: (#topLeft).
	listWidget listDirection: (#topToBottom).
	listWidget listSpacing: (#none).
	listWidget maxCellSize: (1073741823).
	listWidget minCellSize: (0).
	listWidget wrapCentering: (#topLeft).
	listWidget wrapDirection: (#none).
	listWidget frameFractions: (0@0 corner: 0.6@1).
	listWidget frameOffsets: (0@0 corner: -4@0).
	listWidget balloonText: (nil).
	listWidget balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	listWidget widgetResizable: (true).
	listWidget horizontalScrollBarPolicy: (#alwaysOff).
	listWidget verticalScrollBarPolicy: (#asNeeded).
	listWidget outerBorderWidth: (0).
	listWidget scrollBarThickness: (9).
	listWidget modelClass: (UiPropertyItemNode).
	listWidget horizontalHeaderVisible: (false).
	listWidget verticalHeaderVisible: (false).
	listWidget selectionBehavior: (#selectRows).
	listWidget selectionMode: (UiViewSingleSelection).
	listWidget listOrientation: (#default).
	listWidget hAlignment: (#left).
	listWidget vAlignment: (#top).
	listWidget setProperty: #objectName toValue: 'listWidget'.
	panel addChild: listWidget.
	cancelButton := PluggableButtonMorph new.
	cancelButton changeTableLayout.
	cancelButton extent: (113@25).
	cancelButton position: (173@83).
	cancelButton hResizing: (#spaceFill).
	cancelButton vResizing: (#rigid).
	cancelButton minWidth: (2).
	cancelButton minHeight: (2).
	cancelButton cellInset: (0).
	cancelButton cellPositioning: (#topCenter).
	cancelButton cellSpacing: (#none).
	cancelButton layoutInset: (2).
	cancelButton listCentering: (#topLeft).
	cancelButton listDirection: (#topToBottom).
	cancelButton listSpacing: (#none).
	cancelButton maxCellSize: (1073741823).
	cancelButton minCellSize: (0).
	cancelButton wrapCentering: (#center).
	cancelButton wrapDirection: (#none).
	cancelButton frameFractions: (0.6@0.5 corner: 1@1).
	cancelButton frameOffsets: (0@0 corner: 0@0).
	cancelButton balloonText: (nil).
	cancelButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	cancelButton setProperty: #objectName toValue: 'cancelButton'.
	panel addChild: cancelButton.
	replaceButton := PluggableButtonMorph new.
	replaceButton changeTableLayout.
	replaceButton extent: (113@25).
	replaceButton position: (173@22).
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
	replaceButton frameFractions: (0.6@0 corner: 1@0.5).
	replaceButton frameOffsets: (0@0 corner: 0@0).
	replaceButton balloonText: (nil).
	replaceButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	replaceButton setProperty: #objectName toValue: 'replaceButton'.
	panel addChild: replaceButton.
	panel setProperty: #uiClassName toValue: 'DTRSuggestion'.