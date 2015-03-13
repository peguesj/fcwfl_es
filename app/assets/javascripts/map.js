
$(function(){handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'map'} }, function(){
  if(navigator.geolocation)
    navigator.geolocation.getCurrentPosition(displayOnMap);
});})

function displayOnMap(position){
  var marker = handler.addMarker({
    lat: position.coords.latitude,
    lng: position.coords.longitude
  });
  handler.map.centerOn(marker);
};

function getGeoLocation() {
  navigator.geolocation.getCurrentPosition(setGeoCookie);
}

function setGeoCookie(position) {
  var cookie_val = position.coords.latitude;
  document.cookie = "lat=" + escape(cookie_val);
  var cookie_val2 = position.coords.longitude;
  document.cookie = "lng=" + escape(cookie_val2);
}
function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) {
                c_end = document.cookie.length;
            }
            return unescape(document.cookie.substring(c_start, c_end));
        }
    }
    return "";
}


