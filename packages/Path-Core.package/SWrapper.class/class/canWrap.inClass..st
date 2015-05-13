instance creation
canWrap: aSymbol inClass: aClass
	| selectors |
	(super canWrap: aSymbol inClass: aClass) ifFalse: [^ false].
	(aClass == SClassA) ifTrue: [^ false]. "Required for SBeforeWrapperTest"
	selectors := #( #addToCoveredMethods: #coveredMethods #coveredMethods:).
	(aClass == SPMTRCoverageTracer and: [selectors includes: aSymbol]) ifTrue: [^ false].
	((aClass == STracer) and: [aSymbol == #active]) ifTrue: [^ false].
	((aClass == SPMTRProfilingTracer) or: [aClass inheritsFrom: SPMTRProfilingTracer]) 
		ifTrue: [^ false].
	^ true