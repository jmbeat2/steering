$(document).ready(function () {
    $.ajax({
        url: "<?= site_url('fetchShiftc/fetchShiftTypes') ?>",
        type: "GET",
        dataType: "json",
        success: function (response) {
            var shiftDropdown = $("#shift, #updateShift");
            shiftDropdown.empty().append('<option value="">Select Shift Type</option>');
            response.forEach(function (shift) {
                shiftDropdown.append(`<option value="${shift.id}">${shift.shift_name}</option>`);
            });
        },
        error: function () {
            alert("Failed to fetch shift types.");
        }
    });
});
