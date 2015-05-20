constraints
inputOwnerHash
	"Answer the identityHash of my first input's root morph"
	^((((inputs at: 1 ifAbsent: [ ^0 ]) ifNil: [ ^0 ]) rootInPasteUp ifNil: [ ^0 ]) owner ifNil: [ ^0 ])
		identityHash 
