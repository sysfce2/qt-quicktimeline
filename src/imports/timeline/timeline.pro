TARGET = qtquicktimelineplugin
TARGETPATH = QtQuick/Timeline
IMPORT_VERSION = 1.0

QT += qml quick core-private

QT_PRIVATE += core-private gui-private qml-private quick-private

DEFINES += QT_NO_CAST_TO_ASCII QT_NO_CAST_FROM_ASCII

include(timeline.pri)

DISTFILES += \
    qmldir

SOURCES += \
    $$PWD/qtquicktimelineplugin.cpp

RESOURCES += \
    $$PWD/qtquicktimelineplugin.qrc

!static: qtConfig(quick-designer): include(designer/designer.pri)

CONFIG += no_cxx_module
load(qml_plugin)
