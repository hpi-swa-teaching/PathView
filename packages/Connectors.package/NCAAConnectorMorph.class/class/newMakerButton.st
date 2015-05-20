instance creation
newMakerButton

	^Smalltalk at: #NCMakerButton ifPresent: [ :ncmb |
		^(ncmb fromPrototype: self newWithArrow)
			actionSelector: #startWiring;
			cornerStyle: #rounded;
			color: Color blue muchLighter;
			changePixelsOfColor: Color red toColor: Color transparent;
			yourself ].