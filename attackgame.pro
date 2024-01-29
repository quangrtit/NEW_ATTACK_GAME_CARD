QT += quick
QT += sql
HEADERS += \
        src/include/login.h \
        src/include/player.h
SOURCES += \
        main.cpp \
        src/cpp/login.cpp \
        src/cpp/player.cpp
        

resources.files += \
                main.qml 

resources.files += src/qml/mainScreen.qml \
                src/qml/login.qml \
                src/qml/matchTable.qml

resources.files += images/background-login.jpg \
                images/user-icon.png \
                images/matchCasino.jpg \
                images/luckyGird.png \
                images/backCard.jpg \
                images/option.png \
                images/card/ace_of_clubs.png \
                images/card/ace_of_diamonds.png \
                images/card/ace_of_hearts.png \
                images/card/ace_of_spades.png \
                images/card/2_of_clubs.png \
                images/card/2_of_diamonds.png \
                images/card/2_of_hearts.png \
                images/card/2_of_spades.png \
                images/card/3_of_clubs.png \
                images/card/3_of_diamonds.png \
                images/card/3_of_hearts.png \
                images/card/3_of_spades.png \
                images/card/4_of_clubs.png \
                images/card/4_of_diamonds.png \
                images/card/4_of_hearts.png \
                images/card/4_of_spades.png \
                images/card/5_of_clubs.png \
                images/card/5_of_diamonds.png \
                images/card/5_of_hearts.png \
                images/card/5_of_spades.png \       
                images/card/6_of_clubs.png \
                images/card/6_of_diamonds.png \
                images/card/6_of_hearts.png \
                images/card/6_of_spades.png \
                images/card/7_of_clubs.png \
                images/card/7_of_diamonds.png \
                images/card/7_of_hearts.png \
                images/card/7_of_spades.png \
                images/card/8_of_clubs.png \
                images/card/8_of_diamonds.png \
                images/card/8_of_hearts.png \
                images/card/8_of_spades.png \
                images/card/9_of_clubs.png \
                images/card/9_of_diamonds.png \
                images/card/9_of_hearts.png \
                images/card/9_of_spades.png \
                images/card/10_of_clubs.png \
                images/card/10_of_diamonds.png \
                images/card/10_of_hearts.png \
                images/card/10_of_spades.png \
                images/card/jack_of_clubs.png \
                images/card/jack_of_diamonds.png \
                images/card/jack_of_hearts.png \
                images/card/jack_of_spades.png \
                images/card/queen_of_clubs.png \
                images/card/queen_of_diamonds.png \
                images/card/queen_of_hearts.png \
                images/card/queen_of_spades.png \
                images/card/king_of_clubs.png \
                images/card/king_of_diamonds.png \
                images/card/king_of_hearts.png \
                images/card/king_of_spades.png 

resources.prefix = /$${TARGET}
RESOURCES += resources

CONFIG += console


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
