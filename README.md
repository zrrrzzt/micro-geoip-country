[![Build Status](https://travis-ci.org/zrrrzzt/micro-geoip-country.svg?branch=master)](https://travis-ci.org/zrrrzzt/micro-geoip-country)
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)
[![Greenkeeper badge](https://badges.greenkeeper.io/zrrrzzt/micro-geoip-country.svg)](https://greenkeeper.io/)

# micro-geoip-country
Get country from ip

## API

### GET

```bash
curl https://country.geoip.allthethings.win?ip=8.8.8.8
```

returns

```JavaScript
{
  "countryCode": "US",
  "countryCode3": "USA",
  "countryName": "United States",
  "countryEmoji": "🇺🇸"
}
```

### POST

```bash
curl -d '{"ip": "8.8.8.8"}' https://country.geoip.allthethings.win
```

```JavaScript
{
  "countryCode": "US",
  "countryCode3": "USA",
  "countryName": "United States",
  "countryEmoji": "🇺🇸"
}
```

## License

[MIT](LICENSE)

![alt text](https://robots.kebabstudios.party/micro-geoip-country.png "Robohash image of micro-geoip-country")
