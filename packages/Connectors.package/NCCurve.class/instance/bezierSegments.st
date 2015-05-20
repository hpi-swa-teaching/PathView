accessing contours
bezierSegments
	^Array streamContents: [ :s | self bezierSegmentsDo: [ :seg | s nextPut: seg ]]