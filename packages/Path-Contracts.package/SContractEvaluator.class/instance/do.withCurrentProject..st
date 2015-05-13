public api
do: aBlock withCurrentProject: aProjectName
	| previousCurrentProject result |
	[previousCurrentProject := SProject current.
	SProject setCurrent: aProjectName.
	result := aBlock value]
		ensure: [SProject setCurrentProject: previousCurrentProject].
	^ result