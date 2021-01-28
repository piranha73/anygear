const productSpecs = () => {
  const specsHeader = document.querySelector('.specs')
  const specsText = document.querySelector('.products-specs')
  const icon = document.querySelector('.arrow1');

  specsText.style.display = "none";


  specsHeader.addEventListener('click', () => {
    if (specsText.style.display === "none") {
      specsText.style.display = "block";
      icon.classList.remove('arrow1');
      icon.classList.add('arrow1-up');
    } else {
      specsText.style.display = "none";
      icon.classList.remove('arrow1-up');
      icon.classList.add('arrow1');
    }
  })

   icon.addEventListener('click', () => {
    if (specsText.style.display === "none") {
      specsText.style.display = "block";
      icon.classList.remove('arrow1');
      icon.classList.add('arrow1-up');
    } else {
      specsText.style.display = "none";
      icon.classList.remove('arrow1-up');
      icon.classList.add('arrow1');
    }
  })

};

const productDetails = () => {
  const productsHeader = document.querySelector('.details')
  const productsText = document.querySelector('.products-details')
  const icon = document.querySelector('.arrow2');

  productsText.style.display = "none";

  productsHeader.addEventListener('click', () => {
    if (productsText.style.display === "none") {
      productsText.style.display = "block";
      icon.classList.remove('arrow2');
      icon.classList.add('arrow2-up');
    } else {
      productsText.style.display = "none";
      icon.classList.remove('arrow2-up');
      icon.classList.add('arrow2');
    }
  })

  icon.addEventListener('click', () => {
    if (productsText.style.display === "none") {
      productsText.style.display = "block";
      icon.classList.remove('arrow2');
      icon.classList.add('arrow2-up');
    } else {
      productsText.style.display = "none";
      icon.classList.remove('arrow2-up');
      icon.classList.add('arrow2');
    }
  })

};

const productPolicy = () => {
  const policyHeader = document.querySelector('.policy')
  const policyText = document.querySelector('.products-policy')
  const icon = document.querySelector('.arrow3');

  policyText.style.display = "none";

  policyHeader.addEventListener('click', () => {
    if (policyText.style.display === "none") {
      policyText.style.display = "block";
      icon.classList.remove('arrow3');
      icon.classList.add('arrow3-up');
    } else {
      policyText.style.display = "none";
      icon.classList.remove('arrow3-up');
      icon.classList.add('arrow3');
    }
  })

  icon.addEventListener('click', () => {
    if (policyText.style.display === "none") {
      policyText.style.display = "block";
      icon.classList.remove('arrow3');
      icon.classList.add('arrow3-up');
    } else {
      policyText.style.display = "none";
      icon.classList.remove('arrow3-up');
      icon.classList.add('arrow3');
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






export { productSpecs };
export { productDetails };
export { productPolicy };
export { imageCarousel };
// export { rotatingArrow1 };
