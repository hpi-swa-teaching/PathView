menu actions
createMenuLabelsForSuspiciousTests: aCollection
	| label |
	^ aCollection collect: [:each | 
			label := WriteStream on: ''.
			label nextPutAll: each first asString.
			each first lastResult hasPassed 
				ifTrue: [label nextPutAll: ' (passed /'].
			each first lastResult hasFailures 
				ifTrue: [label nextPutAll: ' (failed /'].
			each first lastResult hasErrors 
				ifTrue: [label nextPutAll: ' (error /'].
			label 
				nextPut: Character space;
				nextPutAll: (each second printShowingDecimalPlaces: 2);
				nextPutAll: ' score)'.
			label contents]