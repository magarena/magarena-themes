themes:
	for i in *_theme; do make $$i.zip; done

%_theme.zip: %_theme
	 zip -j $@ $^/*

