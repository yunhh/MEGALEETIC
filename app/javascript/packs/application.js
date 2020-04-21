// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import 'mapbox-gl/dist/mapbox-gl.css';
// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import {burgerMenu} from "../components/menu_burger_index";

import {animateHome} from "../components/animate_home";

import {quizExplanations} from "../components/quiz_explanations";

// External imports
import "bootstrap";

// import { scrollCardShow } from "../components/scroll_card_show";

// Internal imports, e.g:
import Siema from 'siema';
import {animateSlide} from "../components/step_slides";

import { initMapbox } from '../plugins/init_mapbox';
import { initMapboxIndex } from '../plugins/init_mapbox_index';


document.addEventListener('turbolinks:load', () => {
  burgerMenu();
  initMapbox();
  initMapboxIndex();
  quizExplanations();
  animateHome();

  // scrollCardSHow();

  new Siema({
    onInit:animateSlide,
    onChange:animateSlide
  });
});
