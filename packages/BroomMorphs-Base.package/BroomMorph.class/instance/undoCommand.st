undo
undoCommand
	| cmd args |
	cmd := Command new cmdWording: 'align morphs'.
	args := OrderedCollection new.
	moved keysAndValuesDo: [ :m :b |
		args add: { m. b. m bounds. m owner. m owner morphPreceding: m }
	].
	cmd undoTarget: self selector: #undoMove:redo:args: arguments: { cmd. false. args }.
	^cmd