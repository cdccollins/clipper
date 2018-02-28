function initUpdateNavbarOnScroll() {



  const navbar = document.querySelector('.navbar-wagon');
  navbar.classList.add('navbar-wagon-home');
  window.addEventListener('scroll', () => {
    if (window.scrollY === null) {
      navbar.classList.add('navbar-wagon-home');
    } else if (window.scrollY < screen.height * 0.7) {
      navbar.classList.add('navbar-wagon-home');
    } else {
      navbar.classList.remove('navbar-wagon-home');
    }
  });
}
console.log("Hello!")



export { initUpdateNavbarOnScroll };

