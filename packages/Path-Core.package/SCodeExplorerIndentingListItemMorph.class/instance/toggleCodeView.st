actions
toggleCodeView
	(self isCodeExpanded and: [self callTreeModel steppingNode = self callNode]) ifTrue: [^self].

	self isCodeExpanded
		ifTrue: [self 
					extent: self width@self class itemHeight;
					removeMorph: self codePane]
		ifFalse: [self 
					addMorph: self codePane;
					extent: self width@(self codePane height)].
	self isCodeExpanded: self isCodeExpanded not.
	self container adjustSubmorphPositions.
	self container scrollToShow: self codePane.