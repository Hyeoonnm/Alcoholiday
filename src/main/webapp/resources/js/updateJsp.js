$(document).ready(function () {
    $('#imgDiv :first-child').addClass('active');
});

$(function () {

    // 이미지 추가한 것 삭제하는 기능
    $("#attachMain").on("click", "#attachDelete", function () {
        const div = $(this).closest(".input-group");
        div.remove();
    });


    // 이미지 추가 버튼
    $("#attachAdd").click(function () {
        const div = $("<div>");
        div.addClass("input-group mt-3");

        const input = $("<input>");
        input.addClass("form-control");
        input.attr("type", "file");
        input.attr("name", "attach");
        input.attr("id", "inputGroupFile04");
        input.attr("aria-describedby", "inputGroupFileAddon04");
        input.attr("aria-label", "Upload");

        const button = $("<button>");
        button.text("Delete");
        button.attr("type", "button");
        button.attr("id", "inputGroupFileAddon04");
        button.attr("id", "attachDelete");
        button.addClass("btn-danger");
        button.addClass("btn");
        button.addClass("btn-sm")


        div.append(input);
        div.append(button);

        $("#attachMain").append(div);
    });
});


function updateImg(obj) {
    let input = document.getElementById(obj)
    input.click();
}

function updateImgName(obj) {
    console.log(obj)
    alert(obj);
    let label = document.getElementById(obj.toString());
    console.log(label);
    $("label[for="+obj+"]").text('변경할 텍스트');
}
