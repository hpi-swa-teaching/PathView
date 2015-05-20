events
doButtonAction
	"Perform the action of this button. Subclasses may override this method. 
	The default behavior is to send the button's actionSelector to a duplicate 
	of its target object with its arguments."
	| generated |
	oldColor
		ifNotNil: [self color: oldColor.
			oldColor := nil].
	target
		ifNil: [self inform: 'Drop a Morph on me so that I can have something to make!'.
			^ self].
	actionSelector
		ifNotNil: [generated := target duplicateForEmbedding.
			generated perform: actionSelector withEnoughArguments: arguments.
			(triggerEventType == #startDrag
					and: [generated visible not])
				ifTrue: [generated visible: true]]