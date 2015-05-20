arrows
changeArrowScaleInteractively: evt
	| handle origin aHand oldScales scaleDelta newScales |
	aHand := evt ifNil: [self primaryHand] ifNotNil: [evt hand].
	origin := aHand position.
	oldScales := self arrowScales.
	handle := HandleMorph new
		forEachPointDo:
			[:newPoint | handle removeAllMorphs.
			handle addMorph:
				(LineMorph from: origin to: newPoint color: Color black width: 1).
			scaleDelta := ((newPoint - origin) / 100.0).
			newScales := oldScales + scaleDelta.
			self arrowScales: newScales.
		]
		lastPointDo:
			[:newPoint | handle deleteBalloon.
			self halo ifNotNilDo: [:halo | halo addHandles].
			self rememberCommand:
				(Command new cmdWording: 'arrow scale change';
					undoTarget: self selector: #arrowScales: argument: oldScales;
					redoTarget: self selector: #arrowScales: argument: newScales)].
	aHand attachMorph: handle.
	handle setProperty: #helpAtCenter toValue: true.
	handle showBalloon:
'Move cursor farther from
this point to increase the size of the arrows.
Click when done.' hand: evt hand.
	handle startStepping