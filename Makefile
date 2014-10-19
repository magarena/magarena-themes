themes:
	for i in *_theme; do make $$i.zip; done

%_theme.zip: %_theme
	zip -j $@ $^/*

%.upload:
	for i in *.zip; do github-release upload -u magarena -r magarena-themes --name $$i --tag $* --file $$i; done
