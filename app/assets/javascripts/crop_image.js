$(function () {
  let $image = $('#imageModal'),
    $img_field = $('#user_image'),
    $croppedImage = $('#croppedImage'),
    $cropModal = $('#cropModal'),
    $beforeUpload = $('#beforeUpload'),
    $button = $('#btn-save'),
    $dataX = $('#dataX'),
    $dataY = $('#dataY'),
    $dataWidth = $('#dataWidth'),
    $dataHeight = $('#dataHeight');

  let options = {
    dragmode: 'crop',
    aspectRatio: 1/1,
    restore: false,
    guides: false,
    center: false,
    highlight: true,
    cropBoxMovable: true,
    cropBoxResizable: true,
    modal: true,
    ready: ()　=> {
      croppable = true;
    },
    // select field for display preview
    crop: (e) => {
      $dataX.val(Math.round(e.detail.x));
      $dataY.val(Math.round(e.detail.y));
      $dataWidth.val(Math.round(e.detail.width));
      $dataHeight.val(Math.round(e.detail.height));
    }
    // preview: '#preview'
  };

  // when file upload
  $img_field.change((e) => {
    console.log('start')
    $image.cropper('destroy').removeAttr('src');
    file = e.target.files[0];
    reader = new FileReader();
    if (file.type.indexOf('image') < 0) {
      window.alert("画像を選択してください");
      return ;
    }
    reader.onload = ((e) => {
      $image.attr('src',"");
      $image.attr('src', e.target.result);
      $cropModal.modal('show');
      $cropModal.on('shown.bs.modal', () => {
        $image.cropper(options);
      });
    });
    reader.readAsDataURL(file);
  })
  // on save button
  $button.click(() => {
    imgCropping();
  });

  // modalを閉じたとき、cropper要素を初期化
  $cropModal.on('hidden.bs.modal',function() {
    $image.cropper('destroy').removeAttr('src');
    let $cropperContainer = $('.cropper-container');
    $cropperContainer.remove();
  });

  // display preview
  function imgCropping() {
    if (!croppable) {
      alert('トリミングする画像が用意されていません')
      return false;
    }
    $beforeUpload.hide();
    let croppedData = $image.cropper('getCroppedCanvas').toDataURL();
    $croppedImage.attr('src', croppedData);
    $cropModal.modal('hide');
  }
});

