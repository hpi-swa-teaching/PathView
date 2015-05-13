accessing
synonymSearchEnabled
	<preference: 'search synonyms'
		category: 'spell checker (DTR)'
		description: 'When using the search box synonyms of the entered word are considered as well.'
		type: #Boolean>
	^ SynonymSearchEnabled ifNil: [SynonymSearchEnabled := false]