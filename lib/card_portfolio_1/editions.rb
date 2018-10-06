class CardPortfolio1::Editions
attr_accessor :name, :url

def self.all
  #should return a bunch of instances of editions
  self.scrape_editions
end

def self.scrape_editions
  editions = []
  #go to the site
  #scrape the editions off of the site
  #get the name of the editions (and I guess the link that leads to the charaters?)
  editions << self.scrape_site_for_editions
  editions
end

def self.scrape_site_for_editions
doc = Nokogiri::HTML(open("https://musicthegathering.com"))
editions = self.new
editions.name = doc.search("h1.text-align-cente #yui_3_17_2_1_1538788000112_1286").text #probably not working but I can't get my pry working
editions
end





#  edition_1 = self.new
#  edition_1.name = "Music The Gathering"
#  edition_1.url = "https://www.musicthegathering.com/music-the-gathering-cards/"

#  edition_2 = self.new
#  edition_2.name = "The Craic Show"
#  edition_2.url = "https://www.musicthegathering.com/the-craic-edition-cards/"

#  edition_3 = self.new
#  edition_3.name = "Chaste Treasure"
#  edition_3.url = "https://www.musicthegathering.com/chaste-treasure-edition-cards/"

#  edition_4 = self.new
#  edition_4.name = "The Plunder Doggs"
#  edition_4.url = "https://www.musicthegathering.com/the-plunder-doggs-edition-cards"

#  edition_5 = self.new
#  edition_5.name = "The Lady Victoria"
#  edition_5.url = "https://www.musicthegathering.com/the-lady-victoria-card"

#  [edition_1, edition_2, edition_3, edition_4, edition_5]



end
