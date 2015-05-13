menu actions
debugMethod
	| tests choice |
	tests := self allCoveringTests asSortedCollection: [:a :b | 
										a asMethodReference <= b asMethodReference].
	tests ifEmpty: [^ self inform: 'No covering test found.'].
	tests size = 1 ifTrue: [^ self debugMethodFromTest: tests first].
	choice := self chooseTestCaseFrom: tests.
	choice ifNotNil: [self debugMethodFromTest: choice].