building
createMenuEntries
	self menuEntries ifEmpty: [^ #()].
	self menuEntries first isCollection
		ifTrue: [	"Collection with args for action selector"
			^ self menuEntries collect: [:each | 
								(SDropDownActionButtonMorph 
									on: self actionModel 
									selector: each second 
									args: each third 
									name: each first) 
										extent: self extent;
										dropDownMorph: self]]
		ifFalse: ["Associations"
			^ self menuEntries collect: [:each | 
				(SDropDownActionButtonMorph 
					on: self actionModel selector: each value name: each key) 
					extent: self extent;
					dropDownMorph: self]].