

build:
	jorge build
	rm -rf docs/*
	mv target/* docs/
	@find . -name "index.html" -type f | while read -r file; do \
		sed -i '' 's|<p class="footer center-block">powered by <a href=https://jorge.olano.dev>jorge</a>||g' "$$file"; \
	done