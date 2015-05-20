private
dispatchEvent: anEvent selector: selector
	^self perform: selector withArguments: { anEvent }.