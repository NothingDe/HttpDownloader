#-------------------------------------------------
#
# Project created by QtCreator 2020-01-13T22:28:08
#
#-------------------------------------------------

QT       += widgets xml

TARGET = CustomControls
TEMPLATE = lib

DEFINES += CUSTOMCONTROLS_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

DESTDIR += $$PWD/../lib/CustomControls
MOC_DIR += $$PWD/../CustomControls/temp
OBJECTS_DIR += $$PWD/../CustomControls/temp
CONFIG += c++11

LIBS += -L$$PWD/../lib/CustomWidgets -lCustomWidgets
INCLUDEPATH += $$PWD/../CustomWidgets

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    CustomCombineControl/UICustomColorControl.cpp \
    CustomCombineControl/UICustomCombineControlBase.cpp \
    CustomCombineControl/UICustomDoubleControl.cpp \
    CustomCombineControl/UICustomFontComboBoxControl.cpp \
    CustomCombineControl/UICustomGroupControl.cpp \
    CustomCombineControl/UICustomIntControl.cpp \
    CustomCombineControl/UICustomLineEditControl.cpp \
    CustomCombineControl/UICustomOrientationControl.cpp \
    CustomCombineControl/UICustomPostionControl.cpp \
    CustomCombineControl/UICustomSwitchControl.cpp \
    CustomCombineControl/UICustomTextEditTagControl.cpp \
    UICustomColorControl/UICustomColorCircle.cpp \
    UICustomColorControl/UICustomColorSlider.cpp \
    UICustomColorControl/UICustomColorSliderItem.cpp \
    UICustomColorControl/UICustomColorWidget.cpp \
    UICustomColorControl/UICustomCustomColorOperator.cpp \
    UICustomColorControl/UICustonColorDialog.cpp \
    UICustomSingleControl/UICustomColorViewWidget.cpp \
    UICustomSingleControl/UICustomDoubleSpinBox.cpp \
    UICustomSingleControl/UICustomIntSpinBox.cpp \
    UICustomSingleControl/UICustomLineEdit.cpp \
    UICustomSingleControl/UICustomPostionWidget.cpp \
    UICustomSingleControl/UICustomSwitchWidget.cpp \
    UICustomSingleControl/UICustomTextEdit.cpp

HEADERS += \
        CustomCombineControl/UICustomColorControl.h \
        CustomCombineControl/UICustomCombineControlBase.h \
        CustomCombineControl/UICustomDoubleControl.h \
        CustomCombineControl/UICustomFontComboBoxControl.h \
        CustomCombineControl/UICustomGroupControl.h \
        CustomCombineControl/UICustomIntControl.h \
        CustomCombineControl/UICustomLineEditControl.h \
        CustomCombineControl/UICustomOrientationControl.h \
        CustomCombineControl/UICustomPostionControl.h \
        CustomCombineControl/UICustomSwitchControl.h \
        CustomCombineControl/UICustomTextEditTagControl.h \
        UICustomColorControl/UICustomColorCircle.h \
        UICustomColorControl/UICustomColorSlider.h \
        UICustomColorControl/UICustomColorSliderItem.h \
        UICustomColorControl/UICustomColorWidget.h \
        UICustomColorControl/UICustomCustomColorOperator.h \
        UICustomColorControl/UICustonColorDialog.h \
        UICustomSingleControl/UICustomColorViewWidget.h \
        UICustomSingleControl/UICustomDoubleSpinBox.h \
        UICustomSingleControl/UICustomIntSpinBox.h \
        UICustomSingleControl/UICustomLineEdit.h \
        UICustomSingleControl/UICustomPostionWidget.h \
        UICustomSingleControl/UICustomSwitchWidget.h \
        UICustomSingleControl/UICustomTextEdit.h \
        customcontrols_global.h 

unix {
    target.path = /usr/lib
    INSTALLS += target
}
