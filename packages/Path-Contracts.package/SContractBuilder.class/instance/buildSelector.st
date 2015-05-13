building
buildSelector

	| selectorWithArgs |
	selectorWithArgs := WriteStream on: String new.
	self selector numArgs = 0 ifTrue: [
		self sources nextPutAll: self selector keywords first.
		^ self].
	
	(1 to: self selector numArgs) do: [:nr |
		selectorWithArgs
			nextPutAll: (self selector keywords at: nr); space;
			nextPutAll: (arguments at: nr); space].
	self sources nextPutAll: selectorWithArgs contents