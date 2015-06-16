as yet unclassified
testCloseDiagram
	| instance firstState|
	instance := klass new.
	firstState := (instance instVarNamed: 'currentState').
	instance 	
		new;
		close.
	self assert: [firstState = (instance instVarNamed: 'currentState')]
					

	