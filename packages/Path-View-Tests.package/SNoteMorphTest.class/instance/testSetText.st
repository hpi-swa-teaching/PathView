as yet unclassified
testSetText
	| text textMorphText | 
	text := 'test text'.
	instance setText: text.
	textMorphText := instance textMorph getText.
	self assert: [text = textMorphText]