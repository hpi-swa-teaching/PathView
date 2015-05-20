scripting
wrappedAuthoringPrototype
	"NCDisplayTextMorph wrappedAuthoringPrototype openInHand"
	^self authoringPrototype
		wrapFlag: false;
		refreshParagraph;
		wrapFlag: true;
		yourself
