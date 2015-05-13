printing
printProfile

	self selectedProfile == #normal ifTrue: [^''].
	^ '[',  (self profiles at: self selectedProfile), ']'