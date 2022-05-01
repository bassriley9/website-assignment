const createFooter= () =>{
    let footer = document.querySelector('footer');

    footer.innerHTML = `        
    <div class = "footer-content">
        <img src = "images/icon2.jpg" class = "logo" alt="">
        <div class = "footer-ul-container">
            <ul class = "cat">
                <li class = "cat-title">categories </li>
                <li><a href="consoles.html" class = "footer-link">Consoles</a></li>
                <li><a href="laptops.html" class = "footer-link">Laptops</a></li>
                <li><a href="PC.html" class = "footer-link">PCs</a></li>
                <li><a href="Game.html" class = "footer-link">VideoGames</a></li>
                <li><a href="other.html" class = "footer-link">Other</a></li>

            </ul>
        </div>

    </div>
    <p class = "footer-title">about company</p>
    <p class = "info">It's not a story the Jedi would tell you. It's a Sith legend. 
        Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could 
        use the Force to influence the midichlorians to create life… He had such a 
        knowledge of the dark side that he could even keep the ones he cared about 
        from dying.
    </p>

    <p class = "info"> contact emails - doNotContact@Tech.com</p>
    <p class = "info"> phone #: 15631/84463</p>
    
    <p class = "footer-credit">buy tech online</p>
    `;
}

createFooter();