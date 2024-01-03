class Destination{
  Destination( String image,String name ,String position,String description){
    this.image = image;
    this.name = name;
    this.position = position;
    this.description = description;
  }

  String? image;
  String? name ;
  String? position;
  String? description; 
}

class Destinations{
  Destinations(String? desName,List<Destination>? list){
    this.desName = desName;
    this.list = list;
  }
  String? desName;
  List<Destination>? list;
}
var row1 = new Destinations("today's selection",[
  Destination("assets/notre-dame-d-afrique.jpg", "Basilique Notre Dame ", "algies","Basilica in Algiers overlooking the bay of the capital city. Completed in 1872, this splendid building of neo-bysantine architecture is ornately decorated in the inside in the Spanish-Moorish decor. Unique in its genre, it is probably one of the only churches in the world where the invocation to the Virgin Mary"),
  Destination("assets/20180224-122151-largejpg.jpg", "Kasbah of Algiers", "algiers","The upper old part of Algiers has interesting Moorish houses, minarets and old citadel."),
  Destination("assets/le-jardin-d-essai-du.jpg", "Le Jardin d'Essai ", "jijel","The Botanical Garden of Algiers, Algeria History of the Garden In 1831, the French colony began undertaking remediation work on the marshlands in order to cultivate agricultural soil. By 1832, Governor General Antoine Avisard signed a decree that established a test garden in a place called El Hamma, east of Algiers. El Hamma provided a perfect plot for the agricultural plans due to its richness in water and cool climate near the sea. The aim of the garden was to serve as both a model farm and a test garden to install, acclimate and study various imported plant species. The garden’s main function in the beginning was diffusing useful plants for medicinal, economic and commercial purposes before scientific and horticultural activities were adopted. The zoological garden was created in 1900, under the initiative of Dr Joseph Ange who was the correspondent of the Paris Museum. By 1837, the garden’s capacity grew from 5 to 18 hectares with an increase"),
  Destination("assets/memorial-du-martyr (1).jpg", "Memorial du Martyr", "algiers","this symbol that represent the sacrifice of the algerian brave martyrs in order get the iberation from the french after 132 of colonisation "),
]);

var discoverTheDeserts = new Destinations("discover the deserts",[
  Destination("assets/beautiful-sand-dunes (1).jpg", "Algerian Sahara", "algerian south","The largest desert in the world, extending between 800 and 1,200 miles and at least 3,000 miles from east to west, covers one-fourth the area of Africa including the lands of Algeria, Morocco, Libya, Tunisia and Egypt."),
  Destination("assets/tin-intouhani-tassili.jpg", "Tassili N'Ajjer", "tassili","A vast plateau on the edge of the Sahara is famous for the 8,000 years old cave paintings."),
  Destination("assets/le-hoggar-splendide-du.jpg", "La vache qui pleure", "DJG airpor","commonly visited en route to or from DJG airport, this is the famous crying cows engraving, on an inselberg.according to the legend dating back to 7000-8000 BC, the cows are in despair and have visible tears from their eyes as they couldnt find water to quench their thirst."),
  Destination("assets/s.jpg", "Assekrem", "hogar","For the moment you need an police escort in order to ride until this mystical place , from Tamanrasset it s 75 km , I advice you to book one night at the mountain hostel , you have to book via local agency , It s more than worth it it s unique , out of time , magical, climb on top and visit the Père Foucauld house"),
]);
var enjoyTheNature = new Destinations("enjoy the gorgeous nature",
  [
    Destination("assets/tipasa-archaeological.jpg", "Tipasa Archaeological Park", "tipaza","Amazing site with Roman ruins and other historical landmarks. We absolutely loved the tour that we got from the Archeological Museum organized thanks to Nboujiw tourism. The guide was extremely friendly and knowledgeable. We did a complete 3 hour tour including the museum and ancient site. Both the teenagers and small kids liked it. The adults in our group were thrilled. The views are beautiful and the site full of history and surprises."),
    Destination("assets/chrea.jpg", "Chrea National Park", "bejaya","chrea is a town in Algeria, located in Blida Province, Ouled Yaïch District, in a mountainous area named Tell Atlas, near Blida. It had a population of 783 in 2008. In its municipality is situated the Chréa National Park, one of the largest national parks of the country, and a ski resor"),
    Destination("assets/cascades-de-kefrida.jpg", "Cascades Kefrida", "bejaya","Béjaïa formerly Bougie and Bugia, is a Mediterranean port city and communeon the Gulf of Béjaïa in Algeria; it is the capital of Béjaïa Province, Kabylia."),
  
  ]
);

var tryNewDishes = new Destinations("try new dishes",
  [
    Destination("assets/burjOran.jpg", "Burj Wahran", "oran","Burj Wahran is the first restaurant and wellness complex in Algeria. Concerning the restoration, our establishment is made up of five restaurants divided into several culinary specialties including Algerian gastronomy,"),
    Destination("assets/darslimani.jpg", "Dar slimani", "bourj aririj","Dar Slimani est la meilleur adresse pour découvrir les produits algériens tels que l'extrait de datte, le beurre de cacahuète, l'huile d'olive, la figue et bien d'autres produits."),
    Destination("assets/jenina.jpg", "Taj Mahal", "algies","dBurj Wahran is the first restaurant and wellness complex in Algeria. Concerning the restoration, our establishment is made up of five restaurants divided into several culinary specialties including Algerian gastronomy"),
  ]
);
