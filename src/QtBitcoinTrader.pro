#
# Basic stuff
#
TEMPLATE	= app
LANGUAGE        = C++
TARGET 		= QtBitcoinTrader
DEPENDPATH 	+= .
INCLUDEPATH 	+= .
QT		+= network multimedia
LIBS		+= -lcrypto
CONFIG		+= qt warn_off release

#
# Headers
#
HEADERS += aboutdialog.h \
           addrulewindow.h \
           feecalculator.h \
           julyaes256.h \
           julylightchanges.h \
           julyrsa.h \
	   julyhttp.h \
           julyspinboxfix.h \
           julytranslator.h \
           logthread.h \
           main.h \
           newpassworddialog.h \
           passworddialog.h \
           qtbitcointrader.h \
           ruleholder.h \
           exchange_mtgox.h \
           translationdialog.h \
           translationline.h \
           updaterdialog.h \
           audioplayer.h \
           exchange_btce.h
#
# Forms
#
FORMS += addrulewindow.ui \
         feecalculator.ui \
         newpassworddialog.ui \
         passworddialog.ui \
         qtbitcointrader.ui \
         translationabout.ui \
         translationdialog.ui \
         updaterdialog.ui
#
# Sources
#
SOURCES += aboutdialog.cpp \
           addrulewindow.cpp \
           feecalculator.cpp \
           julyaes256.cpp \
           julylightchanges.cpp \
           julyrsa.cpp \
	   julyhttp.cpp \
           julyspinboxfix.cpp \
           julytranslator.cpp \
           logthread.cpp \
           main.cpp \
           newpassworddialog.cpp \
           passworddialog.cpp \
           qtbitcointrader.cpp \
           ruleholder.cpp \
           exchange_mtgox.cpp \
           translationdialog.cpp \
           translationline.cpp \
           updaterdialog.cpp \
           audioplayer.cpp \
           exchange_btce.cpp
#
# Resources
# 
RESOURCES += QtResource.qrc

#
# Platform dependent stuff
#
unix:!macx {
UI_DIR = .ui
MOC_DIR = .moc
OBJECTS_DIR = .obj
isEmpty( PREFIX ) {
    PREFIX=/usr
}
isEmpty( DESKTOPDIR ) {
    DESKTOPDIR=/usr/share/applications
}
isEmpty( ICONDIR ) {
    ICONDIR=/usr/share/pixmaps
}

target.path = $${PREFIX}/bin

INSTALLS = target

desktop.path = $${DESKTOPDIR}

desktop.files = QtBitcoinTrader.desktop
INSTALLS += desktop

icon.path = $${ICONDIR}

icon.files = QtBitcoinTrader.png
INSTALLS += icon
}
################################
win32 {
RC_FILE = WinResource.rc
}
