getMaxMindConf = ->

    userId      = Meteor.settings.private.location_validation.max_mind_user_id
    licenceKey  = Meteor.settings.private.location_validation.max_mind_license_key

    if !userId
        throw new Error "Missing environment variable: MAXMIND_USER_ID"

    if !licenceKey
        throw new Error "Missing environment variable: MAXMIND_LICENCE_KEY"

    conf =
        userId:     userId
        licenceKey: licenceKey

share.Config =

    maxMind: getMaxMindConf()
