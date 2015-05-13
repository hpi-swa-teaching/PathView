private
adaptCasingOf: aNewWord to: selectedString
	selectedString first isUppercase
		ifTrue: [ 
			selectedString last isUppercase
				ifTrue: [ ^ aNewWord asUppercase ]
				ifFalse: [ ^ aNewWord withFirstCharacterUppercase ] ].
	^ aNewWord