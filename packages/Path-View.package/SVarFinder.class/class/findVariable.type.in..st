instance creation
findVariable: aString type: aType in: aClassMorph
	| instance |
	instance := self new
		varName: aString;
		type: aType;
		yourself.
	[instance visit: aClassMorph. ^ nil]
		on: SVisitorNotification
		do: [^ instance foundMorph]