running
connect: m1 to: m2 
	"the direction is because I expect children to point at thier parents--not 
	vice-versa "
	| conn |
	conn := NCAAConnectorMorph fromMorph: m2 toMorph: m1.
	conn makeForwardArrow.
	mainWindowMorph addMorph: conn