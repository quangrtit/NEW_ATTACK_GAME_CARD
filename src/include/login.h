#ifndef LOGIN_H
#define LOGIN_H

#include <QObject>
class LoginAuth: public QObject {
    Q_OBJECT
public:
    LoginAuth();
    Q_INVOKABLE bool login(QString username, QString password);
};

#endif