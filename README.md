Helios Test app
===============

This app is designed as an example app to talk to a Helios server.

The idea behind the app is the take advantage of "cloud" to demonstrate a data-driven iOS app.

INPUT -> This app will allow you to take a picture and upload the image along with the location of the image (lat, lon).
OUTPUT -> The server will feed back image/location data to the iOS app's map based on the users current location.

The app will show a map with markers representing each image. It will also show a list of marker/images sorted by distance with a detail view of the image. From the map view there will be a modal camera controller for capturing an image.
