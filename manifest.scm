;; Lo que sigue es un "manifest" equivalente a la línea de comando que
;; introdujo. Puede almacenarlo dentro de un archivo que pudiese pasar a
;; cualquier comando 'guix' que acepte una opción '--manifest' (o -m).

(specifications->manifest
 (list "python"
       "python-psutil"
       "python-setproctitle"
       "python-pygobject"
       "python-setuptools"
       "gtk+"
       "glib"
       "gobject-introspection"
       "gdk-pixbuf"
       "libnotify"
       "mate-panel"
       "mate-desktop"
       "mate-settings-daemon"
       "marco"
       "dconf"
       "polkit"
       "picom"
       "gettext"
       "python-black"
       "python-pylint"
       "uv"
       "python-lsp-server"
       "python-lsp-black"))
