"use strict"

App = window.App = Ember.Application.create(
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_ACTIVE_GENERATION: true
  LOG_VIEW_LOOKUPS: true
)


App.ApplicationAdapter = DS.RESTAdapter.extend({
  host: "/api/titles.json"
});
