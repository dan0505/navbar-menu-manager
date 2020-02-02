require("jquery-ui");

$(window).on('load', function () {
  $(".menu-list").each(
    function (idx) {
      const menu_name = `.menu-list-${idx}`
      $(menu_name).sortable({
        connectWith: menu_name,
        handle: ".drag-handle",
        update: function (event, ui) {
          console.log($(this).attr("class").split(/\s+/));
          const li_classes = $(this).attr("class").split(/\s+/);
          const current_menu_col_class = li_classes.filter(s => s.includes("menu-col-"))[0];
          const current_menu_col_number = current_menu_col_class.split("menu-col-")[1]
          $(this).children('li').each(function (idx, element) {
            const $input_sort = $(element).children('input.item-sort').first();
            const $input_col = $(element).children('input.item-col').first();
            $input_sort.val(idx);
            $input_col.val(current_menu_col_number);
          });
        }
      }).disableSelection();
    }
  )
 });
