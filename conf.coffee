getMaxMindConf = ->

    userId      = process.env.MAXMIND_USER_ID
    licenceKey  = process.env.MAXMIND_LICENCE_KEY

    if !userId
        throw new Error "Missing environment variable: MAXMIND_USER_ID"

    if !licenceKey
        throw new Error "Missing environment variable: MAXMIND_LICENCE_KEY"

    conf =
        userId:     userId
        licenceKey: licenceKey

share.Config =

    maxMind: getMaxMindConf()
