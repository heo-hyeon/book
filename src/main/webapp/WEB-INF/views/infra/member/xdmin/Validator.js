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
	let isPwd = false;
	let isPwdCheck = false;

	memberName.addEventListener('keyup', () => {
	    if (memberName.value == '' || !nameRegex.test(memberName.value)) {
		alert("ddd");
	        isName = false;
	    } else {
	        document.getElementById('nameFeedback').style.display = 'none';
	        memberName.removeEventListener;
	        isName = true;
	    }
	});

	memberID.addEventListener('keyup', () => {
	    if (memberID.value == '' || !idRegex.test(memberID.value)) {
	        document.getElementById('ifIDFeedback').style.display = 'block';
	        isId = false;
	    } else {
	        document.getElementById('ifIDFeedback').style.display = 'none';
	        memberID.removeEventListener;
	        isId = true;
	    }
	});

	pwd.addEventListener('keyup', () => {
	    if (pwd.value == '' || !pwdRegex.test(pwd.value)) {
	        document.getElementById('pwdFeedback').style.display = 'block';
	        isPwd = false;
	    } else {
	        document.getElementById('pwdFeedback').style.display = 'none';
	        pwd.removeEventListener;
	        isPwd = true;
	    }
	});

	pwdCheck.addEventListener('keyup', () => {
	    if (pwdCheck.value !== pwdCheck.value) {
	        document.getElementById('pwdCheckFeedback').style.display = 'block';
	        isPwdCheck = false;
	    } else {
	        document.getElementById('pwdCheckFeedback').style.display = 'none';
	        pwdCheck.removeEventListener;
	        isPwdCheck = true;
	    }
	});


	function onSubmit() {
	    if (isName && isId && isPwd && isPwdCheck) {
	        alert('제출');
	        document.getElementById('loginForm').submit();
	    } else alert('빈칸을 채우세요');
	}