introspection
changesText
	^'
"Change Set:		Connectors-nk
Date:				6 February 2003
Author:				Ned Konz <ned@bike-nomad.com>
License:				Squeak''s or MIT

3/29/03:
Added a number of fixes that came from my work with the Tablet PC.
Added graph traversal and simple layout behavior.
Improved resizing behavior and event handling.

2/6/03:
added fix for self-connections from Hernan Pablo Tylim:
This change set fix a problem when you connect both ends of a connector in the same shape and this shape is not in the world (shape pasteUpMorph ~~ shape currentWorld).

12/12/02:
added open connectors project to World menu
fixed bug with centering default text style when Accufonts loaded
suppressed re-creation of default flaps

12/4/02:
added buttonBar labeling; changed category names.
added SAR creation to ConnectorsInfo class.
Made install clean up empty class and method categories.

11/15:
changed class category names

7/1 - 10/29:

Added new Project subclass with its own World type.

Added custom NCPartsBin class for flaps

Several bug fixes.

6/22 - 6/30:

Changed to using (new) CircleMorph for round end decorations.

Made NCSchematicConnectorMorph 

Fixed up AP adjuster quite a bit.

Made end decorations scale with line width.

Made connectors respect being locked.

Added NCNoteMorph.

Made pre-defined line-end shapes look much nicer.

Changed pre-made Connectors from using PolygonMorph arrows to attached shapes.

Made transition Connector in FSM flap and toolbar start wiring with a label.

Made Connector labels delete when Connector is deleted.

Moved notification into addedOrRemovedSubmorph:

Fixed problem with unattached Connectors re-sizing when grabbed/dropped

Fixed problem with line attachment point in Connectors dropped onto MakerButtons

Added ''connect to nearest orthogonal point''

Fixed minor bugs

Removed obsolete methods in Connector that took Blocks

6/22: added some utility methods

6/20: (1.02) (085) Fixed Attachment Point Adjuster and gridding. Added ''Connect to nearest orthogonal point'' to connector end menu.

6/19: Version 1.0 hits the streets...

6/18: Made end attachments scale with line width.

6/15: Added NCSketchMorph, attacked more coordinate problems. Moved ObjectsTool pages around; reorganized demo flaps. Fixed slide-to-trash problem.

6/14: Fixed problems with connectors in translated coordinate systems. Added connection feedback.

4/19: changed category names for 3.3 compatibility. Fixed loading into old images that had Connectors loaded already. Reduced memory consumed by Constraints.

4/18: added ortho snap, new Sketch that aligns itself on grid lines, more work on gridding.

4/14: got transforms working OK for selection
Worked on gridding (for schematic editor)
Got SmartLabels working; made them the default (though there is a Preference)

4/10: put back bounds fiddling for another look at the problem.

This is a version of my Connectors that use a MessageSend instead of a BlockContext for pluggability. This (I hope) will serialize better; I''d like to use these for collaborative drawings on Swikis.

This change set will convert existing Connectors as needed. It may miss some; I''d like to hear about it if it does."
'

