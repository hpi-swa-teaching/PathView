event handling
adjustCurve
	| retval |
	retval := setPoint valueWithEnoughArguments: { desiredPoint }.
	targetPoint := getPoint value.
	^retval