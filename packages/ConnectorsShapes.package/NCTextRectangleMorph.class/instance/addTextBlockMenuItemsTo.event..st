menus
addTextBlockMenuItemsTo: aCustomMenu event: evt
	|  sm tm |
	aCustomMenu addLine.

	sm := submorphs 
		detect: [ :ea | ea containsPoint: evt position ]
		ifNone: [ ].
	sm ifNotNil: [
		(sm isTextMorph)
			ifTrue: [ | morphs |
				tm := sm.
				morphs := self morphsInTextBlockContaining: sm.
				aCustomMenu add: 'delete text block' translated
					target: self
					selector: #deleteMorphs:
					argument: morphs.
				aCustomMenu add: 'delete text' translated
					target: sm
					selector: #delete.
				aCustomMenu add: 'emphasis...' translated
					target: tm
					selector: #chooseEmphasisOrAlignment.
				aCustomMenu add: 'text properties...' translated
					target: tm
					selector: #openATextPropertySheet.
			]
			ifFalse: [ aCustomMenu add: 'delete line' translated
				target: sm
				action: #delete. ].
		aCustomMenu addLine.
	].
	aCustomMenu add: 'add text block' translated action: #addTextBlock.
	aCustomMenu add: 'add text' translated action: #addText.
	aCustomMenu add: 'add line' translated action: #addLine.
	aCustomMenu addUpdating: #hideTextBlockString action: #toggleLowerTextHidden.
	tm ifNotNil: [
		aCustomMenu add: 'set font for this text' translated target: self selector: #promptForFontFor: argument: tm.
	].
	^aCustomMenu