accessing
getViewString: anObject

	self selectedView == #identities
		ifTrue: ["^ self wrappedClass asString, '(', anObject identityHash, ')'"
			^ anObject identityHash].		
	self selectedView == #objects
		ifTrue: [^ [anObject asString] ifError: ['Error cannot print object']].
	self selectedView == #classes
		ifTrue: [^ self wrappedClass asString].
