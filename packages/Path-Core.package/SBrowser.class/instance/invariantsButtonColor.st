controls-inavariants
invariantsButtonColor
	"Highlight invariant button, if invariants are currently shown"
	(self selectedClassOrMetaClass isNil or: 
	[self selectedClassOrMetaClass organization invariantMethod isNil]) 
		ifTrue: [^ Color gray].
	self invariantsShown ifTrue: [^ Color yellow muchLighter lighter].
	^ Color transparent