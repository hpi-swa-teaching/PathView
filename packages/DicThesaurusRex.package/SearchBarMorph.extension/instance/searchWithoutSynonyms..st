*DicThesaurusRex-override
searchWithoutSynonyms: input
	(SystemNavigation new allImplementorsOf: input asSymbol) ifNotEmpty:[:list|
		^SystemNavigation new
			browseMessageList: list
			name: 'Implementors of ' , input
	].
	input first isUppercase ifTrue:[
		(Utilities classFromPattern: input withCaption: '') ifNotNil:[:aClass|
			^ToolSet browse: aClass selector: nil.
		].
	] ifFalse:[
		^ToolSet default browseMessageNames: input
	].
	^nil