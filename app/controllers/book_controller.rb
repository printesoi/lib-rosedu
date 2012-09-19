class BookController < ApplicationController
  def index
    @books = Book.all
  end

  def add
    # uses google api for books v1

    require 'net/http'
    require 'net/https'
    require 'json'

    http = Net::HTTP.new('www.googleapis.com', 443)
    http.use_ssl = true
    

    res = http.get '/books/v1/volumes?q=isbn:' + params["isbn"].delete("-")
    parsed_res = JSON.parse res.body
    
    @title      = parsed_res["items"][0]["volumeInfo"]["title"]
    raw_authors = parsed_res["items"][0]["volumeInfo"]["authors"]
    raw_isbn    = parsed_res["items"][0]["volumeInfo"]["industryIdentifiers"]
    @cover      = parsed_res["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    
    @isbn = raw_isbn.select{ |i| i["type"] == "ISBN_13" }[0]["identifier"]

    @authors = Array.new
    raw_authors.each do |a|
      my_author = Author.where(:first_name => a).first
      p my_author
      if my_author == nil
        my_author = Author.new
        my_author.first_name = a
        my_author.save
      end
      @authors << my_author
    end

    b = Book.new
    b.cover_link = @cover
    b.title = @title
    b.author = @authors
    b.isbn = @isbn
    b.save
  end
end
