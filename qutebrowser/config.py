import os

home = os.environ["HOME"]
c.url.default_page = "file://{}/.config/qutebrowser/empty.html".format(home)
c.url.start_pages = "file://{}/.config/qutebrowser/empty.html".format(home)
c.content.javascript.clipboard = "access"
config.load_autoconfig(False)
