import Typed from "typed.js"

const navbar = document.querySelector('.navbar-foodtruck')

window.onload = (event) => {
  navbar.classList.add('transparent');
};

window.addEventListener('scroll', (event) => {
  if (window.scrollY < 800) {
    navbar.classList.add('transparent');
  } else {
    navbar.classList.remove('transparent');
  }
});

var typed = new Typed('.type', {
  strings: ["Find the best foodtrucks for your events "],
  typeSpeed: 35,
  backSpeed: 35,
  backDelay: 1000,
  loop: true,
});
