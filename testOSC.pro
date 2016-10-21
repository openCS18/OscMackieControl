#-------------------------------------------------
#
# Project created by QtCreator 2016-10-05T13:50:52
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = testOSC
TEMPLATE = app


SOURCES += main.cpp\
        Widget.cpp \
    RtMidi.cpp \
    MidiIO.cpp \
    OscIO.cpp \
    Translator.cpp

HEADERS  += Widget.h \
    midiNote.h \
    RtMidi.h \
    MidiIO.h \
    OscIO.h \
    Translator.h

FORMS    += Widget.ui

win32: LIBS += -L$$PWD/lib/win32 -losc
win32: LIBS += -lwinmm

osx: LIBS += -L$$PWD/lib/osx -losc
osx: LIBS += -framework CoreMIDI
osx: LIBS += -framework CoreAudio
osx: LIBS += -framework CoreFoundation
INCLUDEPATH += $$PWD/osc/.
DEPENDPATH += $$PWD/osc/.

INCLUDEPATH += $$PWD/tools/.
DEPENDPATH += $$PWD/tools/.
