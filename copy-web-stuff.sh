#!/usr/bin/env bash

# MDC
cp node_modules/material-components-web/dist/material-components-web.min.js themes/transportr/static/js/
mkdir -p themes/transportr/static/css/material-icons
cp node_modules/material-design-icons-iconfont/dist/fonts/MaterialIcons-* themes/transportr/static/css/material-icons/
cp node_modules/material-design-icons-iconfont/dist/fonts/material-icons.css themes/transportr/static/css/material-icons/

# Leaflet
cp node_modules/leaflet/dist/leaflet.js static/js/
cp -r node_modules/leaflet/dist/images static/css/
rm static/css/images/layers*.png
cp node_modules/leaflet/dist/leaflet.css static/css/
cp node_modules/leaflet-ajax/dist/leaflet.ajax.min.js static/js/
