layout and labels
updateEntries
	
	super updateEntries.
	"Recursively set indentation after all morphs have been created. As this morph has no label, start indentation only at submorphs. Kind of a hack."
	self indentation: self class indentationInset negated.
	
	"If there are absolutely no entries in this class, collapse me. Special case for 'empty' classes."
	(self entries noneSatisfy: #wantsToBeShown)
		ifTrue: [ self height: 0 ].