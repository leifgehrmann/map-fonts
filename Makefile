clean:
	rm -rf GW\ Bacon\ Title/svg

fonts: gw-bacon-title gw-bacon-title-ttf

gw-bacon-title:
	./generate-sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular.sketch \
		GW\ Bacon\ Title/svg \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-base.sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd

gw-bacon-title-ttf:
	./generate-ttf \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular.ttf
