build:
	./scripts/build.sh

test:
	./scripts/build.sh
	diff public/bookmark.json bookmark.expected.json
