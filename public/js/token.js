let char = `123abcde.fmnopqlABCDE@FJKLMNOPQRSTUVWXYZ456789stuvwxyz0!#$%&ijkrgh'*+-/=?^_${'`'}{|}~`;

const generateToken = (key) => {
    let token = '';
    for(let i = 0; i < key.length;i=i+2 ){
        let index = char.indexOf(key[i])||char.length/2;
        let randomIndex = Math.floor(math.random() * index);
        token+= char[randomIndex] + char[index - randomIndex];
    }
    return token;
}

//common funciotns

//send data function to server
const sendData = (path, data) =>{
    fetch(path, {
        method: 'post',
        headers: new Headers({'Content-Type': 'application/json'}),
        body: JSON.stringify(data)
    }).then((res)=> res.json())
    .then(response=> {
        processData(response);
    })
}

const processData = (data) =>{
    console.log(data);
    loader.style.display = null;
    if(data.alert){
        showAlert(data.alert);
    } else if(data.name){
      data.authoToken = generateToken(data.email);
      sessionStorage.user = JSON.stringify(data);
      location.replace('/');
    }
}

const showAlert = (msg) =>{
    let alertBox = document.querySelector('.alert-box');
    let alertMsg = document.querySelector('.alert-msg');
    alertMsg.innerHTML = msg;
    alertBox.classList.add('show');
    setTimeout(()=>{
        alertBox.classList.remove('show');
    }, 3000)
}