*connectors-connection
preferredConnectionSelector
	| pref |
	pref := self valueOfProperty: #preferredConnection ifAbsent: [ ^nil ].
	^pref first