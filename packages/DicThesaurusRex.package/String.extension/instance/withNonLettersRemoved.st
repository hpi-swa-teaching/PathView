*DicThesaurusRex
withNonLettersRemoved
	^ self
		select: [:char | char isLetter]