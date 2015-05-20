initialization
initializeWithThumbnail: aThumbnail withLabel: aLabel andColor: aColor andSend: aSelector to: aReceiver 
	"Initialize the receiver to show aThumbnail on its face, giving it the 
	label supplied and arranging for it, when the button goes down on it, 
	to obtain a new morph by sending the supplied selector to the supplied 
	receiver.  
	The difference between this one and its parent is that the new morph is 
	pre-generated and later duplicated."
	| labeledItem proto |
	labeledItem := AlignmentMorph newColumn.
	labeledItem color: aColor.
	labeledItem borderWidth: 0.
	labeledItem addMorph: aThumbnail.
	labeledItem addMorphBack: (Morph new extent: 4 @ 4) beTransparent.
	labeledItem addMorphBack: (TextMorph new backgroundColor: aColor asNontranslucentColor;
			 contentsAsIs: aLabel;
			
			beAllFont: (self class labelTextStyle fontOfSize: 15);
			 centered).
	proto := aReceiver perform: aSelector.
	proto setNameTo: aLabel.
	self labelGraphic: ((labeledItem makerButtonImageOfColor: aColor) replaceColor: aColor
				withColor: Color transparent);
		 borderWidth: 0;
		 target: proto;
		
		actionSelector: (proto isConnector
				ifTrue: [#startWiring]
				ifFalse: [#openInHand]);
		 arguments: {};
		 actWhen: #buttonUp.
	self stationarySetup.
	self dropEnabled: false.
	self color: aColor.