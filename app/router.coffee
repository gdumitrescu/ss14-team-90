"use strict"

App.Router.map( ->
  @resource "titles"
  @resource "login"
  @resource "search"
)

App.IndexRoute = Ember.Route.extend(
  redirect: ->
    @transitionTo("titles")
)

App.TitlesRoute = Ember.Route.extend(
  model: -> titles
)

# Fixtures
titles = [
  id: 1
  title: "random 1"
  category: "technics"
  cover: "http://lorempixel.com/45/45/technics/1"
  type: "CD"
,
  id: 2
  title: "random 2"
  category: "nature"
  cover: "http://lorempixel.com/45/45/nature/2"
  type: "DVD"
]

types = [
  id: 1
  type: "CD"
,
  id: 2
  type: "DVD"
,
  id: 3
  type: "LP"
,
  id: 4
  type: "MCD"
]
