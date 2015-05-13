toolbuilder
buildMessageListWith: builder
	| listSpec |
	listSpec := super buildMessageListWith: builder.
	listSpec icon: #iconForMessage:.
	^listSpec
