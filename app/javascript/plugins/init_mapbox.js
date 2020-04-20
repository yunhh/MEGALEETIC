import mapboxgl from 'mapbox-gl';

function easing(t) {
  return t * (2 - t);
}

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
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
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

      new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .addTo(map);
      new mapboxgl.Marker()
        .setLngLat([-3.05158, 47.60349])
        .addTo(map);
  });

  // ---------------------------------------------------------------------------

  map.on('load', function() {
    map.addSource('route', {
      'type': 'geojson',
      'data': {
        'type': 'Feature',
        'properties': {},
        'geometry': {
          'type': 'LineString',
          'coordinates': [
            [markers[0].lng, markers[0].lat],
            [-3.05100, 47.60287],
            [-3.05365, 47.60464],
            [-3.05542, 47.60446],
            [markers[1].lng, markers[1].lat],
            [-3.05455, 47.60096],
            [-3.05286, 47.59720],
            [-3.05398, 47.59695],
            [-3.05505, 47.59629],
            [markers[2].lng, markers[2].lat],
            [-3.05505, 47.59629],
            [-3.05398, 47.59695],
            [-3.05286, 47.59720],
            [-3.05456, 47.60110],
            [-3.05562, 47.60089],
            [-3.05685, 47.60029],
            [-3.05730, 47.59996],
            [-3.05783, 47.59946],
            [-3.05921, 47.59886],
            [-3.05979, 47.59892],
            [-3.06153, 47.59815],
            [-3.06186, 47.59768],
            [-3.06369, 47.59685],
            [-3.06459, 47.59663],
            [-3.06547, 47.59634],
            [-3.06724, 47.59550],
            [-3.06798, 47.59610],
            [-3.07175, 47.59574],
            [-3.07501, 47.59450],
            [-3.07550, 47.59394],
            [-3.08035, 47.59265],
            [-3.08254, 47.59206],
            [-3.08453, 47.59078],
            [-3.08495, 47.59023],
            [-3.08523, 47.59120],
            [markers[3].lng, markers[3].lat],
            [-3.08523, 47.59120],
            [-3.08495, 47.59023],
            [-3.08399, 47.58674],
            [-3.08223, 47.58727],
            [-3.08151, 47.58733],
            [-3.07801, 47.58691],
            [-3.07719, 47.58704],
            [-3.07585, 47.58535],
            [-3.07330, 47.58663],
            [markers[4].lng, markers[4].lat],
          ]
        }
      }
    });
    map.addLayer({
      'id': 'route',
      'type': 'line',
      'source': 'route',
      'layout': {
      'line-join': 'round',
      'line-cap': 'round'
      },
      'paint': {
        'line-color': 'rgba(249,174,30,0.7)',
        'line-width': 6
      }
    });
  });
  // ---------------------------------------------------------------------------

  fitMapToMarkers(map, markers);

  window.addEventListener('scroll', function(e) {
    let yPos = window.scrollY;
    const cardstep0 = document.getElementById("cardstep-0");
    const cardstep1 = document.getElementById("cardstep-1");
    const cardstep2 = document.getElementById("cardstep-2");
    const cardstep3 = document.getElementById("cardstep-3");
    const cardstep4 = document.getElementById("cardstep-4");
    const description0 = document.getElementById("description-step-0");
    const description1 = document.getElementById("description-step-1");
    const description2 = document.getElementById("description-step-2");
    const description3 = document.getElementById("description-step-3");
    const description4 = document.getElementById("description-step-4");
    contentshow.style.display = "block";
    description0.style.display = "none";
    description1.style.display = "none";
    description2.style.display = "none";
    description3.style.display = "none";
    description4.style.display = "none";

    if (yPos >= 0 && yPos <= 55 ) {
        fitMapToMarkers(map, markers);
        cardstep0.style. = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep0.dataset.image}')`;

      }

    if (yPos >= 55 && yPos <= 230) {
      contentshow.style.display = "none";
      description0.style.display = "block";
      fitMapToMarker(map, markers[0]);
      cardstep0.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep0.dataset.image}')`;
      cardstep0.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep0.dataset.image}')`;       }

    if (yPos >= 230 && yPos <= 540) {

      contentshow.style.display = "none";
      description0.style.display = "none";
      description1.style.display = "block";
      fitMapToMarker(map, markers[1])
      cardstep0.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep0.dataset.image}')`;
      cardstep1.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep1.dataset.image}')`;
    }
    if (yPos >= 540 && yPos <= 850) {

      contentshow.style.display = "none";
      description1.style.display = "none";
      description2.style.display = "block";
      fitMapToMarker(map, markers[2])
      cardstep1.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep1.dataset.image}')`;
      cardstep2.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep2.dataset.image}')`;
    }
    if (yPos >= 850 && yPos <= 1100) {

      contentshow.style.display = "none";
      description2.style.display = "none";
      description3.style.display = "block";
      fitMapToMarker(map, markers[3])
      cardstep2.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep2.dataset.image}')`;
      cardstep3.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep3.dataset.image}')`;
    }
    if (yPos >= 1100 && yPos <= 1265) {

      contentshow.style.display = "none";
      description3.style.display = "none";
      description4.style.display = "block";
      fitMapToMarker(map, markers[4])
      cardstep3.style.backgroundImage = `linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('${cardstep3.dataset.image}')`;
      cardstep4.style.backgroundImage = `linear-gradient(rgba(249,174,30,0.7), rgba(249,174,30,0.7)), url('${cardstep4.dataset.image}')`;
    }

  });
  // ---------------------------------------------------------------------------
  };
};
export { initMapbox };


