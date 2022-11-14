
$(function () {

    // 추가한 이미지 input 삭제
    $("#deleteDiv").on("click", "#attachDelete", function () {
        const div = $(this).closest("#deleteDiv");
        console.log(div);
        div.remove();
    });

    // 이미지 추가 버튼 클릭시 생성 html
    $("#attachAdd").click(function () {
        const div = $("<div>");
        const deleteDiv = $("<div>");

        deleteDiv.attr("id", "deleteDiv")

        div.addClass("mt-3");
        div.addClass("input-group")
        div.attr("id", "attachMain");
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

        deleteDiv.append(div);
        div.append(input);
        div.append(button);

        $("#deleteDiv").append(deleteDiv);
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

$('#updateButton').click(function () {
  alert("Success Update");
})

