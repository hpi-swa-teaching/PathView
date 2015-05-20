running
setUp
	| b |
	mainWindowMorph := PasteUpMorph new.
	mainWindowMorph color: Color veryVeryLightGray;
		 position: 10 @ 10;
		 extent: 800 @ 800;
		 borderWidth: 2;
		 borderColor: Color black.
	b := SimpleButtonMorph new.
	b color: Color transparent;
		 borderColor: Color red;
		 position: 13 @ 777;
		 label: 'delete';
		 target: mainWindowMorph;
		 actionSelector: #delete;
		 setBalloonText: 'delete this morph'.
	mainWindowMorph addMorphBack: b.
	mainWindowMorph openInWorld
