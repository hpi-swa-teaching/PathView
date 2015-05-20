*connectors-submorphs-add/remove
ensureMorph: front inFrontOf: back
	"Add a morph to the list of submorphs in front of the specified morph,
	but only if it isn't already in front. Assume that it is more common for newMorph to already be in front"
	| frontIndex |
	frontIndex := 0.
	"front to back search"
	submorphs withIndexDo: [ :ea :i |
		ea == front
			ifTrue: [ frontIndex := i ].
		ea == back
			ifTrue: [ frontIndex = 0
				ifFalse: [ ^self "already in front" ]
				ifTrue: [ ^self privateAddMorph: front atIndex: i  ]
			].
 	].
