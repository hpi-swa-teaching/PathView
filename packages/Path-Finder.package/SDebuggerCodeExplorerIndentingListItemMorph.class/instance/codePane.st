accessing
codePane
	"Answer the value of codePane"
	| suspiciousColor |
	^ codePane ifNil: [
		self icon ifNotNil: [suspiciousColor := self icon colorAt: 1@1].
		codePane := SDebuggerCodePaneMorph 
										on: self callNode 
										color: self getBackgroundColor
										suspiciousColor: suspiciousColor].