#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "TodoCpp.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    TodoCpp cpp;
    engine.rootContext()->setContextProperty("todoCpp", &cpp);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
