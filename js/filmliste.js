export default class Filmliste{

    constructor() {
        this.data ={
            password: 'Filmbase'
        }

        this.rootElem = document.querySelector('.filmliste');
        this.filter = this.rootElem.querySelector('.filter')
        this.items = this.rootElem.querySelector('.items')

        this.nameSearch = this.filter.querySelector('.nameSearch')
        this.priceSearch = this.filter.querySelector('.priceSearch')
        this.genreSearch = this.filter.querySelector('.genreSearch')

    }
   async init(){

        this.nameSearch.addEventListener('input', () =>{
            if (this.nameSearch.value.length >= 3 ){
                this.render()
            }
        });
       this.priceSearch.addEventListener('input', () =>{
           if (this.priceSearch.value.length >= 2 ){
               this.render()
           }
       });

       this.genreSearch.addEventListener('input', () =>{
           if (this.genreSearch.value.length >= 3 ){
               this.render()
           }
       });

        await this.render();
    }

    async render(){
     const data = await this.getData();
       const row = document.createElement('div');
        row.classList.add('row');
        console.log(data)

        for (const item of data){
            const col  = document.createElement('div');
            col.classList.add('col-md-6', 'col-lg-4', 'col-xl-3');

            col.innerHTML = `
            <div class="card">
            ${(item.FilmBillede) ? `<img src="uploads/${item.FilmBillede}" class="card-img-top" >` : "Ingen billede" }
            
            <div class="card-body">
            <h5 class="card-title">${item.FilmNavn}</h5>
            <p class="card-text">${item.FilmPris}</p>
            <p class="card-text">${item.FilmBeskrivelse}</p>
            <a href="filmside.php?Filmid=${item.FilmId}" class="btn btn-primary text-white w-100">se film</a>

            </div>
            
             
             </div> 
            
            `;
            row.appendChild(col)
        }

        this.items.innerHTML= '';
        this.items.appendChild(row)

    }

    async getData(){

     this.data.nameSearch = this.nameSearch.value;
        this.data.priceSearch = this.priceSearch.value;
        this.data.genreSearch = this.genreSearch.value;

 const  response = await fetch('api.php', {
     method: "POST",
     body: JSON.stringify(this.data)

 })
        return await response.json();
    }
};

