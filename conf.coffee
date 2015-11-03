getMaxMindConf = ->

    userId      = Meteor.settings.private.location_validation.max_mind_user_id
    licenceKey  = Meteor.settings.private.location_validation.max_mind_license_key

    if !userId
        throw new Meteor.Error "Missing settings: Meteor.settings.private.location_validation.max_mind_user_id"

    if !licenceKey
        throw new Meteor.ERROR "Missing settings: Meteor.settings.private.location_validation.max_mind_license_key"

    conf =
        userId:     userId
        licenceKey: licenceKey

share.Config =

    maxMind: getMaxMindConf()
