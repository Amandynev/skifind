import mapboxgl from 'mapbox-gl';



const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/amandynev/ckebc9bxb14am19r9qpkvseov'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup({ closeOnClick: false }).setHTML(marker.infoWindow);

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });


    const loc = JSON.parse(document.getElementById('resort-show').dataset.loc);

    const url = `https://api.mapbox.com/directions-matrix/v1/mapbox/driving/${loc[0].lat},${loc[0].lng};${loc[1].lat},${loc[1].lng}?approaches=curb;curb&annotations=duration,distance&access_token=${mapElement.dataset.mapboxApiKey}`
    console.log(url);
    fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });

  }

};

export { initMapbox };
