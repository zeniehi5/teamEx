// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

 // Pie Chart Example
 var ctx = document.getElementById("myPieChart");
 var myPieChart = new Chart(ctx, {
 type: 'doughnut',
 data: {
     labels: ["남성", "여성"],
     datasets: [{
     //data: [45, 12, 11.25, 8.32],
     data: [60, 40],
     backgroundColor: ['#007bff', '#dc3545'],
     }],
 },
 });
