accessing
contents
	"Depending on browser state display different source code"
	| source |
	self invariantsShown ifTrue: [
			source := (self selectedClassOrMetaClass organization invariantMethod
				getSourceFor: #invariants 
				in: (self selectedClassOrMetaClass))].
	
	[self postconditionsShown ifTrue: [
		source := (currentCompiledMethod afterMethod 
				getSourceFor: (currentCompiledMethod selector) 
				in: (self selectedClassOrMetaClass))].
	
	self preconditionsShown ifTrue: [
		source := (currentCompiledMethod beforeMethod 
				getSourceFor: (currentCompiledMethod selector) 
				in: (self selectedClassOrMetaClass))]] 
		on: Error do: ["After removing contracts browser inconsistency are possible"].
	
	source ifNotNil: [^ self editContentsWithDefault: 
		[source copy asText makeSelectorBoldIn: self selectedClassOrMetaClass]].
	^ super contents