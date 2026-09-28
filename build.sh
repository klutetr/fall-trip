#!/bin/sh
# docs/index.html is index.html plus the document skeleton GitHub Pages needs.
# index.html itself stays skeleton-free so it can be pasted straight into a
# claude.ai artifact. Run this after every edit to index.html.
set -e
cd "$(dirname "$0")"
python3 - <<'PY'
import pathlib
src = pathlib.Path('index.html').read_text()
# the <title>/<link>/<style> block belongs in <head>, everything from the game
# shell onward belongs in <body>
head_end = src.index('\n<div id="shell">')
head, body = src[:head_end], src[head_end:]
skeleton = """<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover, user-scalable=no">
<meta name="theme-color" content="#0d0f1e">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="Fall Trip">
<meta property="og:title" content="Fall Trip">
<meta property="og:description" content="The itinerary, a stop at a time. Come find me at the end of the trail.">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3E%3Ctext y='14' font-size='14'%3E%F0%9F%8D%81%3C/text%3E%3C/svg%3E">
"""
out = skeleton + head + "\n</head>\n<body>" + body + "\n\n</body>\n</html>\n"
pathlib.Path('docs').mkdir(exist_ok=True)
pathlib.Path('docs/index.html').write_text(out)
print("docs/index.html built (%d lines)" % out.count("\n"))
PY
