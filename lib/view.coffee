
# SidebarView class definition
# The SidebarView renders the app's sidebar with
# the menuItems specified below
class SidebarView extends Marionette.LayoutView
  template: require './template'
  className: 'nav nav-pills nav-stacked'
  tagName: 'nav'

  initialize: (options={}) ->
    @menuItems = options.menuItems

  events:
    'click a': 'onClicked'

  onClicked: ->
    Backbone.Radio.channel('sidebar').trigger('hide')

  serializeData: ->
    return { items: @menuItems }

# # # # #

module.exports = SidebarView
