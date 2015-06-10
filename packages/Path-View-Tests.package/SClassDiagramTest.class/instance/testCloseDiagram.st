as yet unclassified
testCloseDiagram
	| instance firstState|
	"| moreThanOneKey instance|
	moreThanOneKey := Dictionary new.
	moreThanOneKey at: 1 put: Array new.
	moreThanOneKey at: 2 put: Array new.
	self mock: #savedStates of: SClassDiagram class toReturn: moreThanOneKey during:[
	instance := SClassDiagram new.
	self assert: [moreThanOneKey = instance savedStates].]"
	instance := SClassDiagram new.
	firstState := (instance instVarNamed: 'currentState').
	instance 	
		new;
		close.
	self assert: [firstState = (instance instVarNamed: 'currentState')]
					

	