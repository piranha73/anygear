const navSlideIn = () => {
  const burger = document.querySelector('.navbar1__burger');
  const burgerDrop = document.querySelector('.navbar1__burger-dropdown');
  const navLinks = document.querySelectorAll('.navbar1__burger-link');

  burger.addEventListener('click', () => {
    burgerDrop.classList.toggle('burger-active');


    navLinks.forEach((link, index) => {
      if (link.style.animation) {
        link.style.animation = '';
      } else {
        link.style.animation =`burgerLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
      }
    })
  })
};

export { navSlideIn };

