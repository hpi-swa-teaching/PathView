menus
changeLineWidthInteractively: evt
	"Copied from BorderedMorph"
	| handle origin aHand newWidth oldWidth |
	aHand := evt ifNil: [self primaryHand] ifNotNil: [evt hand].
	origin := aHand position.
	oldWidth := self lineWidth.
	handle := HandleMorph new
		forEachPointDo:
			[:newPoint | handle removeAllMorphs.
			handle addMorph:
				(LineMorph from: origin to: newPoint color: Color black width: 1).
			newWidth := (newPoint - origin) r / 15.0.
			self lineWidth: (newWidth max: 1)]
		lastPointDo:
			[:newPoint | handle deleteBalloon.
			self halo ifNotNilDo: [:halo | halo addHandles].
			self rememberCommand:
				(Command new cmdWording: 'line width change';
					undoTarget: self selector: #lineWidth: argument: oldWidth;
					redoTarget: self selector: #lineWidth: argument: newWidth)].
	aHand attachMorph: handle.
	handle setProperty: #helpAtCenter toValue: true.
	handle showBalloon:
'Move cursor farther from
this point to increase line width.
Click when done.' hand: evt hand.
	handle startStepping