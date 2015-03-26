
$(function(){
    $("#articles .page").infinitescroll({
        debug: true,
        loading: {
          //img:     "http://www.mytreedb.com/uploads/mytreedb/loader/ajax_loader_blue_48.gif",
          msgText: "ロード中..."
        },
        navSelector: "nav.pagination",
        nextSelector: "nav.pagination a[rel=next]",
        itemSelector: "#articles tr.article"
    });
    
    $('#calendar').fullCalendar({
        header: {
            // title, prev, next, prevYear, nextYear, today
            left: 'prev,next today',
            center: 'title',
            right: 'month agendaWeek agendaDay'
        }
    });
    
    //event追加
    // $('#calendar').fullCalendar('renderEvent', {
    //                     title: 'test',
    //                     start: moment('2015-03-27'),
    //                     end: moment('2015-03-27'),
    //                     color: 'pink',
    //                     allDay: true
    //                 }, true );
    //自動で発火させるため、railsの処理から逸脱させる、、やっぱrailsって使いにくい、、どうなんかなぁ。。
    $.ajax({
        url:'get_calendar_event'
        ,type: 'GET'
        ,datatype: 'json'
        ,success: function(data){
            for (var i = 0; i < data.length; i++){
                var d = data[i];
                $('#calendar').fullCalendar('renderEvent', {
                    title: d.title
                    ,start: moment(d.date)
                    ,end:   moment(d.date)
                    ,color: 'pink'
                    ,allDay: true
                },true);
            console.log(data)
            }
        }
        ,error:function(data){
            console.log("error occured!! can't get calendar events!!");
        }
    
    })
});