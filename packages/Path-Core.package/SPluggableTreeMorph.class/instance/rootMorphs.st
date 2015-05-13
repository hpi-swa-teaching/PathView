node access
rootMorphs
	"Answer the receiver's roots"
	^ self scroller submorphs
		select: [:each | each indentLevel isZero]