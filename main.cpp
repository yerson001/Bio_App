#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <receiver.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    //create instance
    //Receiver *rv = new Receiver;

    //Receiver testclass;
    QQmlApplicationEngine engine;

    qmlRegisterType<Receiver>("Class",1,0,"Receiver");

    //engine.rootContext()->setContextProperty("rv",rv);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
