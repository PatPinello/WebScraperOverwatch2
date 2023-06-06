function myFunction() {
    fetch("C:/Users/patri/Music/WebscraperOverwatch2/WebScraperOverwatch2/Ninjaman7000-1418_Eliminations_MostinGame.json")
        .then((res) => {
        return res.json();
    })
    .then((data) => alert(data));
}