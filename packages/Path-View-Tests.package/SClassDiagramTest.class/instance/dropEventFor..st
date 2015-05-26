drop-event-helpers
dropEventFor: aMorph

	^ DropEvent new
		setPosition: instance position + (1 @ 1)
		contents: aMorph
		hand: ActiveHand;
		yourself