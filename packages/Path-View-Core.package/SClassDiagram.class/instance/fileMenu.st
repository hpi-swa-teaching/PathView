menu-actions
fileMenu

	| choices entry |
	choices := (savedStates associations collect: [:association | 
		association key -> association value first -> [self switchTo: association key]]),
			{'New' -> [self newDiagram]. 
			'Open' -> [self open]. 
			'Close' -> [self close]}.

	choices	
		detect: [:association | 
			association key key = currentState
				ifTrue: [association key value:  '(current) ', association key value. true] 
				ifFalse: [false]]
		ifNone: [].
	self isDirty ifTrue: [choices := choices, {'Save' -> [self save]}].
	self hasSubmorphs ifTrue: [choices := choices, {'Save as PNG' -> [self savePNG]}].
	self hasChanges ifTrue: [choices := choices, {'Revert' -> [self revert]}].
	self isSaved ifTrue: [choices := choices, {'Delete' -> [self remove]}].

	entry := UIManager default
		chooseFrom: ((choices collect: #key) collect: #value)
		values: (choices collect: #value)
		lines: {savedStates keys size}
		title: ''.
	entry value