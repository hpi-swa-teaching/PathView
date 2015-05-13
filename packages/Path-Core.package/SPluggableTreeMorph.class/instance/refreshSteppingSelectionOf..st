refreshing
refreshSteppingSelectionOf: aMorph 
	aMorph callNode isSteppingNode
		ifTrue: [aMorph isCodeExpanded
				ifFalse: [aMorph toggleCodeView].
			self scrollToShow: aMorph].
	aMorph steppingSelection: aMorph callNode steppingSelection