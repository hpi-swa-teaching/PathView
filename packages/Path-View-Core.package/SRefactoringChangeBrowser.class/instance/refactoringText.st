accessing
refactoringText
	| text stream |
	self selectedChange ifNil: [^ ''].
	
	(self selectedChange change isKindOf: AddMethodChange) ifTrue: [
		^ TextDiffBuilder
			buildDisplayPatchFrom: 
				(self ifNilGetEmptyString: (self selectedChange change methodSourceFor: 
						self selectedChange change selector))
			to: (self ifNilGetEmptyString: self selectedChange change source).
	]  ifFalse: [  
		text := self selectedChange printString withBlanksTrimmed.
		(text startsWith: '!') ifTrue: [text := text allButFirst].
		(text endsWith: '!') ifTrue: [text := text allButLast].
		stream := ReadStream on: text.
		[stream nextChunk ifEmpty: [false] ifNotEmptyDo: [:chunk | text := chunk. true]]
			whileTrue.
		^ text. 
	]