$(function () {

    // 추가한 이미지 input 삭제
    $("#imgDiv").on("click", "#attachDelete", function () {
        const div = $(this).closest(".carousel-inner");
        div.remove();
    });

    // 이미지 추가 버튼 클릭시 생성 html
    $("#attachAdd").click(function () {
        const div = $("<div>");

        div.addClass("mt-3");
        div.addClass("input-group")
        div.attr("id", "imgDiv");
        div.css("text-align", "center")

        const input = $("<input>");
        input.attr("type", "file");
        input.attr("name", "attach");
        input.attr("id", "files");
        input.attr("id", "inputGroupFile04");
        /*input.css("visibility", "hidden");*/
        input.attr("onchange", "updateImgName('files${status.index}')");
        input.addClass("form-control")

        const button = $("<button>");
        button.text("Delete");
        button.attr("type", "button");
        button.attr("id", "attachDelete");
        button.addClass("btn-danger");
        button.addClass("btn");
        button.addClass("btn-sm");

        div.append(input);
        div.append(button);

        $("#imgDiv").append(div);
    });
});

// label for와 id가 같은 input 클릭시 이벤트 발생
function updateImg(obj) {
    let input = document.getElementById(obj);
    input.click();
}

// 이미지파일 교체시 해당 이미지의 파일 이름으로 label text를 변경
function updateImgName(obj) {
    var fileInput = document.getElementById(obj);
    console.log(fileInput.files[0])
    $("label[for=" + obj + "]").text(fileInput.files[0].name);
}

// 이미지 파일 버튼 클릭시 ajax 통신 attach_num
function deleteImg(obj) {

    var param = {
        attachNum: $("#"+obj).val(),
    }
    /*alert($("#"+obj).val());*/

    // ajax 통신
    $.ajax({
        type : "POST",            // HTTP method type(GET, POST) 형식이다.
        url : "/alcohol/imgDelete",      // 컨트롤러에서 대기중인 URL 주소이다.
        data : param,            // Json 형식의 데이터이다.
        success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
            // 응답코드 > 0000

        },
        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
            alert("통신 실패.")
        }
    });
};

