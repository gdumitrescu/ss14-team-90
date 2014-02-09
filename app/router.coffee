"use strict"

App.Router.map ->
  @resource "titles", ->
    @resource "title", path: "/:title_id"
  @resource "login"
  @resource "search"

App.IndexRoute = Ember.Route.extend(
  redirect: ->
    @transitionTo("titles")
)

# App.PostsRoute = Ember.Route.extend(
#   model: ->
#     @store.find "post"
# )
# App.PostRoute = Ember.Route.extend(
#   model: (params) ->
#     @store.find "post", params.post_id
# )


App.TitlesRoute = Ember.Route.extend(
  # titles = "https://mediatracker.firebaseio-demo.com/titles.json"
  # titles = "http://www.json-generator.com/j/bHwdgEhYzm?indent=4"
  # titles = "/api/titles.json"
  # model: -> $.getJSON(titles)
  model: -> titles
)

App.TitleRoute = Ember.Route.extend(
  model: (params)->
    titles.findBy("id", params.title_id)
)


# Fixtures
titles = [
  id: 1
  title: "Astral Weeks"
  author: "Van Morrison"
  category: "Pop/Rock"
  type: "CD"
  description: "Astral Weeks is generally considered one of the best albums in pop music history."
  cover: "http://lorempixel.com/50/50/nature/1"
  bookmarks: 5
  views: 64
  reviews: 3
  favourites: 23
  comments: 12
,
  id: 2
  title: "Kind of Blue"
  author: "Miles Davis"
  category: "Jazz"
  type: "LP"
  description: "Kind of Blue isn't merely an artistic highlight for Miles Davis, it's an album that towers above its peers, a record generally considered as the definitive jazz album, a universally acknowledged standard of excellence."
  cover: "http://lorempixel.com/50/50/nature/2"
  bookmarks: 4
  views: 53
  reviews: 8
  favourites: 9
  comments: 3
,
  id: 3
  title: "Friends Seen and Unseen"
  author: "Charlie Hunter"
  category: "Jazz, Pop/Rock"
  type: "DVD"
  description: "He's got a melodic foil to play off of, and someone supplying a beat, but not so many things going on that you can't concentrate on what he's doing"
  cover: "http://lorempixel.com/50/50/nature/3"
  bookmarks: 1
  views: 7
  reviews: 32
  favourites: 44
  comments: 6
,
  id: 4
  title: "Anthology"
  author: "Al di Meola"
  category: "Rock"
  type: "MCD"
  description: "Sony's third anthology of Return to Forever guitarist Al di Meola's Columbia Records years hits most of the bases and scores extra points"
  cover: "http://lorempixel.com/50/50/nature/4"
  bookmarks: 3
  views: 32
  reviews: 22
  favourites: 4
  comments: 9
,
  id: 5
  title: "The Essential John McLaughlin"
  author: "John McLaughlin"
  category: "Jazz, Pop/Rock"
  type: "LP"
  description: "While it would be utterly foolish to consider a two-disc set by guitarist John McLaughlin as anything other than a sample of the wildly diverse career he's enjoyed since the early '60s"
  cover: "http://lorempixel.com/50/50/nature/5"
  bookmarks: 6
  views: 12
  reviews: 8
  favourites: 78
  comments: 5
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
