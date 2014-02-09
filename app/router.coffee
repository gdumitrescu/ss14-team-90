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
  title: "Astral Weeks"
  name: "Van Morrison"
  category: "Jazz"
  type: "CD"
  description: "Astral Weeks is generally considered one of the best albums in pop music history."
  cover: "http://lorempixel.com/45/45/nature/1"
  bookmarks: 5
  views: 64
  reviews: 3
  favourites: 23
  comments: 12
,
  id: 2
  title: "Kind of Blue"
  name: "Miles Davis"
  category: "Jazz"
  type: "LP"
  description: "Kind of Blue isn't merely an artistic highlight for Miles Davis, it's an album that towers above its peers, a record generally considered as the definitive jazz album, a universally acknowledged standard of excellence."
  cover: "http://lorempixel.com/45/45/nature/2"
  bookmarks: 4
  views: 53
  reviews: 8
  favourites: 9
  comments: 3
,
  id: 3
  title: "Friends Seen and Unseen"
  name: "Charlie Hunter"
  category: "Rock"
  type: "DVD"
  description: "He's got a melodic foil to play off of, and someone supplying a beat, but not so many things going on that you can't concentrate on what he's doing"
  cover: "http://lorempixel.com/45/45/nature/3"
  bookmarks: 1
  views: 7
  reviews: 32
  favourites: 44
  comments: 6
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
