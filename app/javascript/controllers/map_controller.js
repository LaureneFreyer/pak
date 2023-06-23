import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.addMarkersToMap()
    this.fitMapToMarkers()
    this.addGeolocateControl()

    this.detectUserLocation()
    this.setupGeolocateButton()
  }

  detectUserLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords
          this.centerMapToLocation(latitude, longitude)
          this.addUserMarker(latitude, longitude)
        },
        (error) => {
          console.error("Error getting user location:", error)
        }
      )
    } else {
      console.error("Geolocation is not supported by this browser.")
    }
  }

  centerMapToLocation(latitude, longitude) {
    this.map.setCenter([longitude, latitude])
    this.map.setZoom(12)
  }

  addUserMarker(latitude, longitude) {
    const customMarker = document.createElement("div")
    customMarker.innerHTML = "<i class='fa-solid fa-location-dot'></i>"
    customMarker.className = "user-marker"

    new mapboxgl.Marker(customMarker)
      .setLngLat([longitude, latitude])
      .addTo(this.map)
  }

  addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  addGeolocateControl() {
    const geolocateControl = new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      trackUserLocation: false, // Désactivez le suivi automatique de la position de l'utilisateur
      showUserLocation: false // Désactivez l'affichage automatique du point de localisation de l'utilisateur
    })

    // Ajoutez un événement de clic personnalisé pour activer la géolocalisation au clic sur le bouton
    geolocateControl.on('geolocate', (event) => {
      const { latitude, longitude } = event.coords
      this.centerMapToLocation(latitude, longitude)
      this.addUserMarker(latitude, longitude)
    })

    // Ajoutez le bouton de géolocalisation personnalisé à la carte
    this.map.addControl(geolocateControl)
  }

  setupGeolocateButton() {
    const geolocateButton = document.createElement('button')
    geolocateButton.classList.add('geolocate-button')
    geolocateButton.textContent = 'Activer la géolocalisation'

    geolocateButton.addEventListener('click', () => {
      this.map._controls.geolocate.trigger()
    })
    this.map.getContainer().appendChild(geolocateButton)
  }

  detectUserLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          const { latitude, longitude } = position.coords
          this.centerMapToLocation(latitude, longitude)
          this.addUserMarker(latitude, longitude)
          this.fetchNearbyPets(latitude, longitude)
        },
        (error) => {
          console.error("Error getting user location:", error)
        }
      )
    } else {
      console.error("Geolocation is not supported by this browser.")
    }
  }

  fetchNearbyPets(latitude, longitude) {
    const url = `/pets/animaux_autour?latitude=${latitude}&longitude=${longitude}`
    fetch(url)
      .then(response => response.json())
      .then(data => {
        this.markersValue = data.markers
        this.addMarkersToMap()
        this.fitMapToMarkers()
      })
      .catch(error => console.error("Error:", error))
  }

}
