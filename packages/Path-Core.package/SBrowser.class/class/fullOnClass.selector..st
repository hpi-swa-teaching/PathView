instance creation
fullOnClass: aClass selector: aSelector
	"Open a new full browser set to class."
	| browser |
	browser := self new.
	browser setClass: aClass selector: aSelector.
	^ self 
		openBrowserView: (browser openEditString: nil)
		label: browser labelString