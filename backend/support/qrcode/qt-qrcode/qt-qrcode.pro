lessThan(QT_MAJOR_VERSION, 5) {
    error("Cannot build with Qt version $${QT_VERSION}, this project requires at least Qt 5")
}

TEMPLATE = subdirs

DEFINES +=

SUBDIRS += lib

OTHER_FILES += \
    defaults.pri
