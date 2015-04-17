# mjmasn:maxmind

This package is a simple wrapper for the MaxMind GeoIP2 Precision Services API. If you discover any issues please open a new issue or submit a PR.

## Installation
This package is available at https://atmospherejs.com/mjmasn/maxmind. To install use:

```meteor add mjmasn:maxmind```

## Environment Variables
This package requires ```MAXMIND_USER_ID``` and ```MAXMIND_LICENCE_KEY``` to be set in your environment variables and will throw an error if they are not set. You can obtain API credentials by signing up for a trial or making a purchase at https://www.maxmind.com/en/geoip2-precision-services.

## Usage
```javascript
try {
    var response = MaxMind.getCountryFromIp('100.200.100.200');
}
catch (err) {
    // Handle any errors
}
```
