spelling
spell: aString
	| words |
	words := DTRCamelCaseParser new
				readString: aString;
				words.
	^ words allSatisfy: [:each | (self apiSpell: handle word: each) ~= 0]