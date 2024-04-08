// const items = document.querySelectorAll('.post-index-image')
// // console.log(items);

// for (let i = 0 ; i < items.length; i++) {
//   const keyframes = {
//   opacity: [0,1]
// };

//   const options = {
//     duration: 600,
//     delay: i*300,
//     fill: 'forwards'
//   };

//   items[i].animate(keyframes,options);
// }

function animateImages() {
  const items = document.querySelectorAll('.post-index-image');

  for (let i = 0; i < items.length; i++) {
    const keyframes = {
      filter: ['blur(20px)', 'blur(0)'],
    };

    const options = {
      duration: 600,
      delay: i * 300,
      fill: 'forwards'
    };

    items[i].animate(keyframes, options);
  }
}

document.addEventListener('turbo:load', animateImages);
document.addEventListener('turbo:render', animateImages);
