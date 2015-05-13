updating
update: what
	| state |
	what ifNil:[^self].
	what == getLabelSelector ifTrue: [
		self label: (model perform: getLabelSelector)].
	what == getEnabledSelector ifTrue:[^self enabled: (model perform: getEnabledSelector)].

	getColorSelector ifNotNil: [ | cc |
		color = (cc := model perform: getColorSelector) ifFalse:[
			color := cc.
			self onColor: color offColor: color.
			self changed.
		].
	].
	state := self getModelState.
	self checkBoxMorph checked: state.
	state
		ifTrue: [self color: onColor]
		ifFalse: [self color: offColor].	
	getEnabledSelector ifNotNil:[
		self enabled: (model perform: getEnabledSelector).
	].
