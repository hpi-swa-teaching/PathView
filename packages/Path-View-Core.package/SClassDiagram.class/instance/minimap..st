accessing
minimap: anSMiniMap
	"When we get our minimap, set our specific default values on it."
	
	super minimap: anSMiniMap.
	minimap scalingFactor: self class defaultMinimapScale.
	minimap hideByDefault: true. "Hide by default to address performance-issue."
	self initializeSmoothing