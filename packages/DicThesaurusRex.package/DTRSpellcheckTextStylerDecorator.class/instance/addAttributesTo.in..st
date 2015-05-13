private
addAttributesTo: aCollectionOfSpellingErrors in: aText 
	aCollectionOfSpellingErrors
		keysAndValuesDo: [:aKey :aValue | aText
				addAttribute: TextEmphasis underlined
				from: aKey
				to: aKey + aValue size - 1;
				addAttribute: (TextColor color: Color orange)
				from: aKey
				to: aKey + aValue size - 1]