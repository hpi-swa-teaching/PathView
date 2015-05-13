building
buildProjectListOn: aBuilder frame: aRectangle
	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec
		model: self;
		name: #projectList;
		list: #allRegisteredProjects;
		getSelected: #selectedProject;
		setSelected: #selectedProject:;
		frame: aRectangle.
	self windowSpec children add: listSpec.