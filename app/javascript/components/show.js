const productSpecs = () => {
  const specsHeader = document.querySelector('.specs')
  const specsText = document.querySelector('.products-specs')
  // const icon = document.querySelector('.arrow1');

  specsText.style.display = "none";


  specsHeader.addEventListener('click', () => {
    if (specsText.style.display === "none") {
      specsText.style.display = "block";
      // icon.classList.toggle('arrow1.up');
    } else {
      specsText.style.display = "none";
      // icon.classList.toggle('arrow1');
    }
  })

};

const productDetails = () => {
  const productsHeader = document.querySelector('.details')
  const productsText = document.querySelector('.products-details')

  productsText.style.display = "none";

  productsHeader.addEventListener('click', () => {
    if (productsText.style.display === "none") {
      productsText.style.display = "block";
    } else {
      productsText.style.display = "none";
    }
  })

};

const productPolicy = () => {
  const policyHeader = document.querySelector('.policy')
  const policyText = document.querySelector('.products-policy')

  policyText.style.display = "none";

  policyHeader.addEventListener('click', () => {
    if (policyText.style.display === "none") {
      policyText.style.display = "block";
    } else {
      policyText.style.display = "none";
    }
  })

};


const imageCarousel = () => {

  const carouselSlide = document.querySelector(".carousel-slide");
  const carouselImages = document.querySelectorAll(".carousel-slide img");

  const prevBtn = document.querySelector("#prevBtn");
  const nextBtn = document.querySelector("#nextBtn");

  const lastClone = document.querySelector("#lastClone");
  const firstClone = document.querySelector("#firstClone")

  let counter = 1;
  const size = carouselImages[0].clientWidth;

  carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';


  nextBtn.addEventListener('click', () => {
    if (counter >= carouselImages.length -1) return;
    carouselSlide.style.transition = "transform 0.4s ease-in-out";
    counter++;
    carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
  });

  prevBtn.addEventListener('click', () => {
    if (counter <= 0) return;
    carouselSlide.style.transition = "transform 0.4s ease-in-out";
    counter--;
    carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
  });


  carouselSlide.addEventListener('transitionend', () => {
    if (carouselImages[counter] === lastClone ) {
      carouselSlide.style.transition = 'none';
      counter = carouselImages.length -2;
      carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
    }
    if (carouselImages[counter] === firstClone ) {
      carouselSlide.style.transition = 'none';
      counter = carouselImages.length - counter;
      carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
    }
  });

};

// const productSpecs = () => {
//   const specsHeader = document.querySelector('.specs')
//   const specsText = document.querySelector('.products-specs')

//   specsText.style.display = "none";

//   specsHeader.addEventListener('click', () => {
//     if (specsText.style.display === "none") {
//       specsText.style.display = "block";
//     } else {
//       specsText.style.display = "none";
//     }
//   })

// };


// $(".rotate").click(function () {
//     $(this).toggleClass("down");
// })

  // const arrow1 = document.querySelector(".rotate1")

  // arrow1.addEventListener('click', () => {
  //   this.toggleClass("down")
  // });

// const rotatingArrow1 = () => {

  // const div = document.getElementById('.icon-container1');
  // const icon = document.getElementById('.fas fa-angle-down arrow1');


  //   div.addEventListener('click', () => {
  //   icon.classList.toggle('arrow1-up');


  //   });
// };




export { productSpecs };
export { productDetails };
export { productPolicy };
export { imageCarousel };
// export { rotatingArrow1 };
