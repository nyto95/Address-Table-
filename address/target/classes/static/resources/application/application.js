var Application = (function (Application) {
    var self = Application;

    var table;

    Application.start = function () {
        buildAddressTable();
    };

    var buildAddressTable = function () {
        var tableHtml = buildTable();
        $("#body").append(tableHtml);
        table = tableHtml.find(".address-book-table").DataTable({
            ajax: {
                url: "list",
                dataSrc: function (response) {
                    console.log(response);
                    return response;
                }
            },
            bLengthChange: false,
            rowId: function (address) {
                return 'address_' + address.id;
            },
            columns: [
                {'data': 'id'},
                {'data': 'email'},
                {'data': 'firstName'},
                {'data': 'lastName'}
            ],
            columnDefs: [
                {
                    targets: 4,
                    className: "actions",
                    render: function (data, type, row) {

                        return $('<div>').append(
                            $('<button>').addClass('btn btn-primary').addClass("edit-contact").append(
                                $('<i>').addClass('far fa-edit')
                            )
                        ).append(
                            $('<button>').addClass('btn btn-danger ml-2').addClass("delete-contact").append(
                                $('<i>').addClass('fas fa-trash')
                            )
                        )[0].outerHTML;
                    }
                }
            ],

            drawCallback: function () {
                registerActions();
            }

        });

    };

    var registerActions = function () {
        registerDeleteAction();
        registerEditAction();
        registerAddAction();
    };


    var registerDeleteAction = function () {
        $(".delete-contact").on("click", function () {
            var tr = table.row($(this).closest("tr"));
            var contact = tr.data();
            $.ajax({
                type: "POST",
                url: "delete",
                data: JSON.stringify(contact),
                contentType: "Application/Json",
                success: function (response) {
                    table.row(tr).remove().draw();
                }
            })

        })
    };

    var registerEditAction = function () {
        $(".edit-contact").off("click");
        $(".edit-contact").on("click", function () {
            var tr = table.row($(this).closest("tr"));
            var contact = tr.data();
            var modal = $("#exampleModal").clone().attr("id", 'contact-edit-modal').removeClass("d-none");
            var form = generateContactForm();
            form.find(".email-input").val(contact.email);
            form.find(".firstname-input").val(contact.firstName);
            form.find(".lastname-input").val(contact.lastName);
            modal.find(".modal-body").append(form);
            modal.find(".save-changes").on("click", function () {
                contact.email = form.find(".email-input").val();
                contact.firstName = form.find(".firstname-input").val();
                contact.lastName = form.find(".lastname-input").val();
                $.ajax({
                    url: "save",
                    type: "POST",
                    data: JSON.stringify(contact),
                    contentType: "Application/Json",
                    success: function (newContact) {
                        table.row(tr).data(newContact).invalidate().draw();
                        modal.modal("hide");
                    }
                })
            });
            modal.modal("show");
        })
    };

    var registerAddAction = function () {
        $(".add-contact").off("click");
        $(".add-contact").on("click", function () {
            var modal = $("#exampleModal").clone().attr("id", 'contact-edit-modal').removeClass("d-none");
            var form = generateContactForm();
            modal.find(".modal-body").append(form);
            modal.find(".save-changes").on("click", function () {
                var contact = {};
                contact.email = form.find(".email-input").val();
                contact.firstName = form.find(".firstname-input").val();
                contact.lastName = form.find(".lastname-input").val();
                $.ajax({
                    url: "save",
                    type: "POST",
                    data: JSON.stringify(contact),
                    contentType: "Application/Json",
                    success: function (newContact) {
                        table.row.add(newContact).draw().node();
                        modal.modal("hide");
                    }
                })
            });
            modal.modal("show");
        })
    };

    var generateContactForm = function () {
        var form = $("<form>");
        form.append(
            $("<div>").addClass("form-group row").append($("<label>").addClass("col-sm-3 col-form-label").html("Email")).append(
                $("<div>").addClass("col-sm-9").append($("<input>").attr("type", "email").addClass("form-control email-input"))))
            .append(
                $("<div>").addClass("form-group row").append($("<label>").addClass("col-sm-3 col-form-label").html("First name")).append(
                    $("<div>").addClass("col-sm-9").append($("<input>").attr("type", "text").addClass("form-control firstname-input"))))
            .append(
                $("<div>").addClass("form-group row").append($("<label>").addClass("col-sm-3 col-form-label").html("Last name")).append(
                    $("<div>").addClass("col-sm-9").append($("<input>").attr("type", "text").addClass("form-control lastname-input"))));
        return form;
    };


    var buildTable = function () {
        var card = createCard();
        card.find(".card-body").append(
            $('<div>').addClass('table-responsive').append(
                $('<table>').addClass('table table-sm w-100').addClass("address-book-table").append(
                    $('<thead>').append(
                        $('<tr>').append(
                            $('<th>').html('Id')
                        ).append(
                            $('<th>').html('Email')
                        ).append(
                            $('<th>').html('First Name')
                        ).append(
                            $('<th>').html('Last Name')
                        ).append(
                            $('<th>')
                        )
                    )
                ).append(
                    $('<tbody>')
                ).append(
                    $('<tfoot>')
                )
            )
        );
        return card;

    };

    var createCard = function () {
        return $('<div>').addClass('card mt-5').append(
            $('<div>').addClass('card-body').append(
                $('<div>').addClass('card-title font-normal')
            )
        ).append(
            $('<div>').addClass('card-footer').append(
                $("<btn>").addClass("btn-block btn-success add-contact d-flex justify-content-center p-2").append($("<i>").addClass("fas fa-plus"))
            )
        )
    };

    $(document).on("hidden.bs.modal", ".modal", function () {
        $(this).remove();
    });
    return Application;
}(Application || {}));