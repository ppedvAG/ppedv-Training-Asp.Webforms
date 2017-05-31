var connection = $.connection.northwindHub;

connection.on("added", function (person) {
    $("table tbody tr:first").before(
        "<tr class='success'>                                             " +
        "    <td>NEW</td>                                                   " +
        "    <td>" + person.CompanyName + "</td>                          " +
        "    <td>" + person.ContactName + "</td>                          " +
        "    <td>" + person.Address + "</td>                              " +
        "    <td>" + person.City + "</td>                                 " +
        "    <td>" + person.Phone + "</td>                                " +
        "    <td>                                                         " +
        "        <a href='Admin_Edit.aspx?Id=" + person.CompanyID + "'>   " +
        "            <i class='fa fa-pencil'></i>                         " +
        "        </a>                                                     " +
        "    </td>                                                        " +
        "</tr>                                                            "
        );
});
connection.on("edited", function (person) {
    var link = $("a[href*='" + person.CompanyID + "']");
    link.parent.parent().addClass("warning");

    link.parent.parent().html(
        "    <td>#</td>                                                   " +
        "    <td>" + person.CompanyName + "</td>                          " +
        "    <td>" + person.ContactName + "</td>                          " +
        "    <td>" + person.Address + "</td>                              " +
        "    <td>" + person.City + "</td>                                 " +
        "    <td>" + person.Phone + "</td>                                " +
        "    <td>                                                         " +
        "        <a href='Admin_Edit.aspx?Id=" + person.CompanyID + "'>   " +
        "            <i class='fa fa-pencil'></i>                         " +
        "        </a>                                                     " +
        "    </td>                                                        " 
        );
});

$.connection.hub.start().done(function () {
    console.info("Hub is active");
});