accessing
contents: input notifying: aController 
	"Provide a hook to save code of invariants"
	| aString methodNode |
	self invariantsShown ifFalse: [^ super contents: input notifying: aController].
	self selectedClassOrMetaClass organization invariantMethod ifNil: 
		[self error: 'Cannot create new method in invariant mode!'].
	
	self changed: #annotation.
	aString := input asString.
	methodNode := self methodNodeFrom: aString notifying: nil.
	self selectedClassOrMetaClass organization invariantMethod: (methodNode method).
	^ true