import os

home = os.environ["HOME"]
start_page = "file://{home}/.config/qutebrowser/empty.html"

c.url.default_page = start_page
c.url.start_pages = start_page
c.content.javascript.clipboard = "access"

config.load_autoconfig(False)
