*Path-Core
changes
	| versions subStrings |
	versions := self versions.
	versions ifNil: [^ nil].
	^ versions changeList collect: [:each | 
		each stamp
			ifEmpty: [{'Unknown'. TimeStamp now}]
			ifNotEmpty: [subStrings := (each stamp subStrings: String space).
		{subStrings first. ((subStrings second, ' ', subStrings third) asTimeStamp)}]]