stepping and presenter
step
	
	self constraints do: [:each | each hasAnyInputs ifFalse: [ ^ self delete ]].
	self isValid
		ifTrue: [self color = self defaultColor ifFalse: [self color: self defaultColor]]
		ifFalse: [self color = Color red ifFalse: [self color: Color red]]