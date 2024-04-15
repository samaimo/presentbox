document.addEventListener('DOMContentLoaded', () => {
  const isAgreed = document.querySelector('#check');
  const btn = document.querySelector('#bnt');

  if (isAgreed && btn) {
    isAgreed.addEventListener('change', () => {
      // console.log(isAgreed.checked);
        // チェックボックスにチェックが入っているなら
        if (isAgreed.checked === true){
          // ボタンの無効化を無しにする
          btn.disabled = false;
        // そうじゃなかったら
        } else {
          btn.disabled = true;
        }


    });
  } else {
    console.error('要素が見つかりません');
  }
});