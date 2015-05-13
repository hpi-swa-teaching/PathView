toolbar
addNote
	
	| target |
	target := SNoteMorph new.
	SNoteConnector openFor: self connectedTo: target.
	^ target openInHand