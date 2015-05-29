toolbar-actions
currentSmoothing
	"Take the TransformMorph-smoothing as reference value, although the same smoothing value is also set in the mini-map.
	If these two were different, it would be an illegal state, #setSmoothing: sets both values at the same time."
	
	^ (self ownerThatIsA: TransformMorph)
		ifNil: [ 0 ]
		ifNotNilDo: #smoothing