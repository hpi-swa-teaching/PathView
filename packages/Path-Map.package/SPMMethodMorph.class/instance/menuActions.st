menu actions
menuActions
	| menu |
	menu := self defaultMenu.
	self isSourceCodeEntityATestMethod
		ifTrue: [menu 
					add: {'Rerun Test'. 
						   UiFugueIcons arrowCircle045LeftIcon. 
						   #rerunTest.
						   'Rerun test case'} 
					afterIndex: 1].
	self hasAdditionalInformation 
		ifTrue: [menu add: {'Additional Information'. 
							UiFugueIcons informationIcon. 
							#showAdditionalInformation.
							'Show additional information'}
	  				   afterIndex: 1].	
	self hasContractViolations
		ifTrue: [menu 
					add: {'Show contract violations'. 
						   UiFugueIcons exclamationFrameIcon. 
						    #showContractViolations.
						   'Show violated contracts in detail'} 
					afterIndex: 2].								
	^ menu