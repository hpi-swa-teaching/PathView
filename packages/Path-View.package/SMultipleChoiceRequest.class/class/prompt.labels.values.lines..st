instance creation
prompt: aString labels: aCollection values: anotherCollection lines: anArray

	^ self basicNew
		initialize;
		setPrompt: aString labels: aCollection values: anotherCollection lines: anArray;
		signal