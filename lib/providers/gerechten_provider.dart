import 'package:flutter/material.dart';
import 'package:shop_app/models/gerecht.dart';
import 'package:shop_app/pages/gerechten_ingredienten_page.dart';

class GerechtenProvider with ChangeNotifier {
  final List<Gerecht> _items = [
    Gerecht(
      id: 'p1',
      title: 'Orzo met kip en prei',
      description:
          '1. Was de prei en snijd fijn. Snipper de ui, snijd de knoflook fijn en de kip in stukjes.\n \n'
          '2. Breng de kip op smaak met kipkruiden.\n \n'
          '3. Doe een scheutje olie in een pan en fruit de ui aan en bak ondertussen de prei mee.\n \n '
          '4. Voeg na 4-5 minuten de kip toe en bak in circa 8-10 minuten gaar.\n \n'
          '5. Kook ondertussen de orzo volgens de instructies op de verpakking.\n \n'
          '6. Doe slagroom, knoflook, Italiaanse kruiden en zout en peper in de pan met de kip en laat zachtjes pruttelen totdat is ingedikt. Heb je toevallig nog wat kruidenroomkaas in de koelkast? Doe gerust een eetlepel erbij in de pan.\n \n \n'
          '7. Als de saus wat is ingedikt voeg je de orzo toe, even mengen en serveer met geraspte parmezaanse kaas.\n',
      bereidingstijd: '30 minuten',
      ingredienten: '200 gr orzo. \n \n'
          '300 gr kippendijfilet \n \n'
          '1 prei \n \n'
          '1 ui \n \n'
          '2 tenen knoflook \n \n'
          '1,5 tl kipkruiden \n \n'
          '150 ml slagroom \n \n'
          '2 tl Italiaanse kruiden \n \n'
          'peper en zout \n \n'
          'evt. geraspte parmezaanse kaas en rucola \n \n',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/02/588A2807.jpg.webp',
    ),
    Gerecht(
      id: 'p2',
      title: 'Pasta Pesto',
      description:
          '1. Kook de pasta volgens de bereidingswijze beetgaar (al dente). \n \n'
          '2. Neem een ruime koekenpan, doe hierin een beetje olijfolie en fruit en ui en knoflook aan. \n \n'
          '3. Doe de kip in dezelfde pan, breng op smaak met zout en peper en bak gaar. \n \n'
          '4. Voeg de zelfgemaakte pesto en room toe, laat ietsjes inkoken. \n \n'
          '5. Giet de pasta af en voeg toe aan de pestoroomsaus met kip en schep dit goed om zodat alle pasta voorzien is van een laagje pesto saus. \n \n'
          '6. Serveer de pasta (naar smaak) met geroosterde pijnboompitten, cherrytomaatjes en rucola. Eet smakelijk!',
      bereidingstijd: '10 minuten',
      ingredienten: '250 gram penne (of een andere pastasoort naar keuze) \n \n'
          '1 ui (gesnipperd) \n \n'
          '2 tenen knoflook (uitgeperst) \n \n'
          '300 gram kipfilet (in blokjes) \n \n'
          '2 eetlepels zelfgemaakte pesto \n \n'
          '100 ml kookroom \n \n'
          'olijfolie, peper en zout \n \n'
          'Om te serveren: geroosterde pijnboompitten, cherrytomaten en rucola \n \n',
      imageUrl:
          'https://www.eefkooktzo.nl/wp-content/uploads/2021/07/Pasta-pesto.jpg',
    ),
    Gerecht(
      id: 'p3',
      title: 'Gevulde paprika’s met spinazie en feta',
      description: 'Verwarm de oven voor op 200 graden. \n \n'
          '1. Snijd de paprika\'s door de helft en verwijder de zaadjes. \n \n'
          '2. Snijd de mozzarella in plakjes. \n \n'
          '3. Giet een scheutje olie in een pan en bak de knoflook en spinazie. \n \n'
          '4. Als de spinazie geslonken is, kan het vuur uit. \n \n'
          '5. Verkruimel de feta en doe in een kom. Voeg de spinazie, ei, oregano, geraspte kaas en een snufje zout en peper toe. Meng alles door elkaar. \n \n'
          '6. Vul de paprika\'s met het spinazie mengsel. \n \n'
          '7. Bak ze ongeveer 20 minuten in de oven en leg dan de plakjes mozzarella op de paprika\'s. Bak ze daarna nog 10 minuten. \n \n',
      bereidingstijd: '20 minuten',
      ingredienten: '2 paprika/s \n \n'
          '100 gr feta \n \n'
          '150 gr spinazie diepvries of vers \n \n'
          '1 ei \n \n'
          '2 tenen knoflook \n \n'
          '2 tl oregano \n \n'
          'handje geraspte kaas \n \n'
          '1 bol mozzarella \n \n'
          'zout en peper \n \n',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/01/588A1873-1024x682.jpg.webp',
    ),
    Gerecht(
      id: 'p4',
      title: 'Vegetarische champignonsoep',
      description:
          '1. Snipper de ui, snijd de knoflook fijn en de champignons in plakjes. \n \n'
          '2. Smelt wat boter in een (braad/soep) pan en fruit de ui aan en bak de champignons mee. \n \n'
          '3. Voeg na ongeveer 10 minuten de knoflook en de kruiden toe. \n \n'
          '4. Blus daarna af met de witte wijn en laat nog even een minuutje pruttelen. \n \n'
          '5. Roer de bloem door de melk en zorg dat de klontjes verdwenen zijn. \n \n'
          '6. Doe de groentebouillon en de melk erbij en breng aan de kook. Laat de soep 15-20 minuten zachtjes pruttelen totdat je een lekkere romige soep hebt. \n \n',
      bereidingstijd: '40 minuten',
      ingredienten: '500 gr champignons \n \n'
          '500 ml groentebouillon \n \n'
          '150 ml melk \n \n'
          '100 ml witte wijn \n \n'
          '2 uien \n \n'
          '2 tenen knoflook \n \n'
          '2 eetlepels bloem \n \n'
          '2 eetlepels sojasaus \n \n'
          '2 theelepels paprikapoeder \n \n'
          '2 theelepels peterselie \n \n'
          '2 theelepels tijm \n \n'
          'snuf peper en zout \n \n',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/01/588A1441.jpg',
    ),
    Gerecht(
      id: 'p5',
      title: 'Quiche hete kip',
      description: '1. Verwarm de oven voor op 200 graden. \n \n'
          '2. Bedek een ovenschaal/springvorm met bladerdeeg en prik wat gaatjes in de bodem van het deeg met een vork. \n \n'
          '3. Snijd de kipfilet in blokjes, snipper de ui, snijd de knoflook fijn en de paprika en courgette in stukjes.  \n \n'
          '4. Doe een scheutje olie in een pan en fruit de ui en knoflook aan. Voeg na een minuut de kip toe en bak rondom aan. Doe dan de paprika en courgette erbij samen met de ketchup, ketjap, sambal, suiker en pindakaas. Laat 5 minuten zachtjes pruttelen en roer regelmatig even door. \n \n'
          '5. Verdeel de inhoud uit de pan over het bladerdeeg. \n \n'
          '6. Klop de eieren en creme fraiche los samen met een snufje peper en zout. Giet het eimengsel over de vulling van de hartige taart. Voor de kaasliefhebbers onder ons: strooi gerust nog wat geraspte kaas over de bovenkant. \n \n'
          '7. Bak de quiche in 30-40 minuten mooi goudbruin. \n \n',
      bereidingstijd: '50 minuten',
      ingredienten: '5 plakjes bladerdeeg \n \n'
          '300 gr kipfilet \n \n'
          '2 eetlepels ketchup \n \n'
          '3 eetlepes ketjap \n \n'
          '1,5 eetlepels pindakaas \n \n'
          '2 theelepes suiker \n \n'
          '1 theelepel sambal \n \n'
          '2 tenen knoflook \n \n'
          '1 ui \n \n'
          '1 paprika \n \n'
          '1 courgette \n \n'
          '4 eieren \n \n'
          '2 eetlepels creme fraiche \n \n'
          'zout en peper \n \n',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/02/588A2566-768x1152.jpg.webp',
    ),
    Gerecht(
      id: 'p6',
      title: 'Eenpansgerecht met rookworst',
      description:
          '1. Snipper de ui en snijd de paprika in reepjes. Snijd de witte kool in stukjes. \n \n'
          '2. Snijd ook de rookworst in plakjes. \n \n'
          '3. Giet een scheutje olie in een pan en bak de rookworst een paar minuten. Schep de rookworst uit de pan. \n \n'
          '4. Bak de ui en paprika in dezelfde pan als de rookworst. Voeg na 5 minuten de witte kool en de kruiden toe. Bak dit een minuut of 20 totdat de witte kool zacht is. \n \n'
          '5. Voeg daarna de rookworst weer toe en meng alles door elkaar. \n \n'
          '6. Je kunt het gerecht zo serveren of je maakt er nog wat rijst, rosti of aardappelpuree bij. \n \n',
      bereidingstijd: '30 minuten',
      ingredienten: '1 rookworst \n \n'
          '1 kleine witte kool circa 600 gr \n \n'
          '2 paprika/s \n \n'
          '1 ui \n \n'
          '1 rode peper \n \n'
          '1 eetlepel paprikapoeder \n \n'
          '0,5 theelepel komijn \n \n'
          '1 theelepel peterselie \n \n'
          'snufje zout en peper \n \n',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2022/12/588A9959-768x512.jpg.webp',
    ),
    Gerecht(
      id: 'p7',
      title: 'Plaattaart met champignons en prei',
      description: '1. Verwarm de oven voor op 200 graden. \n \n'
          '2. Maak de champignons schoon en snijd daarna in plakjes. Was de prei en snijd fijn of gebruik eventueel een zakje voorgesneden prei. \n \n'
          '3. Doe een scheutje olie in een pan en bak de prei en champignons aan voor ongeveer 5 minuten.  \n \n'
          '4. Bekleed een bakplaat met bakpapier en rol hierover het bladerdeeg uit. \n \n'
          '5. Meng in een schaaltje de creme fraiche en zure room door elkaar. Roer dan de tijm en wat zout en peper erdoor.  \n \n'
          '6. Smeer het bladerdeeg in met het creme fraiche mengsel. Schep dan de prei en champignons erop. Verdeel wat geitenkaas over de bovenkant en bak de plaattaart in circa 25-30 minuten mooi goudbruin.  \n \n',
      bereidingstijd: '40 minuten',
      ingredienten: '1 rol bladerdeeg \n \n'
          '150 gr champignons \n \n'
          '100 gr geitenkaas \n \n'
          '3 eetlepels creme fraiche \n \n'
          '1 eetlepel zure room \n \n'
          '1,5 theelepel tijm \n \n'
          'snuf peper en zout \n \n',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/01/588A1752.jpg',
    ),
    Gerecht(
      id: 'p8',
      title: 'Orzo met kip en prei',
      description:
          '1. Was de prei en snijd fijn. Snipper de ui, snijd de knoflook fijn en de kip in stukjes.\n \n'
          '2. Breng de kip op smaak met kipkruiden.\n \n'
          '3. Doe een scheutje olie in een pan en fruit de ui aan en bak ondertussen de prei mee.\n \n '
          '4. Voeg na 4-5 minuten de kip toe en bak in circa 8-10 minuten gaar.\n \n'
          '5. Kook ondertussen de orzo volgens de instructies op de verpakking.\n \n'
          '6. Doe slagroom, knoflook, Italiaanse kruiden en zout en peper in de pan met de kip en laat zachtjes pruttelen totdat is ingedikt. Heb je toevallig nog wat kruidenroomkaas in de koelkast? Doe gerust een eetlepel erbij in de pan.\n \n \n'
          '7. Als de saus wat is ingedikt voeg je de orzo toe, even mengen en serveer met geraspte parmezaanse kaas.\n',
      bereidingstijd: '30 minuten',
      ingredienten: 'bvbjfsbkjnfjkdjjfkd',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/02/588A2807.jpg.webp',
    ),
    Gerecht(
      id: 'p9',
      title: 'Pasta Pesto',
      description:
          '1. Kook de pasta volgens de bereidingswijze beetgaar (al dente). \n \n'
          '2. Neem een ruime koekenpan, doe hierin een beetje olijfolie en fruit en ui en knoflook aan. \n \n'
          '3. Doe de kip in dezelfde pan, breng op smaak met zout en peper en bak gaar. \n \n'
          '4. Voeg de zelfgemaakte pesto en room toe, laat ietsjes inkoken. \n \n'
          '5. Giet de pasta af en voeg toe aan de pestoroomsaus met kip en schep dit goed om zodat alle pasta voorzien is van een laagje pesto saus. \n \n'
          '6. Serveer de pasta (naar smaak) met geroosterde pijnboompitten, cherrytomaatjes en rucola. Eet smakelijk!',
      bereidingstijd: '10 minuten',
      ingredienten: 'bvbjfsbkjnfjkdjjfkd',
      imageUrl:
          'https://www.eefkooktzo.nl/wp-content/uploads/2021/07/Pasta-pesto.jpg',
    ),
    Gerecht(
      id: 'p10',
      title: 'Gevulde paprika’s met spinazie en feta',
      description: 'Verwarm de oven voor op 200 graden. \n \n'
          '1. Snijd de paprika\'s door de helft en verwijder de zaadjes. \n \n'
          '2. Snijd de mozzarella in plakjes. \n \n'
          '3. Giet een scheutje olie in een pan en bak de knoflook en spinazie. \n \n'
          '4. Als de spinazie geslonken is, kan het vuur uit. \n \n'
          '5. Verkruimel de feta en doe in een kom. Voeg de spinazie, ei, oregano, geraspte kaas en een snufje zout en peper toe. Meng alles door elkaar. \n \n'
          '6. Vul de paprika\'s met het spinazie mengsel. \n \n'
          '7. Bak ze ongeveer 20 minuten in de oven en leg dan de plakjes mozzarella op de paprika\'s. Bak ze daarna nog 10 minuten. \n \n',
      bereidingstijd: '20 minuten',
      ingredienten: 'bvbjfsbkjnfjkdjjfkd',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/01/588A1873-1024x682.jpg.webp',
    ),
    Gerecht(
      id: 'p11',
      title: 'Vegetarische champignonsoep',
      description:
          '1. Snipper de ui, snijd de knoflook fijn en de champignons in plakjes. \n \n'
          '2. Smelt wat boter in een (braad/soep) pan en fruit de ui aan en bak de champignons mee. \n \n'
          '3. Voeg na ongeveer 10 minuten de knoflook en de kruiden toe. \n \n'
          '4. Blus daarna af met de witte wijn en laat nog even een minuutje pruttelen. \n \n'
          '5. Roer de bloem door de melk en zorg dat de klontjes verdwenen zijn. \n \n'
          '6. Doe de groentebouillon en de melk erbij en breng aan de kook. Laat de soep 15-20 minuten zachtjes pruttelen totdat je een lekkere romige soep hebt. \n \n',
      bereidingstijd: '40 minuten',
      ingredienten: 'bvbjfsbkjnfjkdjjfkd',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/01/588A1441.jpg',
    ),
    Gerecht(
      id: 'p12',
      title: 'Quiche hete kip',
      description: '1. Verwarm de oven voor op 200 graden. \n \n'
          '2. Bedek een ovenschaal/springvorm met bladerdeeg en prik wat gaatjes in de bodem van het deeg met een vork. \n \n'
          '3. Snijd de kipfilet in blokjes, snipper de ui, snijd de knoflook fijn en de paprika en courgette in stukjes.  \n \n'
          '4. Doe een scheutje olie in een pan en fruit de ui en knoflook aan. Voeg na een minuut de kip toe en bak rondom aan. Doe dan de paprika en courgette erbij samen met de ketchup, ketjap, sambal, suiker en pindakaas. Laat 5 minuten zachtjes pruttelen en roer regelmatig even door. \n \n'
          '5. Verdeel de inhoud uit de pan over het bladerdeeg. \n \n'
          '6. Klop de eieren en creme fraiche los samen met een snufje peper en zout. Giet het eimengsel over de vulling van de hartige taart. Voor de kaasliefhebbers onder ons: strooi gerust nog wat geraspte kaas over de bovenkant. \n \n'
          '7. Bak de quiche in 30-40 minuten mooi goudbruin. \n \n',
      bereidingstijd: '50 minuten',
      ingredienten: 'bvbjfsbkjnfjkdjjfkd',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/02/588A2566-768x1152.jpg.webp',
    ),
    Gerecht(
      id: 'p13',
      title: 'Eenpansgerecht met rookworst',
      description:
          '1. Snipper de ui en snijd de paprika in reepjes. Snijd de witte kool in stukjes. \n \n'
          '2. Snijd ook de rookworst in plakjes. \n \n'
          '3. Giet een scheutje olie in een pan en bak de rookworst een paar minuten. Schep de rookworst uit de pan. \n \n'
          '4. Bak de ui en paprika in dezelfde pan als de rookworst. Voeg na 5 minuten de witte kool en de kruiden toe. Bak dit een minuut of 20 totdat de witte kool zacht is. \n \n'
          '5. Voeg daarna de rookworst weer toe en meng alles door elkaar. \n \n'
          '6. Je kunt het gerecht zo serveren of je maakt er nog wat rijst, rosti of aardappelpuree bij. \n \n',
      bereidingstijd: '30 minuten',
      ingredienten: 'bvbjfsbkjnfjkdjjfkd',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2022/12/588A9959-768x512.jpg.webp',
    ),
    Gerecht(
      id: 'p14',
      title: 'Plaattaart met champignons en prei',
      description: '1. Verwarm de oven voor op 200 graden. \n \n'
          '2. Maak de champignons schoon en snijd daarna in plakjes. Was de prei en snijd fijn of gebruik eventueel een zakje voorgesneden prei. \n \n'
          '3. Doe een scheutje olie in een pan en bak de prei en champignons aan voor ongeveer 5 minuten.  \n \n'
          '4. Bekleed een bakplaat met bakpapier en rol hierover het bladerdeeg uit. \n \n'
          '5. Meng in een schaaltje de creme fraiche en zure room door elkaar. Roer dan de tijm en wat zout en peper erdoor.  \n \n'
          '6. Smeer het bladerdeeg in met het creme fraiche mengsel. Schep dan de prei en champignons erop. Verdeel wat geitenkaas over de bovenkant en bak de plaattaart in circa 25-30 minuten mooi goudbruin.  \n \n',
      bereidingstijd: '40 minuten',
      ingredienten: 'bvbjfsbkjnfjkdjjfkd',
      imageUrl:
          'https://www.lekkerensimpel.com/wp-content/uploads/2023/01/588A1752.jpg',
    ),
  ];

  List<Gerecht> get getItems {
    return [..._items];
  }

  void addGerecht(value) {
    _items.add(value);
    notifyListeners();
  }

  Gerecht findById(String id) {
    return _items.firstWhere((gerecht) => gerecht.id == id);
  }
}
