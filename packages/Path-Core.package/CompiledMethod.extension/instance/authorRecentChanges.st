*Path-Core
authorRecentChanges
	<description: 'Frequency and recency of changes'>
	| uniqueChangesPerDay creatorOfMethod highscore bonusForCreator authors |
	self flag: #mpe. "ToDo: Needs refactoring"
	self changes size = 1
		ifTrue: [^ self authorFirstChange].
	uniqueChangesPerDay := (self changes 
						collect: [:each | {each first. each second asDate}]) asSet.
	uniqueChangesPerDay := uniqueChangesPerDay 
								asSortedCollection: [:a :b | a second > b second].
	creatorOfMethod := uniqueChangesPerDay last.
	highscore := uniqueChangesPerDay collect: [:each | 
							{each first. (each second - creatorOfMethod second) days}].
	bonusForCreator := (highscore at: highscore size) second. 
	highscore at: highscore size put: {highscore last first. bonusForCreator}.
	authors := (highscore collect: [:each | each first]) asSet.
	highscore := (authors collect: [:author | 
					{author. 
					(highscore 
						select: [:each | each first = author] 
						thenCollect: [:each | each second]) sum}]).
	highscore := highscore asSortedCollection: [:a :b | a second > b second].
	^ highscore first first