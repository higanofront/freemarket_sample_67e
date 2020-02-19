$(function(){
  // const buildFile = (index)=> {
  //   var html = `<div data-index="${index}" class="contents__image__form__text__js-file_group">
  //                   <input class="contents__image__form__text__js-file_group__file" type="file"
  //                   name="item[photos_attributes][${index}][image]"
  //                   id="item_photos_attributes_${index}_image"><br>
  //                   <div class="js-remove"　data-index="${index}">削除</div>
  //                 </div>`;
  //   return html;
  // }
  var buildFile = (index)=> {
    var html = `<div class="contents__image__main__right__group" data-index="${index}">
    <input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${index}][image]" id="item_photos_attributes_${index}_image">
    </div>`;
    return html;
  }
 
  //   // プレビュー用のimgタグを生成する関数
  // var buildImg = (index, url)=> {
  //   const html = `<img data-index="${index}" src="${url}"  width="100px" height="100px">`;
  //   return html;
  // }
  var buildImg = (index, url)=> {
    const html = `<div class="contents__image__main__box" data-index="${index}"><div class="contents__image__main__box__image" data-index="${index}">
    <img data-index="${index}" src="${url}" width="100px" height="100px"></div>
      <div class="contents__image__main__box__btns">
        <div class="contents__image__main__box__btns__remove" data-index="${index}">削除</div>
      </div>
      </div>`;
    return html;
  }
  var inputfile = (index)=>{`<input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${index}][image]" id="item_photos_attributes_${index}_image">`}
  var group = (index)=>`<div class="contents__image__main__right__group" data-index=${index}>
  <input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${index}][image]" id="item_photos_attributes_${index}_image">
  </div>`
  //file_fieldのnameに動的なindexをつけるための配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
    lastIndex = $('.contents__image__form__text__js-file_group:last').data("index")
    fileIndex.splice(0, lastIndex);
    $(".hidden-destroy").hide();
    $('#image-box').on('change', '.contents__image__main__right__group__file', function(e) {
  // $('#image-box').on('change', '.contents__image__form__text__js-file_group__file', function(e) {
    const targetIndex = $(this).parent().data("index");
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('image', blobUrl);
    } else {  // 新規画像追加の処理
      $('.contents__image__main').prepend(buildImg(targetIndex, blobUrl));
      // $('.contents__image__form__text').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('#image-box').append(buildFile(fileIndex[0]));
      var labelIndex = targetIndex + 1;
      $('#label').attr('for', `item_photos_attributes_${labelIndex}_image`);
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });
  // $(".contents__image__main").on("click", ".contents__image__main__box__btns__remove",function(){
    $(document).on("click", ".contents__image__main__box__btns__remove",function(){
    const targetIndex = $(this).data('index');
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    if (hiddenCheck) hiddenCheck.prop('checked', true);
    $(this).parent().parent().remove();
    // console.log(a);
      $(`img[data-index="${targetIndex}"]`).remove();
      // buildImg()
      // console.log($(`img[data-index="${targetIndex}"]`));
      // console.log(buildFile(targetIndex));
      // buildFile(targetIndex).remove();
      // $(".contents__image__main__right__group__file").remove();
      // $(`<input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${targetIndex}][image]" id="item_photos_attributes_${targetIndex}_image">`)[targetIndex].remove();
      // $(`<input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${targetIndex}][image]" id="item_photos_attributes_${targetIndex}_image">`)[0].remove();
      // $("input[type='item[photos_attributes][${targetIndex}][image]']").remove();
      // console.log(group(targetIndex));
      // $('.contents__image__main__right').remove(group(targetIndex));
      $(`<div class="contents__image__main__right__group" data-index="${targetIndex}">
      <input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${targetIndex}][image]" id="item_photos_attributes_${targetIndex}_image">
      </div>`).remove();
      // $(group(targetIndex)).remove();
      // console.log($(`<input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${targetIndex}][image]" id="item_photos_attributes_${targetIndex}_image">`))
      // console.log($(`<input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${targetIndex}][image]" id="item_photos_attributes_${targetIndex}_image">`));
    });
  

    // console.log(targetIndex);
    // $(`<input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][0][image]" id="item_photos_attributes_0_image">`).removeAttr("name");
    // // a = $(`${inputfile(targetIndex)}`)
    // // console.log(a);
    // $(`<input class="contents__image__main__right__group__file" type="file" name="item[photos_attributes][${targetIndex}][image]" id="item_photos_attributes_${targetIndex}_image">`).removeAttr("id");
    // 画像入力欄が0個にならないようにしておく
    if ($(".contents__image__form__text__js-file_group__file").length == 0) $("image-box").append(buildFile(fileIndex[0]));
 
});


