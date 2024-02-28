$('.C-mianimg').slick({
    slidesToShow: 1, //한번에 보여줄 슬라이드 아이템 개수
    slidesToScroll: 1, //한번에 넘길 슬라이드 아이템 개수
    infinite: true, //무한반복
    autoplay: true, //슬라이드 자동 시작
    autoplaySpeed: 2000, //슬라이드 자동 넘기기 시간(1000ms = 1초)
    pauseOnHover: false, //마우스 호버 시 슬라이드 멈춤
    speed: 1800 //모션 시간(현재 1.8초)
});

$( document ).ready( function() {
    $('.C-classlist').slick({
slidesToShow: 3, //한번에 보여줄 슬라이드 아이템 개수
slidesToScroll: 1, //한번에 넘길 슬라이드 아이템 개수
autoplay: true, //슬라이드 자동 시작
autoplaySpeed: 2000, //슬라이드 자동 넘기기 시간(1000ms = 1초)
arrows: true //이전 다음 버튼 표시 여부
});
} );