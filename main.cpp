#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "src/include/login.h"
#include "src/include/player.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<Player>("player", 1, 0, "MyPlayer");
    qmlRegisterType<LoginAuth>("login.auth",1,0,"LoginAuth");
    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/attackgame/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
