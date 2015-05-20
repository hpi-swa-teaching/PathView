*connectors-comparing
beginsWith2: prefix
        "Answer whether the receiver begins with the given prefix string.
        The comparison is NOT case-sensitive."


        self size < prefix size ifTrue: [^ false].
        self first asLowercase == prefix first asLowercase ifFalse: [^false].
        ^ (self findSubstring: prefix in: self startingAt: 1
                        matchTable: CaseInsensitiveOrder) = 1
