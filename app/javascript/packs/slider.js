import {slick} from "slick-carousel"
import $ from "jquery"

console.log("hello from slider")

$('.horrible-fact-slider').slick(
  {
    arrows: false
  });


// $('.horrible-fact-slider').on('swipe', function(event, slick, direction){
//   console.log(direction);
//   console.log(slick);
 
//   // select all with class .random-card
//    var x = document.querySelectorAll(".random-card")

//   // check their parents
//   let activeElement = null;

//   x.forEach((el) => {
//     if (el.parentElement.parentElement.getAttribute("aria-hidden") === "false") {
//       // when we find a parent with attribute aria-hidden=false => that's our active slide
//       // reselect le children pour extract le id de la carte

//       activeElement = el;
//     };
//   });

//   // extraire le fact de la carte id-fact
//   let idFact = activeElement.querySelector(".card-fact p").innerText
//   console.log(idFact)
//   // extraire la photo de la carte id-photo
//   let idPhoto = activeElement.querySelector(".card-photo img").getAttribute("src")
//   console.log(idPhoto)

//   // remove le meta tag de og-description
//   $('meta[property="og:description"]').remove();
//   $('head').append( `<meta property="og:description" content="${idFact}">` );

//   $('meta[property="og:image"]').remove();
//   $('head').append( `<meta property="og:image" content="${idPhoto}">` );

//   const fbShareBtn = document.querySelector(".fb-share-button")
//   const originalUrl = fbShareBtn.getAttribute("data-href");
//   fbShareBtn.setAttribute("data-href", originalUrl + "/horrible_facts/" + activeElement.id);


//     // ajouter le meta tag de description
//   // remove le meta tag de og-image 
//     // ajouter le meta tag de image

// });