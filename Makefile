generate-fonts: generate-gw-bacon-title

install-fonts-for-mac-user: generate-fonts
	cp GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular.ttf ~/Library/Fonts/

generate-gw-bacon-title: \
	generate-gw-bacon-title-sfd \
	generate-gw-bacon-title-ttf

generate-gw-bacon-title-sfd:
	scripts/generate-sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular.sketch \
		GW\ Bacon\ Title/svg \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-base.sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd \
		GW\ Bacon\ Title/Version
	scripts/set-right-side-bearings \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd \
		200

generate-gw-bacon-title-ttf:
	scripts/generate-ttf \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular-generated.sfd \
		GW\ Bacon\ Title/GW\ Bacon\ Title\ Regular.ttf

generate-preview:
	pango-view \
		--text=EDINBURGH \
		--font=GW\ Bacon\ Title \
		--dpi=1400 \
		--output=gw-bacon-title.png

clean:
	rm -rf GW\ Bacon\ Title/svg
