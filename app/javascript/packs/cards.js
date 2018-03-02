// var figure = $(".video");
//     var vid = $("video");

//     [].forEach.call(figure, function (item) {
//             item.addEventListener('mouseover', hoverVideo, false);
//             item.addEventListener('mouseout', hideVideo, false);
//     });

//     function hoverVideo(e) {
//             $('video').play();
//     }

//     function hideVideo(e) {
//             $('video').pause();
//     }
const hoverVideo = () => {
  const videos = document.querySelectorAll('video')

  videos.forEach((video) => {
    video.setAttribute("onmouseenter", "this.play()")
    video.setAttribute("onmouseleave", "this.pause()")
    // video.onmouseover = javascript-hover.classList("onmouseenter", "this.addClass display-title")
    // video.setAttribute("onmouseleave", "this.removeClass display-title")
  })
}

hoverVideo();

// export {hoverVideo}
// $('video').setAttribute("mouseleave","this.pause()")
// export { hoverVideo };
// export { hideVideo };
