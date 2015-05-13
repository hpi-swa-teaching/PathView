synonym query
unsortedSynonymsOf: aString
	" returns synonyms for a search term "
	
	^ ((Thesaurus at: aString ifAbsent: [^ OrderedCollection new]) collect: [ :entry | entry synonyms ]) flatten