menu actions
pathfinderMethod
	| tests choice |
	tests := self allCoveringTests asSortedCollection: [:a :b | 
										a asMethodReference <= b asMethodReference].
	tests ifEmpty: [^ self inform: 'No covering test found.'].
	tests size = 1 
		ifTrue: [^ self openPathFinderToolOn: tests first asMethodReference].
	choice := self chooseTestCaseFrom: tests.
	choice 	ifNotNil: [^ self openPathFinderToolOn: choice asMethodReference].
					
