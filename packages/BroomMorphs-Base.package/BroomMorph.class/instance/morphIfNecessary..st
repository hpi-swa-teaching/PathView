stepping and presenter
morphIfNecessary: yellowButtonPressed
	| pt delta threshold cls center |
	center := yellowButtonPressed | centered.
	pt := self center.
	threshold := self width / 2.
	delta := pt - start.
	cls := delta x > threshold
				ifTrue: [center
						ifTrue: [CenterBroomMorphRight]
						ifFalse: [BroomMorphRight]]
				ifFalse: [delta x < threshold negated
						ifTrue: [center
								ifTrue: [CenterBroomMorphLeft]
								ifFalse: [BroomMorphLeft]]
						ifFalse: [delta y > threshold
								ifTrue: [center
										ifTrue: [CenterBroomMorphDown]
										ifFalse: [BroomMorphDown]]
								ifFalse: [delta y < threshold negated
										ifTrue: [center
												ifTrue: [CenterBroomMorphUp]
												ifFalse: [BroomMorphUp]]]]].
	cls
		ifNotNil: [self
				become: (self as: cls).
			self reset.
			unmoved addAll: self affectedMorphs]