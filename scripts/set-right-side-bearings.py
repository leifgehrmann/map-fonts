import sys
import fontforge


sfd_filename = sys.argv[1]
right_side_bearing = float(sys.argv[2])

font = fontforge.open(sfd_filename)
for glyph in font.glyphs():
    glyph.right_side_bearing = right_side_bearing
font.save(sfd_filename)
