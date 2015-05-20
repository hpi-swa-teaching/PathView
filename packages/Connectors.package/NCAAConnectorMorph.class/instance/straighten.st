appearance
straighten
	"Remove all my intermediate vertices."
	constraints first stopSteppingSelector: #stepAt:.
	constraints second stopSteppingSelector: #stepAt:.
	[line straighten.
	self fixDegenerateLine]
		ensure: [constraints first
				startStepping: #stepAt:
				at: Time millisecondClockValue
				arguments: nil
				stepTime: nil;
				 forceRedraw;
				 step.
			constraints second
				startStepping: #stepAt:
				at: Time millisecondClockValue
				arguments: nil
				stepTime: nil;
				 forceRedraw;
				 step]