function post (){
  console.log("イベント発火");
};

window.addEventListener('turbo:load', post);