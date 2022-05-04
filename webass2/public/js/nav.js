const createNav = () => 
{
    let nav = document.querySelector('.navbar');

    nav.innerHTML=`
        <div class = "nav">
            <img src = "images/icon2.jpg" class = "brand-logo" alt = "">
            <div class= "nav-items">
                <div class = "search">
                    <input type = "text" class = "search-box" placeholder="search brand, product">
                    <button class="search-btn">search</button>
                </div>
                <a>
                    <img src="images/profile.png" id = "user-img" alt="">
                    <div class = "login-logout-popup hide">
                        <p class = "account-info">login as, name </p>
                        <button class "btn" id = "user-btn"> log out </button>
                    </div>
                </a>
                <a href = "cart.html"><img src="images/cart.jpg" alt=""></a>
        
            </div>

        </div>
        <ul class = "link-container">
            <li class = "Link-item"><a href = "index.html" class = "Link">Home</a></a></li>
            <li class = "Link-item"><a href = "consoles.html" class = "Link">Consoles</a></a></li>
            <li class = "Link-item"><a href = "laptops.html" class = "Link">Laptops</a></a></li>
            <li class = "Link-item"><a href = "PC.html" class = "Link">PCs</a></a></li>
            <li class = "Link-item"><a href = "Game.html" class = "Link">Video Games</a></a></li>
            <li class = "Link-item"><a href = "other.html" class = "Link">Miscellaneous</a></a></li>
        </ul>    
    `;
}

createNav();

const userImageButton = document.querySelector('#user-img');
const userPopup = document.querySelector('.login-logout-popup');
const popuptext = document.querySelector('.account-info');
const actionBtn = document.querySelector('#user-btn');

userImageButton.addEventListener('click',()=>{
    userPopup.classList.toggle('hide');
})

window.onload = () =>{
    let user = JSON.parse(sessionStorage.user || null);
    if(user!= null){
        popuptext.innerHTML = `login as, ${user.name}`;
        actionBtn.innerHTML = 'log out';
        actionBtn.addEventListener('click',()=>{
            sessionStorage.clear();
            location.reload();
        })
    }else{
        popuptext.innerHTML = 'login to place order';
        actionBtn.innerHTML = 'login';
        actionBtn.addEventListener('click',()=>{
            location.href = '/login';
        })
    }
}