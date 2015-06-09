open/close
closeBoxHit

	undos
		ifNotEmpty: [
			(UIManager confirm: 'Undo already applied changes?')
				ifTrue: [undos valuesDo: [:value | value execute]. undos removeAll]].
	onClose ifNotNilDo: [:blk | blk valueWithEnoughArguments: {undos keys}].  
	super closeBoxHit.