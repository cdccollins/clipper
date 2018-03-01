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
  })
}

hoverVideo();

// export {hoverVideo}
// $('video').setAttribute("mouseleave","this.pause()")
// export { hoverVideo };
// export { hideVideo };
