start tools
browsePath
	| tests |
	tests := self coveredTestsSortedFor: self selectedMethodReference.
	tests 
		ifEmpty: [self inform: 'The method is not covered by an entry point.', 
							  String cr, 
							  'Run PathMap first.']
		ifNotEmpty:[
			(self chooseTest: tests asOrderedCollection)
				ifNotNil: [:choice | self openPathFinderOn: choice asMethodReference]].	