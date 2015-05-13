tests
testPrivateStyle
	"Tests DTRSpellcheckTextStylerDecorator>>#privateStyle:"
	| runs text |
	text := ('methodName', String cr, '^ selff') asText.
	sut privateStyle: text.
	runs := text runs.
	self assert: ((runs at: 14) 
		anySatisfy: [:attribute | (attribute isKindOf: TextEmphasis)
			and: [attribute emphasisCode = TextEmphasis underlined emphasisCode]]).
	self assert: ((runs at: 14) 
		anySatisfy: [:attribute | attribute isKindOf: TextColor])