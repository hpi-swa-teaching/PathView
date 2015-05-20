accessing
color: aColor
	"Make me work with the properties panel"
	label ifNil: [ super color: aColor ]
		ifNotNil: [ label color: aColor ]