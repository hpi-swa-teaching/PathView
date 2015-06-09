instance creation
forPoly: aClass

	^ self new
		typeOfContainer:  aClass;
		typeOfElements: Set new;
		typeOfKeys: Set new;
		yourself