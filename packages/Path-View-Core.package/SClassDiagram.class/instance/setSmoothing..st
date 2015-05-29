toolbar-actions
setSmoothing: aNumber
	"Adjust the smoothing-value of the scroll-pane content and the mini-map. Could also be handled separately, but is not really necessary.
	The mini-map can smooth up more than 3, so set its smoothing in 2-steps.
	Smoothing 1 does not produce viewable results anyway."
	
	(self ownerThatIsA: TransformMorph) ifNotNilDo: [ :owner | owner smoothing: aNumber ].
	minimap ifNotNil: [ minimap smoothing: 2 * aNumber ].
	self
		changed: #canSmoothUp;
		changed: #canSmoothDown.