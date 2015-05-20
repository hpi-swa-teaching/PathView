*connectors-labels
deleteAllLabels
	"delete all labels from me and my submorphs"
	self allMorphsDo: [ :ea | ea deleteMorphs: ea labels  ].