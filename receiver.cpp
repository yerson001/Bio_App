#include "receiver.h"

Receiver::Receiver(QObject *parent) : QObject(parent),m_someVar("123456")
{
    qDebug() <<"constructor";

}

void Receiver::anotherFunction()
{
     qDebug()<<"button2";

}

QString Receiver::getsomeVar()
{
    return m_someVar;
}

QString Receiver::someVar()
{
    return m_someVar;
}

void Receiver::receiveSomething(QString s)
{
    qDebug()<<"Recived:" <<s;

}

void Receiver::setSomeVar(QString new_var)
{
    if(m_someVar !=new_var){
        m_someVar = new_var;
        emit someVarChanged();
    }

}
