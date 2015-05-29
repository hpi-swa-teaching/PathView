accessing
highlightedColor: aColor
	"If this color is set, the method-entry will always have this color, disregarding whether it is pinned or not.
	Note that this is called highlightedColor, not highlightColor, as highlightColor is already defined in Morph.
	Set this to nil to enable default coloring."
	
	highlightedColor := aColor.
	self color: aColor.