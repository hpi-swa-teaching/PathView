toolbar
chooseSubclass
	
	^ SMultipleChoiceRequest
		prompt: 'Choose a subclass'
		labels: (klass subclasses collect: #name), { 'Create new subclass...' }
		values: klass subclasses, { self newSubclassMarker }