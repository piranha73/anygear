const navSlideIn = () => {
  const burger = document.querySelector('.burger');
  const burgerDrop = document.querySelector('.burger-dropdown');
  const navLinks = document.querySelectorAll('.burger-link');

  burger.addEventListener('click', () => {
    burgerDrop.classList.toggle('burger-active');


  navLinks.forEach((link, index) => {
    if (link.style.animation) {
      link.style.animation = '';
    } else {
      link.style.animation =`burgerLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
    }
  })
});
}

// const avatarSlideIn = () => {
//     const avatar = document.querySelector('.avatar');
//     const avatarDrop = document.querySelector('.avatar-dropdown');
//     const avatarLinks = document.querySelectorAll('.avatar-link');

//     avatar.addEventListener('click', () => {
//       avatarDrop.classList.toggle('avatar-active');

//   avatarLinks.forEach((link, index) => {
//     if (link.style.animation) {
//       link.style.animation = '';
//     } else {
//       link.style.animation =`avatarLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
//     }
//   })
// });
// }

export { navSlideIn };
// export { avatarSlideIn };
