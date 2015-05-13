instance creation
on: anSProject
	| instance |
	instance := self new.
	instance 
		coveredProject: anSProject.
	^instance