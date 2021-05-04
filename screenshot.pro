QT += widgets
requires(qtConfig(filedialog))

HEADERS             = screenshot.h
SOURCES             = main.cpp \
                      screenshot.cpp

# install
TARGET = qshot
installPrefix = /usr
target.path = $${installPrefix}/bin
desktopfile.files = $${TARGET}.desktop
desktopfile.path = /usr/share/applications/hildon
icon.files = $${TARGET}64.png
icon.path = /usr/share/icons/hicolor/64x64/apps
INSTALLS += icon \
    desktopfile \
    target