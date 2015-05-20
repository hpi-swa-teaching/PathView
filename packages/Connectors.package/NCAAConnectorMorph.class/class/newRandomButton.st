instance creation
newRandomButton
	"NCAAConnectorMorph newRandomButton openInHand"
	
	^Smalltalk at: #NCMakerButton ifPresent: [ :ncmb |
		^(ncmb fromPrototype: (self newWithArrow nameForButton: 'Random' translated; yourself))
			beLabeled: true;
			actionSelector: #startWiringRandomly;
			cornerStyle: #rounded;
			color: Color blue muchLighter;
			changePixelsOfColor: Color red toColor: Color transparent;
			yourself ].