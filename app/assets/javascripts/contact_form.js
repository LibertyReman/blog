window.onload = function() {
  var address, subject, body, hiddenData;
  var sendmail = document.getElementById('mail_btn');
    sendmail.onclick = function() {
        nameData = document.getElementById('name_data').value;
        msgData = document.getElementById('msg_data').value;
        address1 = 'libertyreman';
        address2 = '@gmail.com';
        address = address1+address2;
        subject = 'お問い合わせ';
        body = '【名前】' + '%0D%0A' + nameData + '%0D%0A' + '【メッセージ】' + '%0D%0A' + msgData;
        location.href = 'mailto:' + address + '?subject=' + subject + '&body=' + body;
    };
};

