updating
newProjectSelected: aProject
	self project: aProject;
		 changed: #projectStatisticText.
	aProject addDependent: self.