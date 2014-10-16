Router.route '/',
  name: 'index'
  template: 'index'

# TODO: Slug is not really optional, why?
Router.route '/meeting/:_id/:slug?',
  name: 'meeting'
  template: 'meeting'
  onBeforeAction: ->
    console.log @params._id, @params.slug
    @next()
