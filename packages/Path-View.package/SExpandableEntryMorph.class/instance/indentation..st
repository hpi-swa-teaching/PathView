layout and labels
indentation: aNumber
	
	super indentation: aNumber.
	self entries do: [ :each | each indentation: indentationMorph indentation + self class indentationInset ].