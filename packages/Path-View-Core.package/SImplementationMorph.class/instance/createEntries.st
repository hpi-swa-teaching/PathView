layout and labels
createEntries
	"Added with addMorphBack:, so reverse makes sure that the last in the list stays last"
	
	^ {
		instanceStateMorph := SStateMorph on: klass in: classMorph type: #instance.
		classStateMorph := SStateMorph on: klass in: classMorph type: #class.
		SStateMorph on: klass in: classMorph type: #pool.
		instanceBehaviorMorph := SBehaviorMorph on: klass in: classMorph.
		SStateMorph on: klass class in: classMorph type: #instance.
		classBehaviorMorph := SBehaviorMorph on: klass class in: classMorph }
			asOrderedCollection