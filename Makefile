fonts: gw-bacon-title gw-bacon-title-ttf

gw-bacon-title:
	scripts/generate-sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular.sketch \
		GW\ Bacon\ Title/svg \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-base.sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd \
		GW\ Bacon\ Title/Version
	scripts/set-right-side-bearings \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd \
		200

gw-bacon-title-ttf:
	scripts/generate-ttf \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular.ttf

clean:
	rm -rf GW\ Bacon\ Title/svg
