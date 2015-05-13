instance creation
executionDisabled
	| instance |
	instance := self new.
	instance
		activeGroups: {};
		preconditionsActive: false;
		postconditionsActive: false;
		invariantsActive: false.
	^ instance