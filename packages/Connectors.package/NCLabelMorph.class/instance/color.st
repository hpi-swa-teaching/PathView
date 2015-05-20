accessing
color
	"Make me work with the properties panel"
	^label ifNil: [ super color ]
		ifNotNil: [ label color ]