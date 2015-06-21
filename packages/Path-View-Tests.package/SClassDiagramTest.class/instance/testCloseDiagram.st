testing
testCloseDiagram
	| firstState|

	firstState := (instance instVarNamed: 'currentState').
	instance 	
		new;
		close.
	self assert: [ firstState = (instance instVarNamed: 'currentState') ]
					

	