layout - assigning
findPositionAround: center satisfying: aBlock
	"Try to read the code to understand this, its just one loop. Basically, we search around the center in square-motions, getting wider."
	
	| currentPosition steps maxSteps direction directions directionIndex |
	maxSteps := 2. "Smallest possible steps on a side of a square around the center matrix-position"
	directionIndex := 1.
	directions := { 1@0 ">". 0@1 "v". -1@0 "<". 0@ -1 "^" }.
	direction := directions at: directionIndex.
	currentPosition := center - 1 asPoint.
	steps := 0.
	
	[ aBlock value: currentPosition ]
		whileFalse: [
			currentPosition := currentPosition + direction.
			steps := steps + 1.
			steps = maxSteps ifTrue: [
				directionIndex := directionIndex + 1.
				directionIndex > 4 ifTrue: [ "Start a new, wider square"
					maxSteps := maxSteps + 2.
					directionIndex := 1.
					currentPosition := currentPosition - 1 asPoint ].
				direction := directions at: directionIndex.
				steps := 0 ] ].
	^ currentPosition