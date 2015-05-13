initialize-release
freeHandle
	handle ifNil: [^ self].
	handle isNull ifFalse: [self apiDestroy: handle].
	handle := nil