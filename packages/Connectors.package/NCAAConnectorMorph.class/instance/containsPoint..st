geometry
containsPoint: aPoint 
	"first, bounds test (simple)"

	(super containsPoint: aPoint) ifFalse: [^false].
	constraints do: [:ea | (ea containsPoint: aPoint) ifTrue: [^true]].
	line ifNil: [^true].
	^(line containsPoint: aPoint)
		or: [ self addedSubmorphs anySatisfy: [ :m | m containsPoint: aPoint ]] 