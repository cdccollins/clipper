function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= screen.height * 0.4) {
      navbar.classList.add('navbar-wagon-black');
    } else {
      navbar.classList.remove('navbar-wagon-black');
    }
  });
}
console.log("Hello!")



export { initUpdateNavbarOnScroll };
