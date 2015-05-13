testing
testFailsSilentlyForRandomlyDroppedMorphs

	self mock: #confirm: of: UIManager default class toReturn: false during: [
		self assert: [instance submorphs isEmpty].
		(self transferEventFor: (TransferMorph
									withPassenger: self class methodDict values first)) 
			sentTo: instance.
		self assert: [instance submorphs isEmpty].
		(self dropEventFor: (BorderedMorph new)) sentTo: instance.
		self assert: [instance submorphs isEmpty]].
