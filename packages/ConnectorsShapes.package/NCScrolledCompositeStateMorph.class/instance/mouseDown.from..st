events-processing
mouseDown: evt from: submorph
	| transformedEvent |
	(evt shiftPressed and: [ submorph isPlayfieldLike]) ifTrue:[
		^evt hand 
			waitForClicksOrDrag: submorph 
			event: evt 
			selectors: { #findWindow:. nil. nil. #dragThroughOnDesktop:}
			threshold: 5].
	transformedEvent := evt transformedBy: (submorph transformFrom: self) inverseTransformation.
	self mouseDown: transformedEvent.
