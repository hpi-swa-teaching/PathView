as yet unclassified
testOpenPreferences

	| prefBrowser prefBrowserMorph |

	SClassDiagram new openPreferences.

	prefBrowserMorph := [World submorphs detect: [ :morph | morph class name = #PreferenceBrowserMorph]]
		on: NotFound
		do: [:exc | Transcript show: exc messageText; cr. ^nil].
	prefBrowser := prefBrowserMorph model.

	self assert: [ prefBrowserMorph isNil not ].
	self assert: [ prefBrowser selectedCategory = #'Path View' ].
	
	prefBrowserMorph closeBoxHit.