#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>
#include <QTcpServer>
#include <QTcpSocket>
#include <QSqlDatabase>
#include <QSqlQuery>
class Player: public QObject {
    Q_OBJECT
public:
    explicit Player(QObject *parent = nullptr);
    Q_INVOKABLE void demo(QString data);
    Q_INVOKABLE void startGame(QString data);
    Q_INVOKABLE int getStatusAttack();
    Q_INVOKABLE void setStatusAttack(int data);
    Q_INVOKABLE void sendCard(QString data);
    Q_INVOKABLE void sendOneCardFend(QString data);
    Q_INVOKABLE void sendOneCardAttack(QString data);
    Q_INVOKABLE void sendCountCard(QString data);// người tấn công gửi tín hiệu cho người đỡ
    Q_INVOKABLE void sendAddCard(QString data); // đang đánh hết bài thì cần bốc thêm
    Q_INVOKABLE void sendMoney(QString data);
    // lấy tiền từ cơ sở dữ liệu
    Q_INVOKABLE QString getMoneyFromDb(QString username);
    Q_INVOKABLE void setMoneyInDb(QString salary, QString username);
signals:
    void dataReceived(QString data);
public slots:
    void onNewConnection();
    void onReadData();

    void sendData();
private: 
    // nhận dữ liệu về
    int statusAttack = 1; 
    QTcpServer server;
    QTcpSocket* clientSocket;
    // gửi dữ liệu đi
    QTcpSocket socket;
    QString dataChat;
    // money
};

#endif