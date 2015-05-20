distribution
saveChangeSets
	"
	ConnectorsBasicDistroInfo saveChangeSets
	"
	[ ChangeSet defaultChangeSetDirectory: self changeSetDirectoryName.
"	Preferences setPreference: #changeSetVersionNumbers toValue: false."
	self changeSets do: [ :csName |
		(ChangeSorter changeSetNamed: csName) ifNotNilDo: [ :cs | cs fileOut ] ]]
	ensure: [ ChangeSet defaultChangeSetDirectory: 'changeSets'.
			"Preferences setPreference: #changeSetVersionNumbers toValue: true." ].