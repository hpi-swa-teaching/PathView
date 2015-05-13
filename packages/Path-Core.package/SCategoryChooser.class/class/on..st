instance creation
on: aProject
	| tool |
	tool := self open.
	tool
		project: aProject;
		setCategoryListFromNames.
	^ tool
