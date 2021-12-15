function previewFile() {
    var preview = document.querySelector('#<%=Avatar.ClientID %>');
    var file = document.querySelector('#<%=avatarUpload.ClientID %>').files[0];
    var reader = new FileReader();

    reader.onloadend = function () {
        preview.src = reader.result;
    }

    if (file) {
        reader.readAsDataURL(file);
    } else {
        preview.src = "";
    }
}