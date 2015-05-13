spec commands
informAuthorRanking: aCollection
	| fullValue msg |
	aCollection ifEmpty: [^ self].
	fullValue := aCollection inject: 0 into: [:sum :each | sum + each value].
	msg := ''.
	aCollection 
		do: [:each | msg := msg, each key, Character space, $(, ((each value / fullValue) * 100) asInteger asString, '%)']
		separatedBy: [msg := msg, Character cr].
	UserDialogBoxMorph inform: msg title: ' Developer Ranking '.