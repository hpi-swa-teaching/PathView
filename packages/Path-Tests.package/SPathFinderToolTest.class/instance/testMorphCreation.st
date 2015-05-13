testing
testMorphCreation

	self assert: self browserMorph notNil.
	
	self assert: (self browserMorph submorphs at: 1) class == SActionButtonIconMorph.
	self assert: (self browserMorph submorphs at: 1) actionModel == self browserModel callTreeModel.
	self assert: (self browserMorph submorphs at: 1) balloonText = 'step to sender'.
	self assert: (((self browserMorph submorphs at: 1) iconForm asGrayScale2) bits 		hasEqualElements: UiFugueIcons arrowTurn090Icon asGrayScale2 bits).
	
	self assert: (self browserMorph submorphs at: 2) class == SActionButtonIconMorph.
	self assert: (self browserMorph submorphs at: 2) actionModel == self browserModel callTreeModel.
	self assert: (self browserMorph submorphs at: 2) balloonText = 'step back'.
	self assert: ((self browserMorph submorphs at: 2) iconForm asGrayScale2 bits
		hasEqualElements: (UiFugueIcons arrowStepOverIcon 
								flipBy: #horizontal centerAt: 8@8) asGrayScale2 bits).

	self assert: (self browserMorph submorphs at: 3) class == SActionButtonIconMorph.
	self assert: (self browserMorph submorphs at: 3) actionModel == self browserModel callTreeModel.
	self assert: (self browserMorph submorphs at: 3) balloonText = 'step return'.
	self assert: ((self browserMorph submorphs at: 3) iconForm asGrayScale2 bits hasEqualElements: UiFugueIcons arrowTurn090LeftIcon asGrayScale2 bits).
	
	self assert: (self browserMorph submorphs at: 4) class == SActionButtonIconMorph.
	self assert: (self browserMorph submorphs at: 4) actionModel == self browserModel callTreeModel.
	self assert: (self browserMorph submorphs at: 4) balloonText = 'step into'.
	self assert: ((self browserMorph submorphs at: 4) iconForm asGrayScale2 bits
				hasEqualElements: UiFugueIcons arrowStepIcon asGrayScale2 bits).

	self assert: (self browserMorph submorphs at: 5) class == SActionButtonIconMorph.
	self assert: (self browserMorph submorphs at: 5) actionModel == self browserModel callTreeModel.
	self assert: (self browserMorph submorphs at: 5) balloonText = 'step over'.
	self assert: ((self browserMorph submorphs at: 5) iconForm asGrayScale2 bits
				hasEqualElements: UiFugueIcons arrowStepOverIcon asGrayScale2 bits).

	self assert: (self browserMorph submorphs at: 6) class == SDropDownMorph.
	self assert: (self browserMorph submorphs at: 6) actionModel == self browserModel testChooserModel.	
	self assert: (self browserMorph submorphs at: 6) labelMorph contents = 'Without Profiling'.
	
	self assert: (self browserMorph submorphs at: 7) class == SDropDownMorph.
	self assert: (self browserMorph submorphs at: 7) actionModel == self browserModel testChooserModel.
	self assert: (self browserMorph submorphs at: 7) labelMorph contents = 'Class View'.

	self assert: (self browserMorph submorphs at: 8) class == STestResultFeedbackMorph.
	self assert: (self browserMorph submorphs at: 8) actionModel == self browserModel.

	"9 is an alignemnt morph"

	self assert: (self browserMorph submorphs at: 10) class == PluggableTextMorphPlus.
	self assert: (self browserMorph submorphs at: 10) knownName = 'searchInputField'.
	self assert: (self browserMorph submorphs at: 10) model == 
		self browserModel callTreeModel.

	self assert: (self browserMorph submorphs at: 11) class == SPluggableTreeMorph.
	self assert: (self browserMorph submorphs at: 11) knownName = 'callTree'.
	self assert: (self browserMorph submorphs at: 11) model == 
		self browserModel callTreeModel.

	self flag: #mpe.	"TODO: feedback morph is new and needs more tests"