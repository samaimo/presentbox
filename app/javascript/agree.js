function handlePageTransition() {
  // チェックボックスが存在するか確認する
  const isAgreed = document.querySelector('#check');
  if (!isAgreed) {
    // console.error('チェックボックスが見つかりません');
    return; // チェックボックスがない場合、関数を終了する
  }

  // チェックボックスが存在する場合、ボタンとイベントリスナーを設定する
  const btn = document.querySelector('#bnt');
  if (btn) {
    // 既存のイベントリスナーを削除する
    isAgreed.removeEventListener('change', handleCheckboxChange);

    // 新しいイベントリスナーを追加する
    isAgreed.addEventListener('change', handleCheckboxChange);
  } else {
    console.error('ボタンが見つかりません');
  }
}

function handleCheckboxChange() {
  const isAgreed = document.querySelector('#check');
  const btn = document.querySelector('#bnt');

  if (isAgreed.checked === true) {
    btn.disabled = false;
  } else {
    btn.disabled = true;
  }
}

// ページ遷移時にhandlePageTransition関数を実行する
document.addEventListener('turbo:load', handlePageTransition);
// document.addEventListener('turbo:render', handlePageTransition);
