pathMap-helper
pushButton: aSymbol on: aMenuMorph
	| button |
	button := aMenuMorph submorphs 
				detect: [:each | each actionSelector = aSymbol] ifNone: [nil].
	self assert: button notNil.
	button mouseUp: nil.