controls-inavariants
aboutToStyle: aStyler
	"Added invariants to syntax highlighting"
	self invariantsShown ifTrue: 
		[aStyler classOrMetaClass: (self selectedClassOrMetaClass). 
		^ true].
	^ super aboutToStyle: aStyler