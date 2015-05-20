as yet unclassified
addAllMethods
	| cls |
	cls := Smalltalk at: className ifAbsent: [ ^self ].
	self setTextAt: 3 to: (String streamContents: [ :s | cls organization allMethodSelectors do: [ :sel | s nextPutAll: sel; cr ]]).