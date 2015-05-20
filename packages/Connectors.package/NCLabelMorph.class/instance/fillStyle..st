visual properties
fillStyle: aColor
	"Make me work with the properties panel"
	label ifNil: [ super fillStyle: aColor ]
		ifNotNil: [ label fillStyle: aColor ]