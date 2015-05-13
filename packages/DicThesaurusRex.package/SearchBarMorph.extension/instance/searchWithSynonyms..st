*DicThesaurusRex-override
searchWithSynonyms: input
	| inputString referenceList synonymList |
	inputString := input.
	referenceList := OrderedCollection new. 
	synonymList := DTRThesaurus synonymsOf: input.
	synonymList addFirst: input.
	synonymList
		do: [:word | (SystemNavigation new allImplementorsOf: word asSymbol)
				ifNotEmpty: [:list | 
					word = input
						ifTrue: [inputString := inputString , '(' , list size , ')']
						ifFalse: [inputString := inputString , ', ' , word , '(' , list size , ')'].
					referenceList addLast: list]].
	referenceList
		ifNotEmpty: [^ SystemNavigation new browseMessageList: referenceList flatten name: 'Implementors of ' , inputString].
	synonymList
		do: [:word | word first isUppercase
			ifTrue: [(Utilities classFromPattern: word withCaption: '')
				ifNotNil: [:aClass | ^ ToolSet browse: aClass selector: nil]]].
	input first isUppercase
		ifFalse: [^ ToolSet default browseMessageNames: input].
	^nil