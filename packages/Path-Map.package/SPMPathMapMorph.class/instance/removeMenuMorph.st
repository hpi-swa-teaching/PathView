menu
removeMenuMorph
	self menuMorph ifNotNil: [
		self removeMorph: self menuMorph.
		self menuMorph abandon.
		self menuMorph: nil].