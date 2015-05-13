*Path-Core-override
buildPluggableCheckBox: aSpec
	| widget label state action enabled |
	label := aSpec label.
	state := aSpec state.
	action := aSpec action.
	widget := SPluggableCheckBoxMorph on: aSpec model
				getState: (state isSymbol ifTrue:[state])
				action: nil
				label: (label isSymbol ifTrue:[label]).
	self register: widget id: aSpec name.
	enabled := aSpec enabled.
	enabled isSymbol
		ifTrue:[widget getEnabledSelector: enabled]
		ifFalse:[widget enabled: enabled].
	widget action: action.
	widget getColorSelector: aSpec color.
	self buildHelpFor: widget spec: aSpec. 
	(label isSymbol or:[label == nil]) ifFalse:[widget label: label].
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	^widget