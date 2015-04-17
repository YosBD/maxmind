conf        = share.Config

endpoint    = 'https://geoip.maxmind.com/geoip/v2.1/'
auth        = new Buffer("#{conf.maxMind.userId}:#{conf.maxMind.licenceKey}").toString 'base64'

@MaxMind =
    getCountryFromIp: (ipAddress) ->
        doApiCall
            service: 'country'
            ipAddress: ipAddress

    getCityFromIp: (ipAddress) ->
        doApiCall
            service: 'city'
            ipAddress: ipAddress

    getInsightsFromIp: (ipAddress) ->
        doApiCall
            service: 'insights'
            ipAddress: ipAddress

doApiCall: (options) ->
    url         = "#{endpoint}#{options.service}/#{options.ipAddress}"
    contentType = "application/vnd.maxmind.com-#{options.service}+json; charset=UTF-8; version=2.1"

    request =
        headers:
            'Accept': contentType
            'Authorization': "Basic #{auth}"
            'Content-Type': contentType

    HTTP.call 'GET', url, request
