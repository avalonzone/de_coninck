jQuery(document).ready(function () {

    // Display confirmation bootbox before wine delete
    $('[data-toggle=confirmation]').on( "click", function(e) {
        var form = $(this).closest("form");
        e.preventDefault();
        bootbox.confirm({
            title: "Effacer vin",
            message: "Etes-vous certain de vouloir effacer ce vin ?",
            callback: function(result) {
                if (result) {
                    form.submit();
                }
            }
        });
    });

    // Ajax process the form message storage
    $('#messageAjaxForm').submit(function(e) {
        e.preventDefault();
        var url = $(this).attr("action");
        let formData = new FormData(this);
        $.ajax({
                type:'POST',
                url: url,
                data: formData,
                contentType: false,
                processData: false,
                success: (response) => {
                    bootbox.alert({
                        title: "Information",
                        message: 'Votre message a bien été envoyé!',
                        callback: function() {
                            location.href = 'https://philip.avalon-zone.be/contact';
                        }
                    });
                },
                error: function(response){
                    $('#messageAjaxForm').find(".print-error-msg").find("ul").html('');
                    $('#messageAjaxForm').find(".print-error-msg").css('display','block');
                    $.each( response.responseJSON.errors, function( key, value ) {
                        $('#messageAjaxForm').find(".print-error-msg").find("ul").append('<li>'+value+'</li>');
                    });
                }
           });
    });

    // Preview the new picture before upload
    $('#inputGroupFileId').change(function() {
        const file = this.files[0];
        console.log(file);
        if (file){
          let reader = new FileReader();
          reader.onload = function(event){
            console.log(event.target.result);
            $('#wineImage').attr('src', event.target.result);
          }
          reader.readAsDataURL(file);
        }
      });
});
