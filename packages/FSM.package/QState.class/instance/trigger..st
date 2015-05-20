dispatching
trigger: anEvent
	"Make my FSM respond to anEvent.
	First try a full selector of the form #handleEventInState:,
	then a short selector of the form #handleState:"
	| selector type |
	type := anEvent eventType.
	selector := fsm selectorFor: type in: stateName.
	^selector
		ifNotNil: [ self dispatchEvent: anEvent selector: selector ]
		ifNil: [ self error: 'no handler for ', type, ' in state ', stateName.
			nil ]