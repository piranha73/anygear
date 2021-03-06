// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
Rails.start()
Turbolinks.start()
ActiveStorage.start()

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { navSlideIn } from '../components/navbar';
// import { avatarSlideIn } from '../components/navbar';
import { productSpecs } from '../components/show';
import { productDetails } from '../components/show';
import { productPolicy } from '../components/show';
import { imageCarousel } from '../components/show';

// import { toggleSorting } from '../components/sorting';
import { toggleSorting } from '../components/sorting';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  navSlideIn();

  // avatarSlideIn();
  productSpecs();
  productDetails();
  productPolicy();
  imageCarousel();

  // toggleSorting();
  toggleSorting();

});
