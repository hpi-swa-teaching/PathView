arrow forms
umlArrow
	| a |
	a := { 0.0@0.0 . 0.0@0.0 . -0.5@0.0 . 
	-0.5@0.0 . -0.5@0.0 . 0.0@-1.0 . 
	0.0@-1.0 . 0.0@-1.0 . 0.5@0.0 . 
	0.5@0.0 . 0.5@0.0 . 0.0@0.0 }.
^(NCLineArrowGlyph withContours: (
(Array new: 1)
	at: 1 put: a; 
	yourself
"clicks 0.0@0.0"
)) offset: 0@1.0;
defaultScale: 2.5;
yourself