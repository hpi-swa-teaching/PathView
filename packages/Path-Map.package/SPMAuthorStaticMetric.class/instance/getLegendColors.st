visualization
getLegendColors
	| colors |
	self authors 
		ifNil: [^ {1.0 -> {Color white}}]
		ifNotNil: [colors := OrderedCollection new.
				self authors withIndexDo: [:each :index | 
					colors add: (index / self authors size) -> {self colorMapping at: each}].
				^ colors]