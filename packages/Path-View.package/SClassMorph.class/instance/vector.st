layout force-based
vector
	
	^ layoutMovementVector
		ifNil: [ layoutMovementVector := 0@0 ]