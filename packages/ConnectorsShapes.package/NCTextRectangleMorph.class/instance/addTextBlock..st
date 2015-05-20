text morphs-add/remove
addTextBlock: aString 
	"Answers a text index"
	self submorphs isEmpty ifFalse: [ self addLine ].
	^self addText: aString.
