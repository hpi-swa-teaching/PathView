initialization
createMenu
	| buttons button pos |
	buttons := self targetMorph menuActions 
					inject: OrderedCollection new 
					into: [:col :each |
						button := col 
							add: (SActionButtonIconMorph 
									on: self targetMorph 
									selector: each third 
									icon: each second).
						each size > 3
							ifTrue: [	button 
										setBalloonText: each fourth 
										maxLineLength: 50].			
							col].
	pos := 0.
	buttons do: [:each |
		self addMorph: each.
		each position: ((self position x + pos + self defaultBorderWidth) @ 
							(self position y + self defaultBorderWidth)).
		pos := pos + each width].
	self extent: (pos + (2*self defaultBorderWidth)) @ 
					(self submorphs first height + (2*self defaultBorderWidth)).
