#ifndef RECEIVER_H
#define RECEIVER_H

#include <QObject>
#include <QDebug>

class Receiver : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString someVar READ someVar WRITE setSomeVar NOTIFY someVarChanged)
public:
    explicit Receiver(QObject *parent = nullptr);
    Q_INVOKABLE void anotherFunction();
    Q_INVOKABLE QString getsomeVar();


    // return m_somevar
    QString someVar();


signals:
    void someVarChanged();
    void valueChanged(QString s);

public slots:
    void receiveSomething(QString);

    void setSomeVar(QString);
    void changeValue(int a);
private:
    QString m_someVar;
};

#endif // RECEIVER_H
