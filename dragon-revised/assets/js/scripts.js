$(document).ready(function() {
    	
        var url = 'https://api.spacexdata.com/v4/launches/next';

        var result = fetch(url, {method: 'get', }).then(function(response) {
            return response.json();
          }).then(function(data) {
            var rocketLaunchDate = data.date_local;

            document.getElementById('rocket-launch-date').innerHTML = rocketLaunchDate;

            console.log(rocketLaunchDate, '\n');

        });
    
    	$('.gallery').cycle({
            fx: 'fade',
            speed:  2500
        });

});