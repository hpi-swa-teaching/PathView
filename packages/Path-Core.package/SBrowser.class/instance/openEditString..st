initialize-release
openEditString: aString
        "Create a pluggable version of all the views for a Browser, including views and controllers."
	"Example: 
		Browser fullOnClass: Browser.
	"
	| builder max |
	builder := ToolBuilder default.
	max := self wantsOptionalButtons ifTrue:[0.42] ifFalse:[0.5].
	^self buildWindowWith: builder specs: {
		(0@0 corner: 0.2@max) -> [self buildSystemCategoryListWith: builder].
		(0.2@0 corner: 0.4@(max-0.08)) -> [self buildClassListWith: builder].
		(0.2@(max-0.08) corner: 0.4@max) -> [self buildSwitchesWith: builder].
		(0.4@0 corner: 0.6@max) -> [self buildMessageCategoryListWith: builder].
		(0.6@0 corner: 0.8@(max-0.08)) -> [self buildMessageListWith: builder].
		(0.6@(max-0.08) corner: 0.8@max) -> [self buildContractSwitchesWith: builder].
		(0.8@0 corner: 1.0@max) -> [self buildTestCoverageListWith: builder].
"		(0.8@0.5 corner: 1.0@1.0) -> [self buildConcernTreeWith: builder]."
		(0@max corner: 1@0.5) -> [self buildOptionalButtonsWith: builder].
		(0@0.5 corner: 1.0@1) -> [self buildCodePaneWith: builder].
	}