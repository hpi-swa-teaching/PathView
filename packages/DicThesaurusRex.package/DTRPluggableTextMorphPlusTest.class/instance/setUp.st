as yet unclassified
setUp
	| decorator |
	sut := MorphicToolBuilder new buildPluggableCodePane: (PluggableCodePaneSpec new model: DTRCorrectionWindow ).
	decorator := DTRPluggableTextMorphPlusTestDecorator new
		original: sut;
		yourself.
	sut := decorator.
	unknownWord := 'strangewordnotindictionary'.
	sut setText: 'thisIsANewTestMethdText
	^ self "', unknownWord,'"' .
	unknownWordPosition := sut text contents string findString: unknownWord