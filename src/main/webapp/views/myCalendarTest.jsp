<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
 -->
	<!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!--  Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">	

  <!-- Font Awesome-->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  
  <!--  iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  
   <!-- JQVMap
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  -->
  <!-- Theme style-->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars-->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  -->
  <!-- summernote 
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  -->
  <!-- fullCalendar (캘린더) -->
  <link rel="stylesheet" href="plugins/fullcalendar/main.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>

	.main-sidebar {
		background-color: #e9ddc6;
	}
	.mt-2 .nav .nav-item .nav-link p {
		color : black;
	}
	.logo {
		width : 231px;
		height : 68px;
	}
	#footer {
		margin-left: 0px;	
	}
	
	.content {
	  	display: flex;
		/* justify-content: center;
		align-items: center;
		height: 700px;
		text-align: center; */
	}
	
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<jsp:include page="header.jsp"/>
	 	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
		<!--<h1 class="m-0">Dashboard</h1> -->
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="sticky-top mb-3">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">일정</h4>
                </div>
                <div class="card-body">
                  <!-- the events -->
                  <div id="external-events">
                    <div class="external-event bg-success">Lunch</div>
                    <div class="external-event bg-warning">Go home</div>
                    <div class="external-event bg-info">Do homework</div>
                    <div class="external-event bg-primary">Work on UI design</div>
                    <div class="external-event bg-danger">Sleep tight</div>
                    <div class="checkbox">
                      <label for="drop-remove">
                        <input type="checkbox" id="drop-remove">
                        일정 리스트에서 삭제하기
                      </label>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">일정 추가하기</h3>
                </div>
                <div class="card-body">
                  <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                    <ul class="fc-color-picker" id="color-chooser">
                      <li><a class="text-primary" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-warning" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-success" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-danger" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-muted" href="#"><i class="fas fa-square"></i></a></li>
                    </ul>
                  </div>
                  <!-- /btn-group -->
                  <div class="input-group">
                    <input id="new-event" type="text" class="form-control" placeholder="일정 이름을 입력해 주세요.">

                    <div class="input-group-append">
                      <button id="add-new-event" type="button" class="btn btn-primary">추가</button>
                    </div>
                    <!-- /btn-group -->
                  </div>
                  <!-- /input-group -->
                </div>
              </div>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary">
              <div class="card-body p-0">
                <!-- THE CALENDAR -->
                <div id="calendar"></div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
		<jsp:include page="footer.jsp"/>
  </div>
  <!-- /.content-wrapper -->

		
</div>
	
	
	<!-- jQuery -->
	<script src="../plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- jQuery UI -->
	<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../dist/js/adminlte.min.js"></script>	
	<!-- fullCalendar 2.2.5 -->
	<script src="../plugins/moment/moment.min.js"></script>
	<script src="../plugins/fullcalendar/main.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../dist/js/demo.js"></script>
	<!-- Page specific script -->
	<script>
	sendDataToServer
	
	// 서버에 데이터 전송 함수
	function sendDataToServer(eventData) {
	  // AJAX 요청을 보냅니다.
	  $.ajax({
	    url: 'your_server_url', // 서버의 URL을 입력해주세요
	    type: 'POST', // 데이터 전송 방식 (POST 또는 GET)
	    data: eventData, // 전송할 데이터
	    success: function(response) {
	      // 서버 응답에 대한 처리를 수행합니다.
	      console.log(response); // 예시: 응답을 콘솔에 출력합니다.
	    },
	    error: function(xhr, status, error) {
	      // 오류 발생 시 처리할 내용을 작성합니다.
	      console.error(error); // 예시: 오류 메시지를 콘솔에 출력합니다.
	    }
	  });
	}

	// 일정을 클릭해서 캘린더에 추가할 때의 이벤트 핸들러
	$('#calendar').on('click', '.fc-daygrid-event', function() {
	  var eventData = {
	    title: $(this).text(),
	    start: $(this).data('date'),
	    // 기타 필요한 데이터를 여기에 추가해주세요
	  };

	  // 서버에 데이터 전송
	  sendDataToServer(eventData);
	});

	  $(function () {
	
	    /* initialize the external events
	     -----------------------------------------------------------------*/
	    function ini_events(ele) {
	      ele.each(function () {
	
	        // create an Event Object (https://fullcalendar.io/docs/event-object)
	        // it doesn't need to have a start or end
	        var eventObject = {
	          title: $.trim($(this).text()) // use the element's text as the event title
	        }
	
	        // store the Event Object in the DOM element so we can get to it later
	        $(this).data('eventObject', eventObject)
	
	        // make the event draggable using jQuery UI
	        $(this).draggable({
	          zIndex        : 1070,
	          revert        : true, // will cause the event to go back to its
	          revertDuration: 0  //  original position after the drag
	        })
	
	      })
	    }
	
	    ini_events($('#external-events div.external-event'))
	
	    /* initialize the calendar
	     -----------------------------------------------------------------*/
	    //Date for the calendar events (dummy data)
	    var date = new Date()
	    var d    = date.getDate(),
	        m    = date.getMonth(),
	        y    = date.getFullYear()
	
	    var Calendar = FullCalendar.Calendar;
	    var Draggable = FullCalendar.Draggable;
	
	    var containerEl = document.getElementById('external-events');
	    var checkbox = document.getElementById('drop-remove');
	    var calendarEl = document.getElementById('calendar');
	
	    // initialize the external events
	    // -----------------------------------------------------------------
	
	    new Draggable(containerEl, {
	      itemSelector: '.external-event',
	      eventData: function(eventEl) {
	        return {
	          title: eventEl.innerText,
	          backgroundColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
	          borderColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
	          textColor: window.getComputedStyle( eventEl ,null).getPropertyValue('color'),
	        };
	      }
	    });
	
	    var calendar = new Calendar(calendarEl, {
	      headerToolbar: {
	        left  : 'prev,next today',
	        center: 'title',
	        right : 'dayGridMonth,timeGridWeek,timeGridDay'
	      },
	      themeSystem: 'bootstrap',
	      //Random default events
	      events: [
	        {
	          title          : 'All Day Event',
	          start          : new Date(y, m, 1),
	          backgroundColor: '#f56954', //red
	          borderColor    : '#f56954', //red
	          allDay         : true
	        },
	        {
	          title          : 'Long Event',
	          start          : new Date(y, m, d - 5),
	          end            : new Date(y, m, d - 2),
	          backgroundColor: '#f39c12', //yellow
	          borderColor    : '#f39c12' //yellow
	        },
	        {
	          title          : 'Meeting',
	          start          : new Date(y, m, d, 10, 30),
	          allDay         : false,
	          backgroundColor: '#0073b7', //Blue
	          borderColor    : '#0073b7' //Blue
	        },
	        {
	          title          : 'Lunch',
	          start          : new Date(y, m, d, 12, 0),
	          end            : new Date(y, m, d, 14, 0),
	          allDay         : false,
	          backgroundColor: '#00c0ef', //Info (aqua)
	          borderColor    : '#00c0ef' //Info (aqua)
	        },
	        {
	          title          : 'Birthday Party',
	          start          : new Date(y, m, d + 1, 19, 0),
	          end            : new Date(y, m, d + 1, 22, 30),
	          allDay         : false,
	          backgroundColor: '#00a65a', //Success (green)
	          borderColor    : '#00a65a' //Success (green)
	        },
	        {
	          title          : 'Click for Google',
	          start          : new Date(y, m, 28),
	          end            : new Date(y, m, 29),
	          url            : 'https://www.google.com/',
	          backgroundColor: '#3c8dbc', //Primary (light-blue)
	          borderColor    : '#3c8dbc' //Primary (light-blue)
	        }
	      ],
	      editable  : true,
	      droppable : true, // this allows things to be dropped onto the calendar !!!
	      drop      : function(info) {
	        // is the "remove after drop" checkbox checked?
	        if (checkbox.checked) {
	          // if so, remove the element from the "Draggable Events" list
	          info.draggedEl.parentNode.removeChild(info.draggedEl);
	        }
	      }
	    });
	
	    calendar.render();
	    // $('#calendar').fullCalendar()
	
	    /* ADDING EVENTS */
	    var currColor = '#3c8dbc' //Red by default
	    // Color chooser button
	    $('#color-chooser > li > a').click(function (e) {
	      e.preventDefault()
	      // Save color
	      currColor = $(this).css('color')
	      // Add color effect to button
	      $('#add-new-event').css({
	        'background-color': currColor,
	        'border-color'    : currColor
	      })
	    })
	    $('#add-new-event').click(function (e) {
	      e.preventDefault()
	      // Get value and make sure it is not null
	      var val = $('#new-event').val()
	      if (val.length == 0) {
	        return
	      }
	
	      // Create events
	      var event = $('<div />')
	      event.css({
	        'background-color': currColor,
	        'border-color'    : currColor,
	        'color'           : '#fff'
	      }).addClass('external-event')
	      event.text(val)
	      $('#external-events').prepend(event)
	
	      // Add draggable funtionality
	      ini_events(event)
	
	      // Remove event from text input
	      $('#new-event').val('')
	    })
	  })
</script>

</body>
<script>
</script>
</html>