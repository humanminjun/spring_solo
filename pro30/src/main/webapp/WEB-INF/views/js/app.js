const loginForm = document.querySelector("#login-form");
const loginInput = document.querySelector("#login-form input "); 
const greeting = document.querySelector("#greeting");

const HIDDEN_CLASSNAME = "hidden";
const USERNAME_KEY = "username";



//
function onLoginSubmit(event){
    event.preventDefault();//기본동작을 막아 브라우저가 아무것도 못하게 함
    loginForm.classList.add(HIDDEN_CLASSNAME);//로그인폼에 다시 히든 클래스 적용
    const username = loginInput.value;//input값을 변수로 저장
    localStorage.setItem(USERNAME_KEY, username);//로컬저장소에 username_key 형태로 username 저장
    paintGreetings();//input 에 적었던 값을 인자로 넣어주고 텍스트도 넣어줌
}

//중복되는 코드를 함수로 묶어서 가독성 증가
function paintGreetings(){
        const username = localStorage.getItem(USERNAME_KEY);
    greeting.innerText = `Hello ${username}`;
    greeting.classList.remove(HIDDEN_CLASSNAME);
}

const savedUsername = localStorage.getItem(USERNAME_KEY);

if(savedUsername === null){
    loginForm.classList.remove(HIDDEN_CLASSNAME);
    loginForm.addEventListener("submit", onLoginSubmit);
}else{
    paintGreetings();
}

