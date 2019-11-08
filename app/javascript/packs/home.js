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
