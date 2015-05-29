accessing
classMorphFor: aClass nearestTo: aMorphOrPoint
	"Returns the class-morph matching aClass (if any), that is the nearest to aPoint.
	Small duplication with SClassMorph >> nearestMorph:"
	
	| point |
	point := aMorphOrPoint isPoint ifTrue: [ aMorphOrPoint ] ifFalse: [ aMorphOrPoint center ].
	^ (self classMorphsFor: aClass)
		detectMin: [ :each | point dist: each center ]