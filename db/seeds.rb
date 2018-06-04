# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wordString = "Leader men soup strainer Sergeant major nigel mansell super mario burt reynolds kaiser bill boogie nights Freddie mercury challenge you a duel cripes groucho-a-like helllloooo Leonine nuremberg rally driving gloves beefeater nuremberg rally leslie phillips driving gloves Leonine man markings gent Brandy ron jeremy cunning like a fox super mario cunning like a fox ron jeremy circus strongman brandy fu manchu freestyle chevron Daniel plainview felis mouthbrow mouthbrow basil fawlty brandy felis tip top old bean cunning like a fox circus strongman challenge you a duel ron jeremy ron jeremy chevron Daniel plainview freestyle super mario fu manchu ian botham David seaman Refined gentlemen bruce forsyth mexican’t prostate cancer mexican’t robot moustache tip top old bean imperial Refined gentlemen bruce forsyth lorreto del mar david seaman lipwig prostate cancer prostate cancer yeoman farmer pencil clone zone shopper imperial driving gloves lorreto del mar circus strongman david seaman Refined gentlemen lipwig tip top old bean mexican’t hairy lipsum robot moustache bruce forsyth Mark lawrenson tip top old bean dali timothy dalton dali charity donate got milk mark lawrenson boogie nights devilish cad soup strainer tip top old bean middle eastern despot tip top old bean dali facial accessory devilish cad charity donate mark lawrenson timothy dalton soup strainer middle eastern despot Droopy got milk boogie nights andrew weatherall toothbrush"
@wordArray = wordString.split(" ")

def generate_name
  count = rand(2..5)
  name = []

  count.times do |i|
    pick = rand(@wordArray.length)
    name.push @wordArray[pick].capitalize
  end

  name.join(" ")
end

def generate_style
  styles = ["IPA", "Pale", "Kolsche", "Stout", "Brown"]
  styles[rand(4)]
end

Beer.destroy_all

Beer.create!([
  {
    name: generate_name,
    brewer: generate_name,
    style: generate_style,
    abv: rand(2.0..10.0)
  }
])

p "Created #{Beer.count} beers"


