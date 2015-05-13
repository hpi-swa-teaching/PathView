scrolling
hUnadjustedScrollRange
"Return the width of the widest item in the list"

	| max count |

	max := 0.
	count := 0.
	scroller submorphsDo: [ :each | | width right |
		width := each isCodeExplorerIndentingListItemMorph
			ifTrue: [each requiredWidth]
			ifFalse: [each font widthOfStringOrText: each contents].
		right := (each toggleRectangle right + width + 10).
		max := max max: right.
		
"NOTE: need to optimize this method by caching list item morph widths (can init that cache most efficiently in the #list: method before the item widths are reset to 9999).  For now, just punt on really long lists"
		((count := count + 1) > 200) ifTrue:[ ^max * 3].
	].

	^max