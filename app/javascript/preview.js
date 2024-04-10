window.addEventListener('DOMContentLoaded', function() {
  const imageField = document.getElementById('box-image');
  const preview = document.getElementById('image-preview');

  if (!imageField || !preview) return null;

  function updatePreview() {
    const file = imageField.files[0];

    // 新しい FileReader を作成して画像を読み込む
    const reader = new FileReader();

    reader.onload = function(event) {
      // 既存のプレビューを削除して新しいプレビューを追加
      while (preview.firstChild) {
        preview.removeChild(preview.firstChild);
      }

      // 新しい画像をプレビューに追加
      const img = document.createElement('img');
      img.src = event.target.result;
      img.classList.add('preview-image');
      preview.appendChild(img);
    };

    // ファイルがあれば読み込む
    if (file) {
      reader.readAsDataURL(file);
    }
  }

  // ページ読み込み時とファイル選択時にプレビューを更新
  imageField.addEventListener('change', updatePreview);
});
