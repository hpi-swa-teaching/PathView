start tools
browseWithPathView
	| views labels lines open projectsPathViews |
	self selectedClass ifNil: [^ self].  
	views := OrderedCollection newFrom: {#new}.
	labels := OrderedCollection newFrom: {'New ...' translated}.
	lines := OrderedCollection newFrom: #(1).
	projectsPathViews := ((self selectedClass theMetaClass organization
								listAtCategoryNamed: SClassDiagramMorph diagramCodeCategory)
								collect: #asString) collect: #allButLast.
	projectsPathViews ifNotEmpty: [
		views addAll: (projectsPathViews collect: [:name |
						(SProject allProjects detect: [:p | p views includes: name]) -> name]).
		labels addAll: (projectsPathViews collect: [:name |
						(SProject allProjects detect: [:p | p views includes: name]) projectName, ' - ', name])].
	views ifEmpty: [^ self createPathView].
	open := SMultipleChoiceRequest
				prompt: 'Open view...'
				labels: labels
				values: views
				lines: lines.
	open ifNotNil: [
		open = #new ifTrue: [^ self createPathView].
		SProject setCurrentProject: open key.
		SPathView openSaved: open value].