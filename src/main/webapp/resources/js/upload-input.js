$("#attachAdd").click(function() {
    const div = $("<div>");

    div.addClass("input-group");
    div.addClass("mb-3");

    const input = $("<input>");

    input.attr("type", "file");
    input.attr("name", "attach");
    input.attr("id", "inputGroupFile04");
    input.attr("aria-describedby", "inputGroupFileAddon04");
    input.attr("aria-label", "Upload");
    input.addClass("form-control");

    const button = $("<button>");
    button.attr("type", "button");
    button.addClass("btn");
    button.addClass("btn-danger");
    button.addClass("delete");
    button.text("삭제");

    div.append(input);
    div.append(button);

    $("#attaches").append(div);
});