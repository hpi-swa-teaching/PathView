arrows
initializeArrowDictionary

	super initializeArrowDictionary.
	self allSubclasses do: [ :klass | 
		(klass class organization listAtCategoryNamed: 'arrows') do: [ :symbol |
			(symbol endsWith: #Arrow)
				ifTrue: [ ArrowGlyphs at: symbol put: (klass perform: symbol) ] ] ].