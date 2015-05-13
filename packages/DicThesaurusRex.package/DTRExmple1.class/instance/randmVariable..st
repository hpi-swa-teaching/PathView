accessing
randmVariable: aValue 
	"randmVarible can only be set onse"
	randmVarible
		ifNil: [randmVarible := aValue]