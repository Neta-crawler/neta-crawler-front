
$(document).ready(function() {
  return $("#articles .page").infinitescroll({
    debug: true,
    loading: {
      //img:     "http://www.mytreedb.com/uploads/mytreedb/loader/ajax_loader_blue_48.gif",
      msgText: "ロード中..."
    },
    navSelector: "nav.pagination",
    nextSelector: "nav.pagination a[rel=next]",
    itemSelector: "#articles tr.article"
  });
});