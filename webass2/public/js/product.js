const productImages = document.querySelectorAll(".product-images img")
const productImageSlide = document.querySelector(".image-slider")

let activeImageSlider = 0;

productImages.forEach((item, i) =>{
    item.addEventListener('click', () =>{
        productImages[activeImageSlider].classList.remove('active');
        item.classList.add('active');
        productImageSlide.style.backgroundImage = `url('${item.src}')`;
        activeImageSlider=1;
    })
})


//toggle location buttons

const sizeBtn = document.querySelectorAll('.location-radiobtn');
let checkedBtn = 0;

sizeBtn.forEach((item, i) => {
    item.addEventListener('click', () =>{
        sizeBtn[checkedBtn].classList.remove('check');
        checkedBtn=i;
    })
})