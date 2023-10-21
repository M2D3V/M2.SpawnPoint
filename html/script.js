window.addEventListener('message', function (event) {
  var data = event.data;
  if (data.type === 'ui') {
    if (data.action) {
      $('#warp_img').attr('src',data.WaitImage);
      $('#warp_subject').text(data.WaitTitle);
      $('#warp_detail').text(data.WaitText);
      callLoadScreenWarp()
    }
  } else if (data.type === 'first'){
    $('#warp_subject').text(data.WaitTitle);
    $('#warp_detail').text(data.WaitText);
    $('#warp_logo').attr('src',data.WaitLogo);
    $('#warp_img').attr('src',data.WaitImage);
    $('#warp_timer').text(data.WarpWait);
    $('body').data('waitWarp', data.WarpWait);
    $('body').data('delay', data.Delay);
    post({result:true},'ready');
  }
  $('.bodylockleg').click(function (e) {
    LocklegSubmit();
  });
});
function LocklegSubmit() {
  $('.container-mainall').css('display', 'none');
  $('.mainlockleg').fadeOut(400);
  post({result:false},'freeze');
}
function callLoadScreenWarp() {
  post({result:false},'ready');
  var delays = $('body').data('delay');
  var seconds = $('body').data('waitWarp');
  var cvr = $("#cover");
  cvr.fadeIn(400);
  let timer = setInterval(function() {
    seconds--;
    if (seconds < 0) {
      cvr.fadeOut(400);
      $('.mainlockleg').fadeIn(400);
      $("#warp_timer").text($('body').data('waitWarp'));
      clearInterval(timer);
    } else {
      $("#warp_timer").text(seconds);
    }
  }, 1000);
  let delay = setInterval(function() {
    delays--;
    if (delays < 0) {
      post({result:true},'ready');
      clearInterval(delay);
    }else{

    }
  }, 1000);
}
function post(arr,fn) {
  fetch(`https://${GetParentResourceName()}/${fn}`, {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json; charset=UTF-8',
    },
    body: JSON.stringify(arr)
  }).then(resp => resp.json()).then(resp => console.log(resp));
}
document.onkeyup = function (data) {  // ฟังก?ชั่น ปุ่มกดปิดUI 
  // console.log(data.which); // debug เช็ค เลขปุ่ม
  if (data.which == 13) { // 13 -- ENTER
    if ($('.mainlockleg').css('display') === 'block') {
      LocklegSubmit();
    }
    return;
  }
};