visualization
createColorMapping
	"self createColorMapping"
	| subClasses |
	ColorPropertiesMapping := OrderedCollection new.
	ColorPropertiesMapping add: SDefaultRangeProperties -> {Color lightGray}.
	subClasses := SDefaultRangeProperties allSubclasses.
	subClasses withIndexDo: [:each :index | 
		ColorPropertiesMapping 
			add: each -> {(Color 
							h: 360 * ((index) / subClasses size) 
							s: 0.35 
							v: 1.0)}].
	^ ColorPropertiesMapping