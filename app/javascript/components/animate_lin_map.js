// const animateLin = () => {

//   // var speedFactor = 30; // number of frames per longitude degree
//   // var animation; // to store and cancel the animation
//   // var startTime = 0;
//   // var progress = 0; // progress = timestamp - startTime
//   // var resetTime = false; // indicator of whether time reset is needed for the animation
//   // var pauseButton = document.getElementById('pause');


//   map.on('load', function() {
//     map.addSource('route', {
//       'type': 'geojson',
//       'data': {
//         'type': 'Feature',
//         'properties': {},
//         'geometry': {
//           'type': 'LineString',
//           'coordinates': [
//             [markers[0].lng, markers[0].lat],
//             [markers[1].lng, markers[1].lat],
//             [markers[2].lng, markers[2].lat],
//             [markers[3].lng, markers[3].lat],
//             [markers[4].lng, markers[4].lat],
//           ]
//         }
//       }
//     });
//     map.addLayer({
//       'id': 'route',
//       'type': 'line',
//       'source': 'route',
//       'layout': {
//       'line-join': 'round',
//       'line-cap': 'round'
//       },
//       'paint': {
//         'line-color': '#F96D6C',
//         'line-width': 6
//       }
//     });
//   });


//   //   startTime = performance.now();

//   //   animateLine();

//   //   // click the button to pause or play
//   //   pauseButton.addEventListener('click', function() {
//   //     pauseButton.classList.toggle('pause');
//   //     if (pauseButton.classList.contains('pause')) {
//   //       cancelAnimationFrame(animation);
//   //       }
//   //     else {
//   //       resetTime = true;
//   //       animateLine();
//   //     }
//   //   });

//   //   // reset startTime and progress once the tab loses or gains focus
//   //   // requestAnimationFrame also pauses on hidden tabs by default
//   //   document.addEventListener('visibilitychange', function() {
//   //     resetTime = true;
//   //   });

//   //   // animated in a circle as a sine wave along the map.
//   //   function animateLine(timestamp) {
//   //     if (resetTime) {
//   //       // resume previous progress
//   //       startTime = performance.now() - progress;
//   //       resetTime = false;
//   //       }
//   //     else {
//   //       progress = timestamp - startTime;
//   //     }

//   //     // restart if it finishes a loop
//   //     if (progress > speedFactor * 360) {
//   //       startTime = timestamp;
//   //       geojson.features[0].geometry.coordinates = [];
//   //       }
//   //     else {
//   //       var x = progress / speedFactor;
//   //       // draw a sine wave with some math.
//   //       var y = Math.sin((x * Math.PI) / 90) * 40;
//   //       // append new coordinates to the lineString
//   //       geojson.features[0].geometry.coordinates.push([x, y]);
//   //       // then update the map
//   //       map.getSource('line').setData(geojson);
//   //     }
//   //     // Request the next frame of the animation.
//   //     animation = requestAnimationFrame(animateLine);
//   //   }
//   // });

//  export {animateMap}
