accessing
codePane
	"Answer the value of codePane"

	^ codePane ifNil: [codePane := SCodePaneMorph on: self callNode color: self getBackgroundColor].