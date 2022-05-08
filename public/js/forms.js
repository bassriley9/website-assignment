//slect inputs

const submitBtn = document.querySelector('.submit-btn');
const loader =  document.querySelector('.loader');

const uname = document.querySelector('#name') ||null;
const email = document.querySelector('#email')|null;
const password = document.querySelector('#password')||null;
const phone = document.querySelector('#phone')||null;


submitBtn.addEventListener('click', ()=>{
   if(uname!= null) { //signup page
    if(uname.value.length < 3){
        showAlert('name must be 3 letters long');
    }
    else if(!email.value.length){
        showAlert('Enter your email');
    }
    else if(password.value.length < 8){
        showAlert('password must be 8 letters long');
    }
    else if(!phone.value.length){
        showAlert('Enter your phone number');
    }
    else if(phone.value.length!=10){
        showAlert('phone number must be 10 digits long');
    }
    else{
        //submit the forms
        loader.style.display = 'block';
        sendData('/signup',{
            uname: uname.value,
            email: email.value,
            password: password.value,
            phone: phone.value
        })
    }
   }else{
       if(!email.value.length || password.value.length)
       {
           showAlert('fill all the inputs');
       }else{
        loader.style.display = 'block';
        sendData('/login', {
            email: email.value,
            password: password.value,
        })
        }
   }
})

