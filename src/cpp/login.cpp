#include "../include/login.h"
#include <QDebug>
#include <QSqlDatabase>
#include <QSqlQuery>

LoginAuth::LoginAuth(){}

bool LoginAuth::login(QString username, QString password){
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setPort(5432);
    db.setDatabaseName("casino_nesa");
    db.setUserName("postgres");
    db.setPassword("123456");
   
    if(db.open())
    {
        qDebug() << "connect success!" << "\n";
        QSqlQuery getDb;
        getDb.exec("SELECT * FROM casino_nesa");
        while(getDb.next())
        {
            QString valueUsername = getDb.value(1).toString();
            QString valuePassword = getDb.value(2).toString();
            if(username == valueUsername && password == valuePassword){
                return true;
            } 
        }
    }
    else 
    {
        qDebug() << "connect not success" << "\n";
    }
    return false;
}