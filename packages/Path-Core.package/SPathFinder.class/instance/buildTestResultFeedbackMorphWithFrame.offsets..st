building-custom-morphs
buildTestResultFeedbackMorphWithFrame: aRectangle offsets: anotherRectangle
	| testResult |
	testResult := STestResultFeedbackMorph on: self selector: #rerunTest.
	
	self class setFrame: aRectangle offset: anotherRectangle in: testResult.
	self windowMorph addMorph: testResult.
	
	self testChooserModel addDependent: testResult.