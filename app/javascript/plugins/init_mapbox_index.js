import mapboxgl from 'mapbox-gl';

// function easing(t) {
// return t * (2 - t);
// }

// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000, pitch: 0 });
// };

// const fitMapToMarker = (map, marker) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   bounds.extend([ marker.lng, marker.lat ]);
//   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000, easing: easing, pitch: 60 });
// };

const initMapboxIndex = () => {
  const mapElement = document.getElementById('map-index');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-index',
      style: 'mapbox://styles/naheul/ck8u5k02011o21iphzz0b816w'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';

      new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .addTo(map);
    });
    fitMapToMarkers(map, markers)
    window.addEventListener('scroll', function(e) {
      let yPos = window.scrollY;
      console.log(yPos);
      if (yPos == 0) {
       fitMapToMarkers(map, markers)

      }
      if (yPos >= 1 && yPos <= 210) {
        fitMapToMarker(map, markers[0]);

      }
      if (yPos >= 210 && yPos <= 540) {
       fitMapToMarker(map, markers[1])


      }
      if (yPos >= 540 && yPos <= 850) {
       fitMapToMarker(map, markers[2])

      }
      if (yPos >= 850 && yPos <= 1100) {
       fitMapToMarker(map, markers[3])

      }
      if (yPos >= 1100 && yPos <= 1265) {
       fitMapToMarker(map, markers[4])

      }
    });
  };
};
export { initMapboxIndex };


