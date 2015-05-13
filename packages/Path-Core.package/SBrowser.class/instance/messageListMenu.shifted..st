start tools
messageListMenu: aMenu shifted: shifted 
	"Answer the message-list menu"
	self 
		menuHook: aMenu 
		named: #messageListMenu 
		shifted: shifted.
	Preferences useOnlyServicesInMenu ifTrue:[^aMenu].
	shifted ifTrue: [^ self shiftedMessageListMenu: aMenu].
	aMenu addList: #(
			('what to show...'			offerWhatToShowMenu)
			('toggle break on entry'		toggleBreakOnEntry)
			-
			('browse full (b)' 			browseMethodFull)
			('browse hierarchy (h)'			classHierarchy)
			('browse method (O)'			openSingleMessageBrowser)
			('browse protocol (p)'			browseFullProtocol)
			('browse path' 			browsePath)
			-
			('fileOut'					fileOutMessage)
			('printOut'					printOutMessage)
			('copy selector (c)'			copySelector)
			('copy reference (C)'		copyReference)
			-
			('senders of... (n)'			browseSendersOfMessages)
			('implementors of... (m)'		browseMessages)
			('inheritance (i)'			methodHierarchy)
			('versions (v)'				browseVersions)
			-
			('references... (r)'			browseVariableReferences)
			('assignments... (a)'			browseVariableAssignments)
			('explore state...'			exploreMethodStateFromTests)
			('class refs (N)'			browseClassRefs)
			-
			('remove method (x)'			removeMessage)
			('explore method'			exploreMethod)
			('inspect method'			inspectMethod)
			-
			('check spelling'		spellCheckMethod)
			-
			('more...'				shiftedYellowButtonActivity)).
	^ aMenu