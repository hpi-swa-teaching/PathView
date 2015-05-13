tests
testStyle
	"Tests DTRSpellcheckTextStylerDecorator>>#privateStyle:"
	| text runs |
	text := ('methodName', String cr, '^ selff') asText.
	sut style: text.
	runs := stubView styledText runs.
	self assert: ((runs at: 14) 
		anySatisfy: [:attribute | (attribute isKindOf: TextEmphasis)
			and: [attribute emphasisCode = TextEmphasis underlined emphasisCode]]).
	self assert: ((runs at: 14) 
		anySatisfy: [:attribute | attribute isKindOf: TextColor])