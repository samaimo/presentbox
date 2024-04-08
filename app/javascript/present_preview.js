document.addEventListener('turbo:load', function(){
  const postForm = document.getElementById('new_post');
  const previewList = document.getElementById('previews');

  if (postForm) {
    const fileField = postForm.querySelector('input[type="file"]');

    fileField.addEventListener('change', function(e) {
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      const previewWrapper = document.createElement('div');
      previewWrapper.classList.add('preview');

      const previewImage = document.createElement('img');
      previewImage.classList.add('preview-image');
      previewImage.src = blob;

      previewWrapper.appendChild(previewImage);
      
      // 古いプレビューが存在する場合は削除
      const alreadyPreview = previewList.querySelector('.preview');
      if (alreadyPreview) {
        alreadyPreview.remove();
      }

      previewList.appendChild(previewWrapper);
    });
  }
});
