const hamburguer=document.querySelector('.hamburguer');
const menu=document.querySelector('.menu-navegacion');

/*console.log(hamburguer)
console.log(menu)*/

hamburguer.addEventListener('click',()=>{
   menu.classList.toggle("spread") /*esto significa cada vez que toques el menu hamburguesa vas a quitarle o ponerle la clase dependiendo si la tiene o no la tiene*/
})

window.addEventListener('click', e=>{
   if(menu.classList.contains('spread') && e.target != menu && e.target != hamburguer){
           menu.classList.toggle('spread')

   }
})