import mapboxgl from 'mapbox-gl';

function easing(t) {
return t * (2 - t);
}
// contentshow2.style.display = "none";

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000, pitch: 0 });
};

const fitMapToMarker = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000, easing: easing, pitch: 60 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      //style: 'mapbox://styles/mapbox/streets-v10'
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
  // Pass the element as an argument to the new marker
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
         contentshow.style.display = "block";
         contentshow2.style.display = "none";
       }
       if (yPos >= 1 && yPos <= 210) {
          contentshow.style.display = "none";
          contentshow2.style.display = "block";
          fitMapToMarker(map, markers[0]);

          const cardstep0 = document.getElementById("cardstep-0")
          cardstep0.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep0.dataset.image}')`;
       }
       if (yPos >= 210 && yPos <= 540) {
         contentshow.style.display = "none";
         contentshow2.style.display = "block";
         fitMapToMarker(map, markers[1])
          const cardstep0 = document.getElementById("cardstep-0")
          cardstep0.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep0.dataset.image}')`;

         const cardstep1 = document.getElementById("cardstep-1")
          cardstep1.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep1.dataset.image}')`;
       }
       if (yPos >= 540 && yPos <= 850) {
         contentshow.style.display = "none";
         contentshow2.style.display = "block";
         fitMapToMarker(map, markers[2])
         const cardstep1 = document.getElementById("cardstep-1")
         cardstep1.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep1.dataset.image}')`;
         const cardstep2 = document.getElementById("cardstep-2")
         cardstep2.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep2.dataset.image}')`;
       }
       if (yPos >= 850 && yPos <= 1100) {
         contentshow.style.display = "none";
         contentshow2.style.display = "block";
         fitMapToMarker(map, markers[3])
         const cardstep2 = document.getElementById("cardstep-2")
         cardstep2.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep2.dataset.image}')`;
         const cardstep3 = document.getElementById("cardstep-3")
         cardstep3.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep3.dataset.image}')`;
       }
       if (yPos >= 1100 && yPos <= 1265) {
         contentshow.style.display = "none";
         contentshow2.style.display = "block";
         fitMapToMarker(map, markers[4])
         const cardstep3 = document.getElementById("cardstep-3")
         cardstep3.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep3.dataset.image}')`;
         const cardstep4 = document.getElementById("cardstep-4")
         cardstep4.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep4.dataset.image}')`;
       }
    });
     console.log(markers)
  };
};


// function displayJourney(map, coords) {
//     map.addLayer({
//         "id": "journey", //identifiant unique de l'objet
//         "type": "line",
//         "source": {
//             "type": "geojson",
//             "data": {
//                 "type": "Feature",
//                 "properties": {},
//                 "geometry": {
//                     "type": "LineString",
//                     "coordinates": coords
//                 }
//             }
//         },
//         "paint": {
//             "line-color": "#888", //couleur de la ligne
//             "line-width": 2 //epaisseur de la ligne
//         }
//     });
//   }

export { initMapbox };


