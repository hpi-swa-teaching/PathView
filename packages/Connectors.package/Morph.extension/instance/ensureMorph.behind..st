*connectors-submorphs-add/remove
ensureMorph: back behind: front
	"Add a morph to the list of submorphs behind the specified morph,
	but only if it isn't already behind.
	Assume that it is more common for newMorph to already be in front"
	| backIndex i |
	backIndex := 0.
	i := submorphs size.
	"back to front search"
	submorphs reverseDo: [ :ea |
		ea == back
			ifTrue: [ backIndex := i ].
		ea == front
			ifTrue: [ backIndex = 0
				ifFalse: [ ^self "already in front" ]
				ifTrue: [ ^self privateAddMorph: back atIndex: i + 1  ]
			].
		i := i - 1.
 	].
