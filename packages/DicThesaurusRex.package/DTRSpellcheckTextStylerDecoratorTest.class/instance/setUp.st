tests
setUp
	stubView := DTRSpellcheckTestStub new.
	stubParentStyler := DTRSpellcheckTestStylerStub new.
	stubParentStyler view: stubView.
	sut := DTRSpellcheckTextStylerDecorator for: stubParentStyler