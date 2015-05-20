testing-TODO
handlesClickOrDrag: evt 
	handlers ifNil: [ ^false ].
	^#(#click #doubleClick #startDrag) 
		anySatisfy: [:sym | handlers includesKey: sym]