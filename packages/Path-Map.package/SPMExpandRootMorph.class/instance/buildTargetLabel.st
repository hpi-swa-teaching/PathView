building
buildTargetLabel
	"Center label on top of frame"
	self labelMorph mouseEnterDeletion: false.
	self labelMorph extent: (self labelMorph width - (2 * self class borderWidth)) @ (self labelMorph height).
	self addMorph: self labelMorph.
	self labelMorph position: (self position x - ((self labelMorph width - self width) / 2)) @
								(self position y + self class borderWidth).
