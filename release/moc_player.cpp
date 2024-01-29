/****************************************************************************
** Meta object code from reading C++ file 'player.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.6.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../src/include/player.h"
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'player.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.6.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSPlayerENDCLASS_t {};
static constexpr auto qt_meta_stringdata_CLASSPlayerENDCLASS = QtMocHelpers::stringData(
    "Player",
    "dataReceived",
    "",
    "data",
    "onNewConnection",
    "onReadData",
    "sendData",
    "demo",
    "startGame",
    "getStatusAttack",
    "setStatusAttack",
    "sendCard",
    "sendOneCardFend",
    "sendOneCardAttack",
    "sendCountCard",
    "sendAddCard",
    "sendMoney",
    "getMoneyFromDb",
    "username",
    "setMoneyInDb",
    "salary"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSPlayerENDCLASS_t {
    uint offsetsAndSizes[42];
    char stringdata0[7];
    char stringdata1[13];
    char stringdata2[1];
    char stringdata3[5];
    char stringdata4[16];
    char stringdata5[11];
    char stringdata6[9];
    char stringdata7[5];
    char stringdata8[10];
    char stringdata9[16];
    char stringdata10[16];
    char stringdata11[9];
    char stringdata12[16];
    char stringdata13[18];
    char stringdata14[14];
    char stringdata15[12];
    char stringdata16[10];
    char stringdata17[15];
    char stringdata18[9];
    char stringdata19[13];
    char stringdata20[7];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSPlayerENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSPlayerENDCLASS_t qt_meta_stringdata_CLASSPlayerENDCLASS = {
    {
        QT_MOC_LITERAL(0, 6),  // "Player"
        QT_MOC_LITERAL(7, 12),  // "dataReceived"
        QT_MOC_LITERAL(20, 0),  // ""
        QT_MOC_LITERAL(21, 4),  // "data"
        QT_MOC_LITERAL(26, 15),  // "onNewConnection"
        QT_MOC_LITERAL(42, 10),  // "onReadData"
        QT_MOC_LITERAL(53, 8),  // "sendData"
        QT_MOC_LITERAL(62, 4),  // "demo"
        QT_MOC_LITERAL(67, 9),  // "startGame"
        QT_MOC_LITERAL(77, 15),  // "getStatusAttack"
        QT_MOC_LITERAL(93, 15),  // "setStatusAttack"
        QT_MOC_LITERAL(109, 8),  // "sendCard"
        QT_MOC_LITERAL(118, 15),  // "sendOneCardFend"
        QT_MOC_LITERAL(134, 17),  // "sendOneCardAttack"
        QT_MOC_LITERAL(152, 13),  // "sendCountCard"
        QT_MOC_LITERAL(166, 11),  // "sendAddCard"
        QT_MOC_LITERAL(178, 9),  // "sendMoney"
        QT_MOC_LITERAL(188, 14),  // "getMoneyFromDb"
        QT_MOC_LITERAL(203, 8),  // "username"
        QT_MOC_LITERAL(212, 12),  // "setMoneyInDb"
        QT_MOC_LITERAL(225, 6)   // "salary"
    },
    "Player",
    "dataReceived",
    "",
    "data",
    "onNewConnection",
    "onReadData",
    "sendData",
    "demo",
    "startGame",
    "getStatusAttack",
    "setStatusAttack",
    "sendCard",
    "sendOneCardFend",
    "sendOneCardAttack",
    "sendCountCard",
    "sendAddCard",
    "sendMoney",
    "getMoneyFromDb",
    "username",
    "setMoneyInDb",
    "salary"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSPlayerENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      16,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,  110,    2, 0x06,    1 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       4,    0,  113,    2, 0x0a,    3 /* Public */,
       5,    0,  114,    2, 0x0a,    4 /* Public */,
       6,    0,  115,    2, 0x0a,    5 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       7,    1,  116,    2, 0x02,    6 /* Public */,
       8,    1,  119,    2, 0x02,    8 /* Public */,
       9,    0,  122,    2, 0x02,   10 /* Public */,
      10,    1,  123,    2, 0x02,   11 /* Public */,
      11,    1,  126,    2, 0x02,   13 /* Public */,
      12,    1,  129,    2, 0x02,   15 /* Public */,
      13,    1,  132,    2, 0x02,   17 /* Public */,
      14,    1,  135,    2, 0x02,   19 /* Public */,
      15,    1,  138,    2, 0x02,   21 /* Public */,
      16,    1,  141,    2, 0x02,   23 /* Public */,
      17,    1,  144,    2, 0x02,   25 /* Public */,
      19,    2,  147,    2, 0x02,   27 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Int,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::QString, QMetaType::QString,   18,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   20,   18,

       0        // eod
};

Q_CONSTINIT const QMetaObject Player::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSPlayerENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSPlayerENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSPlayerENDCLASS_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<Player, std::true_type>,
        // method 'dataReceived'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'onNewConnection'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onReadData'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'sendData'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'demo'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'startGame'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getStatusAttack'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'setStatusAttack'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'sendCard'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'sendOneCardFend'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'sendOneCardAttack'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'sendCountCard'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'sendAddCard'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'sendMoney'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getMoneyFromDb'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'setMoneyInDb'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>
    >,
    nullptr
} };

void Player::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Player *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->dataReceived((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 1: _t->onNewConnection(); break;
        case 2: _t->onReadData(); break;
        case 3: _t->sendData(); break;
        case 4: _t->demo((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 5: _t->startGame((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 6: { int _r = _t->getStatusAttack();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 7: _t->setStatusAttack((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 8: _t->sendCard((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 9: _t->sendOneCardFend((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 10: _t->sendOneCardAttack((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 11: _t->sendCountCard((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 12: _t->sendAddCard((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 13: _t->sendMoney((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 14: { QString _r = _t->getMoneyFromDb((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 15: _t->setMoneyInDb((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Player::*)(QString );
            if (_t _q_method = &Player::dataReceived; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject *Player::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Player::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSPlayerENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Player::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 16)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 16;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 16)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 16;
    }
    return _id;
}

// SIGNAL 0
void Player::dataReceived(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
