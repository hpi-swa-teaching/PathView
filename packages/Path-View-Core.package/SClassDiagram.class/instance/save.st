menu-actions
save

	| oldSavedName |
	oldSavedName := savedName.

	(self submorphs anySatisfy: #isError) ifTrue: [ 
		^ self inform: 'I refuse to save inconsistent diagrams!' ].

	savedName := UIManager default
		request: 'Enter a name for this view'
		initialAnswer: ( savedName ifNil: [ '' ] ).
	
	(savedName isNil or: [savedName isEmpty or: [self canBeSaved not]])
		ifTrue: [
			self inform: 'Save aborted'.
			savedName := oldSavedName.
			self dirty: true ]
		ifFalse: [
			self remove;
				privateSave;
				dirty: false ]