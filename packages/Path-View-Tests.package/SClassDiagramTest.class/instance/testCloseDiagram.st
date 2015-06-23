testing
testCloseDiagram
	| firstState|

	firstState := (instance instVarNamed: 'currentState').
	instance 	
		newDiagram;
		close.
	self assert: [ firstState = (instance instVarNamed: 'currentState') ]
					

	