as yet unclassified
addArray
	| answer numbers num | 
	target ifNil: [ ^self ].
	answer := FillInTheBlankMorph request: 'Enter the number of H and/or V APs to create; use 0 for none' initialAnswer: '0 0'.
	answer isEmpty ifTrue: [ ^self ].
	numbers := (answer findTokens: Character separators) collect: [ :ea | ea asNumber ].
	num := numbers at: 1 ifAbsent: [ ^self ].
	target addHorizontalAttachmentPoints: num - 1.
	
	num := numbers at: 2 ifAbsent: [ ^self ].
	target addVerticalAttachmentPoints: num - 1.
	
self refreshAttachers.