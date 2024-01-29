import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Qt5Compat.GraphicalEffects
import player
Rectangle {
    id: root
    anchors.fill:parent
    color: "lightgray"
    signal changeScreen(string source, string username)
    MyPlayer {
        id: myPlayer
    }
    function getValue(card)
    {
        var id_r = card.indexOf("_o");
        var id_l = 0;
        for(var i = 0; i < card.length; i++)
        {
            if(card[i] === "/") id_l = i;
        }
        if(card.slice(id_l + 1, id_r) === "ace") return 14;
        else if(card.slice(id_l + 1, id_r) === "2") return 2;
        else if(card.slice(id_l + 1, id_r) === "3") return 3;
        else if(card.slice(id_l + 1, id_r) === "4") return 4;
        else if(card.slice(id_l + 1, id_r) === "5") return 5;
        else if(card.slice(id_l + 1, id_r) === "6") return 6;
        else if(card.slice(id_l + 1, id_r) === "7") return 7;
        else if(card.slice(id_l + 1, id_r) === "8") return 8;
        else if(card.slice(id_l + 1, id_r) === "9") return 9;
        else if(card.slice(id_l + 1, id_r) === "10") return 10;
        else if(card.slice(id_l + 1, id_r) === "jack") return 11;
        else if(card.slice(id_l + 1, id_r) === "queen") return 12;
        else if(card.slice(id_l + 1, id_r) === "king") return 13;
        else return -1000;
    }
    function getBoss(card)
    {
        if(card.indexOf("clubs") !== -1)
        {
            return "clubs";
        }
        else if(card.indexOf("diamonds") !== -1)
        {
            return "diamonds";
        }
        else if(card.indexOf("hearts") !== -1)
        {
            return "hearts";
        }
        else if(card.indexOf("spades") !== -1)
        {
            return "spades";
        }
        else 
        {
            return "";
        }
    }
    function compare(card1, card2)
    {
        var check = getBoss(arrCard[arrCard.length - 1]);// lấy lá trưởng
        if(getBoss(card1) === getBoss(card2))
        {
            if(getValue(card1) > getValue(card2))
            {
                return 1;
            }
            else 
            {
                return -1;
            }
        }
        else 
        {
            if(getBoss(card1) === check)
            {
                return 1;
            }
            else if(getBoss(card2) === check)
            {
                return -1;
            }
            else 
            {
                return 0;// ko xác định
            }
        }

    }
    property var arrCard: [
        "qrc:/attackgame/images/card/ace_of_clubs.png",
        "qrc:/attackgame/images/card/ace_of_diamonds.png",
        "qrc:/attackgame/images/card/ace_of_hearts.png",
        "qrc:/attackgame/images/card/ace_of_spades.png",

        "qrc:/attackgame/images/card/2_of_clubs.png",
        "qrc:/attackgame/images/card/2_of_diamonds.png",
        "qrc:/attackgame/images/card/2_of_hearts.png",
        "qrc:/attackgame/images/card/2_of_spades.png",

        "qrc:/attackgame/images/card/3_of_clubs.png",
        "qrc:/attackgame/images/card/3_of_diamonds.png",
        "qrc:/attackgame/images/card/3_of_hearts.png",
        "qrc:/attackgame/images/card/3_of_spades.png",

        "qrc:/attackgame/images/card/4_of_clubs.png",
        "qrc:/attackgame/images/card/4_of_diamonds.png",
        "qrc:/attackgame/images/card/4_of_hearts.png",
        "qrc:/attackgame/images/card/4_of_spades.png",

        "qrc:/attackgame/images/card/5_of_clubs.png",
        "qrc:/attackgame/images/card/5_of_diamonds.png",
        "qrc:/attackgame/images/card/5_of_hearts.png",
        "qrc:/attackgame/images/card/5_of_spades.png",

        "qrc:/attackgame/images/card/6_of_clubs.png",
        "qrc:/attackgame/images/card/6_of_diamonds.png",
        "qrc:/attackgame/images/card/6_of_hearts.png",
        "qrc:/attackgame/images/card/6_of_spades.png",

        "qrc:/attackgame/images/card/7_of_clubs.png",
        "qrc:/attackgame/images/card/7_of_diamonds.png",
        "qrc:/attackgame/images/card/7_of_hearts.png",
        "qrc:/attackgame/images/card/7_of_spades.png",

        "qrc:/attackgame/images/card/8_of_clubs.png",
        "qrc:/attackgame/images/card/8_of_diamonds.png",
        "qrc:/attackgame/images/card/8_of_hearts.png",
        "qrc:/attackgame/images/card/8_of_spades.png",

        "qrc:/attackgame/images/card/9_of_clubs.png",
        "qrc:/attackgame/images/card/9_of_diamonds.png",
        "qrc:/attackgame/images/card/9_of_hearts.png",
        "qrc:/attackgame/images/card/9_of_spades.png",

        "qrc:/attackgame/images/card/10_of_clubs.png",
        "qrc:/attackgame/images/card/10_of_diamonds.png",
        "qrc:/attackgame/images/card/10_of_hearts.png",
        "qrc:/attackgame/images/card/10_of_spades.png",

        "qrc:/attackgame/images/card/jack_of_clubs.png",
        "qrc:/attackgame/images/card/jack_of_diamonds.png",
        "qrc:/attackgame/images/card/jack_of_hearts.png",
        "qrc:/attackgame/images/card/jack_of_spades.png",

        "qrc:/attackgame/images/card/queen_of_clubs.png",
        "qrc:/attackgame/images/card/queen_of_diamonds.png",
        "qrc:/attackgame/images/card/queen_of_hearts.png",
        "qrc:/attackgame/images/card/queen_of_spades.png",

        "qrc:/attackgame/images/card/king_of_clubs.png",
        "qrc:/attackgame/images/card/king_of_diamonds.png",
        "qrc:/attackgame/images/card/king_of_hearts.png",
        "qrc:/attackgame/images/card/king_of_spades.png",
    ]
    Image {
        anchors.fill: parent
        source: "qrc:/attackgame/images/matchCasino.jpg"
    }
    Rectangle {
        width: 180
        height: 180
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        color: "transparent"
        Rectangle {
            id: userIcon1
            width: 100
            height: 100
            radius: 180
            x: 20
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/attackgame/images/luckyGird.png"
            }
            Rectangle {
                width: 100
                height: 25
                y: 85
                color: "#202020"
                radius: 10
                Text {
                    text: "Player"
                    color: "#FFFFFF"
                    anchors.centerIn: parent
                    font.pointSize: 12
                }
            }
        } 
        Rectangle {
            id: score1
            y: 80
            width: 100
            height: 100
            x: 20
            color: "transparent"
            Text {
                id: score1Text
                text: myPlayer.getMoneyFromDb(usernamePlayer)
                color: "yellow"
                anchors.centerIn: parent
                font.pointSize: 12
            }
            // Component.onCompleted: {
            //     myPlayer.setMoneyInDb("888888", usernamePlayer)
            //     score1Text.text = myPlayer.getMoneyFromDb(usernamePlayer)
            // }
        }
    }

    // user 2
    Rectangle {
        id: imageUser2
        width: 180 * 2
        height: 180
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"
        Rectangle {
            id: userIcon2
            width: 100
            height: 100
            radius: 180
            y: 20
            Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/attackgame/images/luckyGird.png"
            }
            Rectangle {
                width: 100
                height: 25
                y: 85
                color: "#202020"
                radius: 10
                Text {
                    text: "Me"
                    color: "#FFFFFF"
                    anchors.centerIn: parent
                    font.pointSize: 12
                }
            }
        }
        // hiển thị số lượng bài của đối thủ 
        Rectangle {
            x: userIcon2.width + 20
            y: 20
            width: 120
            height: 135
            radius: 5
            Image {
                anchors.fill: parent
                source: "qrc:/attackgame/images/backCard.jpg"
            }
            Rectangle {
                width: 40
                height: 40
                radius: 180
                color: "#202020"
                anchors.centerIn: parent
                Text {
                    id: countCardFriend
                    text: "8" // cần thay đổi khi chơi
                    anchors.centerIn: parent
                    color: "white"
                    font.pointSize: 15
                }
            }
        }
        Rectangle {
            id: score2
            width: 100
            height: 100
            y: 100
            color: "transparent"
            Text {
                id: score2Text
                text: "99999" + "K"
                color: "yellow"
                anchors.centerIn: parent
                font.pointSize: 12
            }
        }
    }
    //match table
    ListModel {
        id: discard
    }   
    Rectangle {
        width: 80
        height: 90
        x: parent.width - 240
        y: 300
        Image {
            id: boss
            anchors.fill: parent
            source: arrCard[arrCard.length - 1]
            Rectangle {
                width: 80
                height: 110
                y: 40
                rotation: 90
                Image {
                    id: useCards
                    anchors.fill: parent
                    source: "qrc:/attackgame/images/backCard.jpg"
                    Rectangle {
                        width: 40
                        height: 40
                        radius: 180
                        color: "#202020"
                        anchors.centerIn: parent
                        rotation: -90
                        Text {
                            id: remainCard
                            text: (Math.max(arrCard.length - countGetCard, 0)).toString() // cần thay đổi khi chơi
                            anchors.centerIn: parent
                            color: "white"
                            font.pointSize: 15
                        }
                    }
                }
            }
        }
    }
    Rectangle {
        id: table
        width: 80 * 8 + 80
        height: 90 * 2 + 80
        y: parent.height / 4
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"
        Grid  {
            anchors.fill: parent
            columns: 8
            spacing: 25
            Repeater {
                model: discard
                delegate: Rectangle {
                    id: rootRect
                    width: 80
                    height: 90
                    border.width: 4
                    border.color: discard.get(index).colorBorder
                    Rectangle {
                        id: borderRect
                        width: parent.width - 4
                        height: parent.height - 4
                        anchors.centerIn: parent
                        Rectangle {
                            anchors.fill: parent
                            opacity: discard.get(index).srcFend === "" ? 1 : 0.4
                            Image {
                                anchors.fill: parent
                                source: discard.get(index).srcAttack
                            }
                        }
                        Rectangle {
                            id: insertCard
                            width: 80
                            height: 90
                            visible: discard.get(index).srcFend === "" ? false : true
                            x: 20
                            y: 20
                            Image {
                                anchors.fill: parent
                                source: discard.get(index).srcFend
                            }
                        }
                    }
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            this.cursorShape = Qt.PointingHandCursor
                        }
                        onClicked: {
                            if(discard.get(index).srcFend === "")
                            {
                                if(discard.get(index).colorBorder === "green")
                                {
                                    for(var i = 0; i < discard.count; i++)
                                    {
                                        discard.setProperty(i, "colorBorder", "red");
                                    }
                                }
                                else 
                                {
                                    for(var i = 0; i < discard.count; i++)
                                    {
                                        discard.setProperty(i, "colorBorder", "red");
                                    }
                                    discard.setProperty(index, "colorBorder", "green");
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // View card
    ListModel {
        id: listCardView
        // ListElement {
        //     name: ""
        //     src: "qrc:/attackgame/images/card/ace_of_clubs.png"
        //     y: 0
        // }
    }
    Column {
        width: parent.width
        height: parent.height / 5 + 85
        anchors.bottom: parent.bottom
        spacing: 10
        Rectangle {
            id: optionPlay
            width: parent.width / 3
            height: 60
            anchors.horizontalCenter: parent.horizontalCenter
            color: "transparent"
            Rectangle {
                id: skip
                width: parent.height * 2
                height: parent.height
                radius: 20
                anchors.left: parent.left
                color: "#CCCC00"
                Text {
                    text: "BỎ QUA"
                    font.pointSize: 15
                    color: "white"
                    anchors.centerIn: parent
                    font.bold: true
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        this.cursorShape = Qt.PointingHandCursor
                    }
                    onClicked: {
                        
                        for(var i = 0; i < listCardView.count; i++)
                        {
                            listCardView.get(i).y = 0;
                        }
                        // myPlayer.getStatusAttack() === 1 => không sao cả 2 bên cùng lên bài, bên tấn lên trước hoán đổi lượt tấn
                        // myPlayer.getStatusAttack() === 0 => bị thua sẽ bị lên bài, bên thằng bốc bài, lượt tấn công giữ nguyên
                        // chú ý mỗi lần lên bài cần kiểm tra xem cần bao nhiêu quân(ở đây quy định max = 8 quân)
                        // khi muốn bỏ qua thì cần phải xem xét discard 
                        if(myPlayer.getStatusAttack() === 1)
                        {
                            var checkStatus = true;
                            for(var e = 0; e < discard.count; e++)
                                {
                                    if(discard.get(e).srcFend === "")
                                    {
                                        checkStatus = false;
                                    }
                                }
                            if(checkStatus === true && discard.count !== 0)
                            { 
                                discard.clear();
                                while(listCardView.count < 8 && countGetCard < arrCard.length)
                                {
                                    listCardView.append({
                                        "name": "",
                                        "src": arrCard[countGetCard],
                                        "y": 0
                                    })
                                    countGetCard += 1;
                                }
                                var dataS = "004" + countGetCard.toString();
                                myPlayer.sendCountCard(dataS);// gửi tín hiệu bốc bài cho đối phương + số bài hiện của bản thân(đối phương tự tính được)
                                // đổi lượt tấn
                                myPlayer.setStatusAttack(0);
                                // tính toán lại số lượng bài của đối phương
                                var tmp = parseInt(countCardFriend.text);
                                while(countGetCard < arrCard.length && tmp < 8)
                                {
                                    tmp += 1;
                                    countGetCard += 1;
                                }
                                countCardFriend.text = tmp.toString();
                            }
                        }
                        else 
                        {
                            for(var i = 0; i < discard.count; i++)
                            {
                                if(discard.get(i).srcAttack !== "")
                                {
                                    listCardView.append({
                                        "name": "",
                                        "src": discard.get(i).srcAttack,
                                        "y": 0
                                    })
                                }
                                if(discard.get(i).srcFend !== "")
                                {
                                    listCardView.append({
                                        "name": "",
                                        "src": discard.get(i).srcFend,
                                        "y": 0
                                    })
                                }
                            }
                            discard.clear();
                            var dataS = "005"
                            myPlayer.sendCountCard(dataS);
                            // tính toán lại số lượng bài của đối phương
                            var tmp = parseInt(countCardFriend.text);
                            while(countGetCard < arrCard.length && tmp < 8)
                            {
                                tmp += 1;
                                countGetCard += 1;
                            }
                            countCardFriend.text = tmp.toString();
                        }
                    }
                }
            }
            Rectangle {
                id: attack
                width: parent.height * 2
                height: parent.height
                radius: 20
                anchors.right: parent.right
                color: "green"
                Text {
                    text: "ĐÁNH BÀI"
                    font.pointSize: 15
                    color: "white"
                    font.bold: true
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        this.cursorShape = Qt.PointingHandCursor
                    }
                    onClicked: {
                        var check = false;
                        for(var i = 0; i < listCardView.count; i++)
                        {
                            if(listCardView.get(i).y < 0) check = true;
                        }
                        if(listCardView.count > 0 && check === true)
                        {
                            
                            for(var i = 0; i < listCardView.count; i++)
                            {
                                if(listCardView.get(i).y < 0)
                                {
                                    // myPlayer.getStatusAttack() === ?
                                    if(myPlayer.getStatusAttack() === 1)
                                    {
                                        // kiểm tra xem bài tấn công có hợp lệ không
                                        var res = false;
                                        for(var j = 0; j < discard.count; j++)
                                        {
                                            if(getValue(discard.get(j).srcAttack) === getValue(listCardView.get(i).src) || getValue(discard.get(j).srcFend) === getValue(listCardView.get(i).src))
                                            {
                                                res = true;
                                            }
                                        }
                                        if(discard.count === 0) res = true;
                                        if(res === false) continue;
                                        discard.append({
                                            "name": "",
                                            "srcAttack": listCardView.get(i).src,
                                            "srcFend": "",
                                            "y": 0,
                                            "colorBorder": "red"
                                        })
                                        // gửi tín hiệu cho đối phương bài ném ra tấn công 
                                        var dataSen = "002" + listCardView.get(i).src;
                                        myPlayer.sendOneCardAttack(dataSen);
                                        //viewCard.width = viewCard.width - 120
                                        listCardView.remove(i);
                                        i--;
                                    }
                                    else 
                                    {
                                        var vtri = -1;
                                        for(var j = 0; j < discard.count; j++)
                                        {
                                            if(discard.get(j).colorBorder === "green")
                                            {
                                                vtri = j;
                                                break;
                                            }
                                        }
                                        if(vtri === -1) continue;
                                        var res = false;
                                        console.log("this is: ", listCardView.get(i).src, discard.get(vtri).srcAttack, "--->>", compare(listCardView.get(i).src, discard.get(vtri).srcAttack))
                                        if(compare(listCardView.get(i).src, discard.get(vtri).srcAttack) !== 1) continue; // listCardView.get(i).src < discard.get(vtri).srcAttack => continue;
                                        discard.setProperty(vtri, "srcFend", listCardView.get(i).src);
                                        // gửi tín hiệu cho đối phương bài ném ra đỡ + bài chọn để đỡ
                                        var kq = "";
                                        for(var id = 0; id < discard.count; id++)
                                        {
                                            if(discard.get(id).colorBorder === "green")
                                            {
                                                kq = discard.get(id).srcAttack;
                                                break;
                                            }
                                        }
                                        for(var j = 0; j < discard.count; j++)
                                        {
                                            discard.setProperty(j, "colorBorder", "red")
                                        }
                                        var dataSen = "003" + listCardView.get(i).src + " " + kq; // chuỗi gửi đi chứa 2 thông tin 
                                        myPlayer.sendOneCardFend(dataSen);
                                        //viewCard.width = viewCard.width - 120
                                        listCardView.remove(i);
                                        i--;
                                    }
                                    
                                }
                            }
                        }
                        // kiểm tra nếu hết bài có 2 khả năng:
                        // bài dưới sân vẫn còn => bốc đánh tiếp 
                        // bài dưới sân đã hết => myPlayer win, friend loss
                        if(listCardView.count === 0)
                        {
                            while(listCardView.count < 8 && countGetCard < arrCard.length)
                            {
                                listCardView.append({
                                    "name": "",
                                    "src": arrCard[countGetCard],
                                    "y": 0
                                })
                                countGetCard += 1;
                            }
                            if(listCardView.count !== 0)
                            {
                                var dataS = "006" + countGetCard.toString();// gửi số lượng bài bốc cho ông anh kia 
                                // ko cần cập nhập cho ông anh 
                                myPlayer.sendAddCard(dataS);
                            }
                            else 
                            {
                                var dataS = "007"; // gửi tín hiệu bản thân đã thắng 
                                myPlayer.sendAddCard(dataS);
                                beginGame.visible = true;
                                // cộng tiền gì đó 
                                score1Text.text = (parseInt(score1Text.text) + parseInt(countCardFriend.text) * 1000).toString(); // 1 lá 1000 là mức cược 
                                score2Text.text = (parseInt(score2Text.text) - parseInt(countCardFriend.text) * 1000).toString();
                                myPlayer.setMoneyInDb(score1Text.text, usernamePlayer);
                            }
                        }
                    }
                }
            }
        }
        Rectangle {
            id: viewCard
            //width: root.width / 1.6
            width: listCardView.count * 120 + listCardView.count * 0.5 > (8 * 120 + 0.5 * 8) ? (8 * 120 + 0.5 * 8) : (listCardView.count * 120 + listCardView.count * 0.5)
            height: root.height / 5 + 21
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            color: "transparent"
            clip: true
            ListView {
                anchors.bottom: parent.bottom
                width: parent.width
                height: root.height / 5
                contentHeight: root.height / 5//parent.height
                contentWidth: listCardView.count * 120 + listCardView.count * 0.5 > (8 * 120 + 0.5 * 8) ? (8 * 120 + 0.5 * 8) * 1.2 : (listCardView.count * 120 + listCardView.count * 0.5)
                spacing: 0.5
                ScrollBar.vertical: ScrollBar {
                    policy: ScrollBar.AsNeeded
                }
                model: listCardView
                orientation: ListView.Horizontal
                delegate: Rectangle {
                    width: 120
                    height: root.height / 5
                    y: listCardView.get(index).y
                    Image {
                        anchors.fill: parent
                        source: listCardView.get(index).src
                    }
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            this.cursorShape = Qt.PointingHandCursor
                        }
                        onClicked: {
                            for(var i = 0; i < listCardView.count; i++) 
                            {
                                if(listCardView.get(i).y < 0 && i !== index) 
                                {
                                    listCardView.setProperty(i, "y", 0);
                                }
                            }
                            listCardView.get(index).y === 0 ? listCardView.setProperty(index, "y", listCardView.get(index).y - 20) : listCardView.setProperty(index, "y", 0);
                        }
                    }
                }
                
            }
        }
    }
    //clock
    Rectangle {
        width: 50
        height: 50
        y: parent.height - 200
        x: 200
        radius: 180
        border.width: 1
        border.color: "#CCCC00"
        Text {
            text: "20" // cài đặt bộ đếm 
            font.pointSize: 15
            anchors.centerIn: parent
            font.bold: true
        }
    }
    Button {
        width: 180
        height: 180
        anchors.verticalCenter: parent.verticalCenter
        onClicked: {
            // countCardFriend.text = "10000"
            // countGetCard += 1000
        }
    }
    property int countSignal: 0
    property int countGetCard: 16
    Connections {
        target: myPlayer
        function onDataReceived(data) {
            if(data.slice(0, 3) === "000") //start game 
            {
                countSignal += 1;
                score2Text.text = data.slice(3, data.length)
            }
            else if(data.slice(0, 3) === "001" && listCardView.count === 0 && myPlayer.getStatusAttack() === 0)// nếu myPlayer.getStatusAttack() === 0 mới có thể nhận được
            {
                var dataReal = data.slice(3, data.length);
                var dataDemo = dataReal.split(" ");
                arrCard.splice(0, arrCard.length); // xoá đi và điền lại cho đồng bộ
                for(var j = 0; j < dataDemo.length; j++)
                {
                    arrCard.push(dataDemo[j]);
                    if(j < 8 || j >= 16) continue;
                    listCardView.append({
                        "name": "",
                        "src": dataDemo[j],
                        "y": 0
                    })
                }
                boss.source = arrCard[arrCard.length - 1]
            }
            else if(data.slice(0, 3) === "002")// đang bị tấn
            {
                var dataReal = data.slice(3, data.length);
                // cập nhập dữ liệu 
                // if(myPlayer.getStatusAttack() === 0)
                discard.append({
                    "name": "",
                    "srcAttack": dataReal,
                    "srcFend": "",
                    "y": 0,
                    "colorBorder": "red"
                })
                // số lượng bài của đối thủ bị giảm đi 1 
                var tmp = parseInt(countCardFriend.text);
                tmp -= 1;
                countCardFriend.text = tmp.toString();
            }
            else if(data.slice(0, 3) === "003")
            {
                var dataReal = data.slice(3, data.length);
                // cập nhập dữ liệu
                // if(myPlayer.getStatusAttack() === 1)
                var dataDemo = dataReal.split(" ");
                var arr = [];
                for(var i = 0; i < dataDemo.length; i++)
                {
                    arr.push(dataDemo[i]);
                }
                for(var j = 0; j < discard.count; j++)
                {
                    if(discard.get(j).srcAttack === arr[1])// tìm đúng bài đỡ => set lại
                    {
                        discard.setProperty(j, "srcFend", arr[0]);
                        break;
                    }
                }
                // số lượng bài đối thủ giảm đi 1 
                var tmp = parseInt(countCardFriend.text);
                tmp -= 1;
                countCardFriend.text = tmp.toString();
            }
            else if(data.slice(0, 3) === "004")
            {
                var dataReal = data.slice(3, data.length);
                countCardFriend.text = (parseInt(countCardFriend.text) + parseInt(dataReal) - countGetCard).toString();// tính số lượng bài đã bốc của ông bạn ez
                countGetCard = parseInt(dataReal);
                discard.clear();
                while(listCardView.count < 8 && countGetCard < arrCard.length)
                {
                    listCardView.append({
                        "name": "",
                        "src": arrCard[countGetCard],
                        "y": 0
                    })
                    countGetCard += 1;
                }
                myPlayer.setStatusAttack(1);
            }
            else if(data.slice(0, 3) === "005")
            {
                var takeCard = 0;
                for(var i = 0; i < discard.count; i++)
                {
                    if(discard.get(i).srcAttack !== "")
                    {
                        takeCard += 1;
                    }
                    if(discard.get(i).srcFend !== "")
                    {
                        takeCard += 1;
                    }
                }
                countCardFriend.text = (parseInt(countCardFriend.text) + takeCard).toString();
                discard.clear();
                while(listCardView.count < 8 && countGetCard < arrCard.length)
                {
                    listCardView.append({
                        "name": "",
                        "src": arrCard[countGetCard],
                        "y": 0
                    })
                    countGetCard += 1;
                }
            }
            else if(data.slice(0, 3) === "006") // đang đánh mà hết bài
            {
                var dataReal = data.slice(3, data.length);
                countCardFriend.text = (parseInt(countCardFriend.text) + parseInt(dataReal) - countGetCard).toString();
                countGetCard = parseInt(dataReal);
            }
            else if(data.slice(0, 3) === "007")// tín hiệu đối phương hết cmn bài rồi bro => thua nha
            {
                // trừ tiền gì đó 
                beginGame.visible = true;
                score1Text.text = (parseInt(score1Text.text) - listCardView.count * 1000).toString(); // 1 lá 1000 là mức cược 
                score2Text.text = (parseInt(score2Text.text) + listCardView.count * 1000).toString();
                myPlayer.setMoneyInDb(score1Text.text, usernamePlayer);
            }
            
        }
    }
    MouseArea {
        id: beginGame
        width: parent.width 
        height: parent.height 
        visible: true
        //visible: false
        Rectangle {
            anchors.fill: parent
            color: "transparent"
            Rectangle {
                width: 100
                height: 40
                radius: 20
                color: "green"
                //anchors.verticalCenter: parent.verticalCenter
                anchors.centerIn: parent
                x: parent.width / 2
                Text {
                    text: "Sẵn sàng"
                    font.pointSize: 12
                    color: "white"
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        this.cursorShape = Qt.PointingHandCursor
                    }
                    onClicked: {
                        myPlayer.startGame("000" + score1Text.text);
                        if(countSignal === 0)countSignal += 1;
                        // getmoney from database
                        //if(countSignal <= 2) myPlayer.sendMoney("00-" + score1Text.text);// gửi tín hiệu money cho friend
                        // ramdom card and send to friend 
                        if(myPlayer.getStatusAttack() === 1 && countSignal === 1 && listCardView.count === 0)
                        {
                            var dataSend = "001";
                            // ramdom elements in arrCard
                            var currentIndex = arrCard.length, temporaryValue, ramdomIndex;
                            while(0 !== currentIndex)
                            {
                                ramdomIndex = Math.floor(Math.random() * arrCard.length);
                                currentIndex -= 1;
                                // swap elements
                                temporaryValue = arrCard[currentIndex];
                                arrCard[currentIndex] = arrCard[ramdomIndex];
                                arrCard[ramdomIndex] = temporaryValue;
                            }
                            for(var i = 0; i < arrCard.length; i++)
                            {
                                if(i != arrCard.length - 1) dataSend = dataSend + arrCard[i] + " ";
                                else dataSend = dataSend + arrCard[i];
                            }
                            for(var j = 0; j < 8; j++)
                            {
                                listCardView.append({
                                    "name": "",
                                    "src": arrCard[j],
                                    "y": 0
                                })
                            }
                            boss.source = arrCard[arrCard.length - 1]
                            myPlayer.sendCard(dataSend);
                        }
                        if(countSignal >= 2)
                        {
                            beginGame.visible = false;
                        }
                    }
                }
            }
        }
    }
    // thoát 
    Rectangle {
        width: 150
        height: 150
        anchors.top: parent.top
        anchors.right: parent.right
        color: "transparent"
        Rectangle {
            width: 100
            height: 100
            anchors.centerIn: parent
            radius: 180
            color: "transparent"
            border.width: 2
            border.color: "red"
            Image {
                width: parent.width / 2
                height: parent.height / 2
                anchors.centerIn: parent
                source: "qrc:/attackgame/images/option.png"
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    this.cursorShape = Qt.PointingHandCursor
                }
                onClicked: {
                    changeScreen("", ""); // exit go to login
                }
            }
        }
    }
}
// diamonds ->  rô
// clubs ->  tép
// hearts ->  cơ
// spades ->  bích