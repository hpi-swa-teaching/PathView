menu commands
renameEntry
	| reply currentName |
	reply := FillInTheBlank 
				request: 'New key? ' translated
				initialAnswer: (currentName := self nameOfGraphic)
				centerAt: self center.
	(reply isEmptyOrNil or: [reply = currentName]) ifTrue: [^Beeper beep].
	(self glyphDictionary includesKey: reply) 
		ifTrue: 
			[^self 
				inform: 'sorry, that conflicts with
the name of another
entry in this dictionary' translated ].
	self glyphDictionary at: reply put: (self glyphDictionary at: currentName).
	(self glyphDictionary)
		removeKey: currentName;
		changed: #arrowsChanged