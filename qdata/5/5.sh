cat ntp.conf | awk '$1=="pool"' | awk '{print $2}'

# cat ntp.conf | awk '$1=="pool" {print $2}'