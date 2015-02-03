TEMPLATE = app

QT += qml quick

SOURCES += main.cpp \
    TodoCpp.cpp

RESOURCES += qml.qrc \
    assets.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \

HEADERS += \
    TodoCpp.h
