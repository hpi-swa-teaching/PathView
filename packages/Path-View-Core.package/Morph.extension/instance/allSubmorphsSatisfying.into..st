*Path-View-Core-collecting
allSubmorphsSatisfying: aBlock into: aSet
	
	submorphs do: [ :morph |
		Transcript cr; show: morph.
		(aBlock value: morph) ifTrue: [ aSet add: morph ].
		morph allSubmorphsSatisfying: aBlock into: aSet ].
	^ aSet