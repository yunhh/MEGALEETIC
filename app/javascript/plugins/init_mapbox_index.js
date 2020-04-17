import mapboxgl from 'mapbox-gl';


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000, pitch: 0 });
};



const initMapboxIndex = () => {
  const mapElement = document.getElementById('map-index');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-index',
      //style: 'mapbox://styles/mapbox/streets-v10'
      style: 'mapbox://styles/naheul/ck941k2321cst1itb2avakcop'
    });
  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '25px';
  element.style.height = '25px';
  // Pass the element as an argument to the new marker
  new mapboxgl.Marker(element)
    .setLngLat([marker.lng, marker.lat])
    .addTo(map);
  });
  fitMapToMarkers(map, markers)
  }
};
















// const initMapboxIndex = () => {
//   const mapElement = document.getElementById('map-index');

//   if (mapElement) {
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map-index',
//       style: 'mapbox://styles/naheul/ck8u5k02011o21iphzz0b816w'
//     });
//     const markers = JSON.parse(mapElement.dataset.markers);
//     markers.forEach((marker) => {
//       const element = document.createElement('div');
//       // element.className = 'marker';
//       // element.style.backgroundImage = `url('${marker.image_url}')`;
//       // element.style.backgroundSize = 'contain';
//       // element.style.width = '25px';
//       // element.style.height = '25px';

//       new mapboxgl.Marker(element)
//         .setLngLat([marker.lng, marker.lat])
//         .addTo(map);
//     });
//     // fitMapToMarkers(map, markers)
//   };
// };
export { initMapboxIndex };


