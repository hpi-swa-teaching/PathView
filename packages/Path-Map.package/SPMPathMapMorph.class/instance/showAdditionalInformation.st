menu actions
showAdditionalInformation

	self additionalInfo isString
		ifTrue: [UserDialogBoxMorph 
					inform: self additionalInfo withBlanksTrimmed 
					title: 'Additional Information'.]
		ifFalse: [self additionalInfo explore]
