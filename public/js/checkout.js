//makes
/*
window.onload= () =>{
    if(!sessionStorage.user){
        location.replace('/login');
    }
}
*/

const placeOrderBtn = document.querySelector('.place-order-btn');
placeOrderBtn.addEventListener('click',() =>{
    let address = getAddress(); 
})

const getAddress= () =>{
    //validation 
    let address = document.querySelector('#address').value;
    let street = document.querySelector('#streer').value;
    let city = document.querySelector('#city').value;

    if(!address.length || !street.length || !city.length){
        return showAlert('fill all inputs first');
    }else{
        return{address, street, city};
    }
}