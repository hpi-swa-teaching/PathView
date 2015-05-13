pathMap-hooks
getLegendColors
	| numberOfColors colors|
	numberOfColors := self colorMapping size + 1. "+ white color"
	colors := OrderedCollection new.
	colors add: (1 / numberOfColors) -> {Color white}.
	self colorMapping withIndexDo: [:each :index | 
		colors add: (index + 1 / numberOfColors) -> each value].
	^ colors