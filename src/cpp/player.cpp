#include "../include/player.h"

Player::Player(QObject *parent) : QObject(parent){
    connect(&server, &QTcpServer::newConnection, this, &Player::onNewConnection);
    if (!server.listen(QHostAddress::Any, 1235)) {
        qDebug() << "Không thể khởi động máy chủ";
    }
}
void Player::onNewConnection()
{
    clientSocket = server.nextPendingConnection();
    
    connect(clientSocket, &QTcpSocket::readyRead, this, &Player::onReadData);
}
void Player::onReadData()
{
    QByteArray data = clientSocket->readAll();
    QString text = QString::fromUtf8(data);
    //qDebug() << "SERVER:   " << text << "\n";
    emit dataReceived(data);
    //    clientSocket->close();
}
void Player::sendData()
{
    QString text = dataChat;
    QByteArray data = text.toUtf8();
    socket.write(data);
    socket.flush();
    // Đóng kết nối sau khi gửi dữ liệu
    socket.close();
}
int Player::getStatusAttack()
{
    return statusAttack;
}
void Player::setStatusAttack(int data)
{
    statusAttack = data;
}
void Player::demo(QString data)
{
    dataChat = data;
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}
void Player::startGame(QString data)// gửi tín hiệu bắt đầu game cho đối phương data = "000"; => gửi bài random
{
    dataChat = data;
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}
void Player::sendCard(QString data)// gửi bộ bài ramdom
{
    dataChat = data;    
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}
void Player::sendOneCardFend(QString data) // gửi bài đỡ
{
    dataChat = data;    
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}
void Player::sendOneCardAttack(QString data) // gửi bài tấn công
{
    dataChat = data;    
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}
void Player::sendCountCard(QString data) // gửi số lượng bài người tấn công đã bốc và số thứ tự trong arrCard
{
    dataChat = data;    
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}
void Player::sendAddCard(QString data)
{
    dataChat = data;    
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}
QString Player::getMoneyFromDb(QString username)
{
    QString res = "0";
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setPort(5432);
    db.setUserName("postgres");
    db.setPassword("123456");
    db.setDatabaseName("casino_nesa");
    if(db.open())
    {
        qDebug() << "connect success!" << "\n";
        QSqlQuery getDb;
        getDb.exec("SELECT * FROM casino_nesa");
        while(getDb.next())
        {
            QString valueUsername = getDb.value(1).toString();
            if(username == valueUsername)
            {
                res = getDb.value(3).toString();
            }
        }
    }
    else 
    {
        qDebug() << "connect not success" << "\n";
    }
    return res;
}
void Player::setMoneyInDb(QString salary, QString username)
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setPort(5432);
    db.setUserName("postgres");
    db.setPassword("123456");
    db.setDatabaseName("casino_nesa");
    if(db.open())
    {
        qDebug() << "connect success!" << "\n";
        QSqlQuery getDb;
        QString qr = "UPDATE casino_nesa SET money = " + salary + " WHERE username = " + "'" + username + "'";
        getDb.exec(qr);
    }
    else 
    {
        qDebug() << "connect not success" << "\n";
    }
}
void Player::sendMoney(QString data)
{
    dataChat = data;    
    connect(&socket, &QTcpSocket::connected, this, Player::sendData);
    socket.connectToHost("localhost", 1234);
}