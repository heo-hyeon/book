const form = document.form;

// 정규표현식
const nameRegex = /^[a-zA-Z0-9가-힣]{2,12}$/;
const idRegex = /^[A-Za-z0-9]{4,12}$/;
const pwdRegex = /^[A-Za-z0-9]{4,12}$/;

const memberName = document.getElementById('memberName');
const memberID = document.getElementById('memberID');
const pwd = document.getElementById('pwd');
const pwdCheck = document.getEletmentById('pwdCheck'); 

let isName = false;
let isId = false;
let isPw = false;
let isPwdCheck = false;

memberName.addEventListener('keyup', () => {
    if (memberName.value == '' || !nameRegex.test(memberName.value)) {
        document.getElementById('nameFeedback').style.display = 'block';
        isName = false;
    } else {
        document.getElementById('nameFeedback').style.display = 'none';
        userName.removeEventListener;
        isName = true;
    }
});

memberID.addEventListener('keyup', () => {
    if (id.value == '' || !idRegex.test(memberID.value)) {
        document.getElementById('idFeedback').style.display = 'block';
        isId = false;
    } else {
        document.getElementById('idFeedback').style.display = 'none';
        id.removeEventListener;
        isId = true;
    }
});

pwd.addEventListener('keyup', () => {
    if (pw.value == '' || !pwdRegex.test(pwd.value)) {
        document.getElementById('pwFeedback').style.display = 'block';
        isPw = false;
    } else {
        document.getElementById('pwFeedback').style.display = 'none';
        pw.removeEventListener;
        isPw = true;
    }
});

pwdCheck.addEventListener('keyup', () => {
    if (pw.value !== pwdCheck.value) {
        document.getElementById('chkPwFeedback').style.display = 'block';
        isChkPw = false;
    } else {
        document.getElementById('chkPwFeedback').style.display = 'none';
        chkPw.removeEventListener;
        isChkPw = true;
    }
});


function onSubmit() {
    if (isName && isId && isPw && isPwdCheck) {
        alert('제출');
        document.getElementById('loginForm').submit();
    } else alert('빈칸을 채우세요');
}