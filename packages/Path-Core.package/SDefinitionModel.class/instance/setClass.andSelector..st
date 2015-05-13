accessing
setClass: aClass andSelector: aSelector

	^ self 
		defClass: aClass;
		defSelector: aSelector;
		changed: #contents;
		yourself