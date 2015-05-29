layout and labels
updateLabel
	
	| formatNumber |
	super updateLabel.
	formatNumber := self allEntriesCount.
	expanded
		ifFalse: [ | pinnedEntries hiddenEntries |
			pinnedEntries := self allEntries select: #needsToBeShown.
			hiddenEntries := formatNumber - pinnedEntries size.
			hiddenEntries = 0
				ifFalse: [ formatNumber := hiddenEntries asString, ' more' ] ].
	labelMorph contents: self labelString, ' (', formatNumber, ')'.