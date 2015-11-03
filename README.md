# forked: YosBD:maxmind
# mjmasn:maxmind

This Meteor package is a simple wrapper for the MaxMind GeoIP2 Precision Services API. There are plenty of uses for GeoIP data but this was designed to help with compliance for the new EU VAT regulations which came into force in January 2015. If you discover any issues please open a new issue or submit a PR.

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

// Response object:
{
    country: {
        iso_code: 'US',
        names: {
            'pt-BR': 'Estados Unidos',
            es: 'Estados Unidos',
            ru: 'Сша',
            en: 'United States',
            'zh-CN': '美国',
            fr: 'États-Unis',
            de: 'USA',
            ja: 'アメリカ合衆国'
        },
        geoname_id: 6252001
    },
    continent: {
        names: {
            'pt-BR': 'América do Norte',
            es: 'Norteamérica',
            ru: 'Северная Америка',
            en: 'North America',
            'zh-CN': '北美洲',
            fr: 'Amérique du Nord',
            de: 'Nordamerika',
            ja: '北アメリカ'
        },
        geoname_id: 6255149,
        code: 'NA'
    },
    maxmind: {
        queries_remaining: 200758
    },
    registered_country: {
        iso_code: 'US',
        names: {
            'pt-BR': 'Estados Unidos',
            es: 'Estados Unidos',
            ru: 'Сша',
            en: 'United States',
            'zh-CN': '美国',
            fr: 'États-Unis',
            de: 'USA',
            ja: 'アメリカ合衆国'
        },
        geoname_id: 6252001
    },
    traits: {
        ip_address: '100.200.100.200'
    }
}
```
