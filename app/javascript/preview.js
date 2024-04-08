window.addEventListener('DOMContentLoaded', function() {
  const imageField = document.getElementById('box-image'); // HTML内のIDを合わせる
  const preview = document.getElementById('image-preview'); // HTML内のIDを合わせる

  //要素がなければここで終了//
  if (!imageField || !preview) return null; // プレビュー用の要素が存在しない場合は終了

  imageField.addEventListener('change', function(e) {
    const file = e.target.files[0];
    const imageUrl = URL.createObjectURL(file);

    // 既存のプレビューを削除して新しいプレビューを追加
    while (preview.firstChild) {
      preview.removeChild(preview.firstChild);
    }

    const img = document.createElement('img');
    img.src = imageUrl;
    img.classList.add('preview-image');
    preview.appendChild(img);
  });
});