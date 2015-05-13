instance creation
executionEnabled
	| instance |
	instance := self new.
	instance 
		activeGroups: SProject allProjectNames;
		preconditionsActive: true;
		postconditionsActive: true;
		invariantsActive: true.
	^ instance