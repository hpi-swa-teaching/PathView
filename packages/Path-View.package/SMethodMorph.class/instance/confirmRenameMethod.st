reengineering
confirmRenameMethod

	| answer sends count |
	sends := SystemNavigation default allCallsOn: methodName.
	
	(count := sends size) = 0
		ifTrue: [^1 "no senders -- let renaming happen without warning"].    
	(count = 1 and: [sends first actualClass == klass 
				and: [sends first methodSymbol == methodName ]])
		ifTrue: [^ 1 "only sender is itself"].

	answer := UIManager default 
			chooseFrom: #(	'Rename, and all its senders'
							'Rename, and only rename message sends within package'							
					            'Rename, but without renaming message sends'
							'Rename, then browse senders'
							'Don''t rename, but show me those senders'
							'Forget it -- do nothing -- sorry I asked')
			title: 'This message has ', count printString, 'senders'.  

	answer = 5 ifTrue: [
		SystemNavigation default
			browseMessageList: sends
			name: 'Senders of ' , methodName ].

	answer = 0 ifTrue: [answer := 5 "no answer treated as cancel"].
	^answer min: 5.