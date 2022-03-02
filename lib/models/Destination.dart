class Destination {
  int id;
  String imageUrl;
  String city;
  String country;
  String description;
  String label;
  int rating;
  String name;
  String address;
  String type;
  String markerId;
  double latitude;
  double longitude;
  String icon;
  String title;
  String snippet;
  String category;
  //contractor
  Destination({
    required this.id,
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.label,
    required this.rating,
    required this.name,
    required this.address,
    required this.type,
    required this.markerId,
    required this.latitude,
    required this.longitude,
    required this.icon,
    required this.title,
    required this.snippet,
    required this.category,
  });
}

List<Destination> Destinations = [
  Destination(
    id: 0,
    imageUrl: 'assets/images/darsouiri.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "Dar Souiri Coeur battant d'Essaouira Dar Souiri est simplement la maison des habitants d'Essaouira. Le siège de l'Association Essaouira Mogador est un centre culturel très actif situé à deux pas de Bab Sebaa dans la nouvelle Kasbah. Les origines de dar Souiri: Dar Souiri est un riad en pierres et chaux construit dans le quartier de la Kasbah El Jadida (la 'nouvelle kasbah'), à partir de 1863. La Kasbah El Jadida devait répondre au manque d'habitations et d'entrepôts de commerce d'une cité de plus en plus prospère. Dessiné selon un minutieux plan rectangulaire en damier, le quartier est constitué de vastes maisons semblables à Dar Souiri. Le créateur du quartier: A l'initiative de la création de la Kasbah El Jadida, le sultan Sidi Mohamed Ben Abderrahmane régna de 1859 à 1873. Très ouvert aux arts et aux sciences, passionné de mathématiques, de géométrie, d'astronomie, de poésie ou de musique, il fit également traduire de nombreux ouvrages scientifiques en langue arabe et fut l'inventeur d'un instrument de mesure des heures de prière réglé sur les astres. Association Essaouira Mogardor: L'Association Essaouira Mogador, fondée en 1992 par André Azoulay, œuvre pour la sauvegarde et la promotion du patrimoine humain, culturel et historique d'Essaouira. Son siège, Dar Souiri, est un centre culturel ouvert à tous où se déroulent de nombreux événements artistiques, des rencontres culturelles, des cours de langue... L'association est également investie dans le Festival Gnaoua, le Printemps des Alizés, le Festival des Andalousies Atlantiques, etc.",
    label: 'Coeur battant d\'Essaouira.',
    type: '',
    name: 'Dar Souiri',
    address: 'Essaouira',
    rating: 4,
    markerId: 'id-1',
    latitude: 31.511465723874213,
    longitude: -9.769851802973353,
    icon: '',
    title: 'Dar Souiri',
    snippet: 'Un lieu historique',
    category: 'special',
  ),
  Destination(
    id: 1,
    imageUrl: 'assets/images/latourdehorloge.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "La Tour de l'Horloge Ville juive et commerciale Depuis cette ancienne synagogue devenue café, retour sur l'exception souirie, ville à large majorité juive jusqu'au 19e siècle et cœur du commerce maritime marocain. La Tour de l'Horloge Si elle n'a pas toujours donné l'heure, la Tour de l'Horloge reste un point de repère incontournable de la Kasbah. Un rendez-vous « bab I'magana » (porte de l'horloge) est inratable ! Construite en 1912 à la demande du Maréchal Lyautey, Résident général du Maroc, la tour a été dessinée par l'architecte Georges Marie et l'horloge fournie par la société Henry-Lepaule, grande famille d'horlogers vieille de deux siècles. Elle a été entièrement restaurée pour son centenaire en 2012.",
    label: 'Ville juive et commerciale',
    type: '',
    name: 'La Tour de l\'Horloge',
    address: 'Essaouira',
    rating: 0,
    markerId: 'id-2',
    latitude: 31.512142010542288,
    longitude: -9.770698661868849,
    icon: '',
    title: 'La Tour de l\'Horloge ',
    snippet: 'Un lieu historique',
    category: 'normale',
  ),
  Destination(
    id: 2,
    imageUrl: 'assets/images/place-moulay-hassan-taros.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "Destination Moulay Hassan Essaouira, cadeau du ciel Une évocation de l'ADN souiri, nourri des singularités d'Essaouira et de ses beautés, face à l\'océan et ses tempêtes. La ville aux 7 noms: Les textes antiques évoquent \"Tamuziga\", puis au 11e siècle apparaît le nom \"Amagdoul\", un mot berbère emprunté à l'hébreu et signifiant : tour, kasbah, forteresse. Il est transformé par les Portugais au 16e siècle en \"Mogadouro\", abrégé ensuite par les Espagnols en \"Mogador\". Le départ des Portugais donne naissance à \"Souira\" et à \"Tassort\" en berbère. Puis en 1956, à l\'indépendance du Maroc, la ville devient \"Essaouira\". La période antique: La description du Périple du navigateur et explorateur carthaginois Hannon, vers le 6e siècle avant J.C., évoque la fondation d\'une colonie sur un îlot au large d\'Essaouira. Avant lui, l\'archéologie atteste d'une présence phénicienne datant du milieu du 7e siècle avant J.C. sur l'îlot de Mogador. Puis le site semble être peu fréquenté jusqu'au 1er siècle avant J.C., époque du règne du roi berbère de Mauretanie Juba II.",
    label: 'Essaouira, cadeau du ciel',
    type: 'Moulay Hassan',
    name: 'Moulay Hassan',
    address: 'Essaouira',
    rating: 3,
    markerId: 'id-3',
    latitude: 31.511607623093123,
    longitude: -9.771878228032707,
    icon: '',
    title: 'Destination Moulay Hassa ',
    snippet: 'Un lieu historique',
    category: 'normale',
  ),
  Destination(
    id: 3,
    imageUrl: 'assets/images/port de peche.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "Port de Pêche L'héritage phénicien Petite épopée de la couleur pourpre, lorsque les phéniciens firent des îles d'Essaouira leur principal établissement sur la côte atlantique africaine. La présence phénicienne: Les phéniciens sont un peuple antique originaire d'une région correspondant approximativement à l'actuel Liban qu'ils ont peuplée entre 1200 et 300 avant J.C. Grands voyageurs et commerçants ils ont établi des comptoirs sur toute la Méditerranée et au-delà, Essaouira étant leur implantation la plus extrême. Les fouilles archéologiques, notamment de nombreux fragments de vases, attestent leur présence sur l'îlot de Mogador. La couleur pourpre: Une zone largement produite par les Phéniciens dans des images de couleur violette d'hématome murex cochléaire et purpura. Il fallait environ 10 000 coquillages pour obtenir un gramme de pourpre faisant de cette teinture un produit cher. Dans la Rome antique elle était réservée aux sénateurs et consuls puis seulement aux empereurs de couleur pourpre. Les îles en face d'Essaouira ont pris leur nom.",
    label: 'L\'héritage phénicien',
    type: 'historical',
    name: 'Port de Pêche',
    address: 'Essaouira',
    rating: 4,
    markerId: 'id-4',
    latitude: 31.51012515130355,
    longitude: -9.7737764628743,
    icon: '',
    title: 'Port de Pêche ',
    snippet: 'Un lieu historique',
    category: 'normale',
  ),
  Destination(
    id: 4,
    imageUrl: 'assets/images/sqaladuport.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "Sqala du port Remparts éternels Classées au patrimoine mondial des remparts dits \"à la Vauban\", les murailles d'Essaouira et leurs vieilles pierres nous soufflent leurs très grandes et leurs belles histoires. Remparts à la Vauban: Le marquis de Vauban, né en 1633 était un ingénieur et architecte militaire au service du roi de France Louis XIV. Il est connu pour avoir doté la France d'une \"ceinture de fer\" de 150 citadelles fortifiées et a donné son nom à un type d'architecture militaire qui sera largement reprise hors de France. La Sqala, Destination forte: Construite en 1769 avec les pierres de l'ancien Castelo Real édifié par les Portugais en 1506, la Sqala du port est un point de défense stratégique interdisant l'accès à l'entrée maritime de la ville. Composée de deux ailes fortifiées de 200m de long, elle possède toujours ses canons en bronze de fabrication espagnole et hollandaise.Port de Pêche L'héritage phénicien Petite épopée de la couleur pourpre, lorsque les phéniciens firent des îles d'Essaouira leur principal établissement sur la côte atlantique africaine. La présence phénicienne: Les phéniciens sont un peuple antique originaire d'une région correspondant approximativement à l'actuel Liban qu'ils ont peuplée entre 1200 et 300 avant J.C. Grands voyageurs et commerçants ils ont établi des comptoirs sur toute la Méditerranée et au-delà, Essaouira étant leur implantation la plus extrême. Les fouilles archéologiques, notamment de nombreux fragments de vases, attestent leur présence sur l'îlot de Mogador. La couleur pourpre: Une zone largement produite par les Phéniciens dans des images de couleur violette d'hématome murex cochléaire et purpura. Il fallait environ 10 000 coquillages pour obtenir un gramme de pourpre faisant de cette teinture un produit cher. Dans la Rome antique elle était réservée aux sénateurs et consuls puis seulement aux empereurs de couleur pourpre. Les îles en face d'Essaouira ont pris leur nom.",
    label: 'Remparts éternels',
    type: 'historical',
    name: 'Sqala du port',
    address: 'Essaouira',
    rating: 4,
    markerId: 'id-5',
    latitude: 31.510288963304767,
    longitude: -9.77418318915918,
    icon: '',
    title: 'Sqala du port',
    snippet: 'Un lieu historique',
    category: 'normale',
  ),
  Destination(
    id: 5,
    imageUrl: 'assets/images/portdelamarine.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "Porte de la Marine Signature des civilisations Sur ses pierres, la présence visible encore aujourd'hui des différentes civilisations qui se sont succédées à Essaouira, aux côtés de la rose de Mogador. La porte de la marine synthétise plusieurs influences architecturales. Si la voute arrondie est typique de l'architecture des portes marocaines, le fronton triangulaire et les échauguettes sont d'inspiration européenne, tandis que les demi colonnes évoquent l'Antiquité gréco romaine. Appelée en arabe \"Bab al Marsa\", cette porte fut édifiée en 1770 et porte la signature de son architecte, Ahmed El Inglizi (l'Anglais) ou Ahmed El Alj (le renégat). Cet Anglais converti à l'Islam fut corsaire à Salé avant d'être architecte et ingénieur au service du sultan Mohammed Ben Abdallah. Il construisit également les fortifications de l'entrée du port.",
    label: 'Signature des civilisations',
    type: 'historical',
    name: 'Porte de la Marine',
    address: 'Essaouira',
    rating: 5,
    markerId: 'id-6',
    latitude: 31.51004244678904,
    longitude: -9.773643415796132,
    icon: '',
    title: 'Porte de la Marine',
    snippet: 'Un lieu historique',
    category: 'normale',
  ),
  Destination(
    id: 6,
    imageUrl: 'assets/images/facealocean.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "Face à l'océan Love story anglaise Témoignage d'une \"love story\" entre la Grande-Bretagne et Essaouira, leurs échanges commerciaux, linguistiques et culturels autour d'une tasse de thé dont il faut écouter l'histoire. Au 19e siècle, les ustensiles à thé européens sont en vogue. Un commerçant marocain vivant à Manchester s'associe alors avec Richard Wright, l'orfèvre le plus prestigieux d'Angleterre, et devient le principal fournisseur de services à thé au Maroc. La théière Wright aux courbes typiques deviendra \"rayt\" en marocain, et les théières seront signées en arabe pour que l'illusion soit parfaite. La désormais célèbre \"théière marocaine\" venait de naître... à Manchester!Porte de la Marine Signature des civilisations Sur ses pierres, la présence visible encore aujourd'hui des différentes civilisations qui se sont succédées à Essaouira, aux côtés de la rose de Mogador. La porte de la marine synthétise plusieurs influences architecturales. Si la voute arrondie est typique de l'architecture des portes marocaines, le fronton triangulaire et les échauguettes sont d'inspiration européenne, tandis que les demi colonnes évoquent l'Antiquité gréco romaine. Appelée en arabe \"Bab al Marsa\", cette porte fut édifiée en 1770 et porte la signature de son architecte, Ahmed El Inglizi (l'Anglais) ou Ahmed El Alj (le renégat). Cet Anglais converti à l'Islam fut corsaire à Salé avant d'être architecte et ingénieur au service du sultan Mohammed Ben Abdallah. Il construisit également les fortifications de l'entrée du port. Le Maroc était à l'origine plutôt consommateur de tisanes et l'introduction du thé dans le royaume fait l'objet de mille histoires merveilleuses et... pas toutes vraies ! Une certitude cependant : entre 1830 et 1840 la consommation de thé est passée de 3 à 20 tonnes par an et l'Angleterre possède le quasi monopole des importations marocaines. Restait à ajouter quelques feuilles de menthe... et un mythe était né.",
    label: 'Love story anglaise ',
    type: 'Face à l\'océan',
    name: 'Face à l\'océan',
    address: 'Essaouira',
    rating: 5,
    markerId: 'id-7',
    latitude: 31.510391169934767,
    longitude: -9.773579042780135,
    icon: '',
    title: 'Face à l\'océan',
    snippet: 'l\'océan',
    category: 'normale',
  ),
/*   Destination(
    id: 7,
    imageUrl: 'assets/images/mosqueedekasbah.jpg',
    city: 'Essaouira',
    country: 'Maroc',
    description:
        "Face à l'océan Love story anglaise Témoignage d'une \"love story\" entre la Grande-Bretagne et Essaouira, leurs échanges commerciaux, linguistiques et culturels autour d'une tasse de thé dont il faut écouter l'histoire. Au 19e siècle, les ustensiles à thé européens sont en vogue. Un commerçant marocain vivant à Manchester s'associe alors avec Richard Wright, l'orfèvre le plus prestigieux d'Angleterre, et devient le principal fournisseur de services à thé au Maroc. La théière Wright aux courbes typiques deviendra \"rayt\" en marocain, et les théières seront signées en arabe pour que l'illusion soit parfaite. La désormais célèbre \"théière marocaine\" venait de naître... à Manchester!Porte de la Marine Signature des civilisations Sur ses pierres, la présence visible encore aujourd'hui des différentes civilisations qui se sont succédées à Essaouira, aux côtés de la rose de Mogador. La porte de la marine synthétise plusieurs influences architecturales. Si la voute arrondie est typique de l'architecture des portes marocaines, le fronton triangulaire et les échauguettes sont d'inspiration européenne, tandis que les demi colonnes évoquent l'Antiquité gréco romaine. Appelée en arabe \"Bab al Marsa\", cette porte fut édifiée en 1770 et porte la signature de son architecte, Ahmed El Inglizi (l'Anglais) ou Ahmed El Alj (le renégat). Cet Anglais converti à l'Islam fut corsaire à Salé avant d'être architecte et ingénieur au service du sultan Mohammed Ben Abdallah. Il construisit également les fortifications de l'entrée du port. Le Maroc était à l'origine plutôt consommateur de tisanes et l'introduction du thé dans le royaume fait l'objet de mille histoires merveilleuses et... pas toutes vraies ! Une certitude cependant : entre 1830 et 1840 la consommation de thé est passée de 3 à 20 tonnes par an et l'Angleterre possède le quasi monopole des importations marocaines. Restait à ajouter quelques feuilles de menthe... et un mythe était né.",
    label: 'Love story anglaise ',
    type: '',
    name: 'Face à l\'océan',
    address: 'Essaouira',
    rating: 5,
    markerId: 'id-7',
    latitude: 31.510391169934767,
    longitude: -9.773579042780135,
    icon: '',
    title: 'Face à l\'océan',
    snippet: 'l\'océan',
    category: 'normale',
  ), */
];

Destination BaytDakira = Destination(
  id: 8,
  imageUrl: 'assets/images/baytdakira3.jpg',
  city: 'Essaouira',
  country: 'Maroc',
  description:
      "«Bayt Dakira», la « maison de la mémoire », est un espace spirituel et patrimonial de préservation et de valorisation de la mémoire judéo-marocaine, unique en son genre au sud de la Méditerranée et en terre d’Islam. La visite de ce lieu par le Souverain est un acte hautement symbolique, confirmant la pluralité de la formation sociale marocaine.Notre mémoire est plurielle. Elle est le fruit de cette diversité historique qui a fait la vraie richesse du Maroc. La visite historique du Pape au Maroc, en 2019, va dans le même sens. Le premier texte fondamental qu’est la Constitution, adoptée en 2011 par les Marocains, a définitivement consacré cette pluralité.  Il y a des résistances extraordinaires contre l’oubli. Parmi ces résistances, la  restauration de la Synagogue «Slat Attia», avec la maison de la mémoire et de l’histoire «Bayt Dakira» et le Centre international de recherches Haim et Célia Zafrani sur l’histoire des Relations entre le Judaïsme et l’Islam. C’est là un espace historique, culturel et spirituel, preuve concrète que la société marocaine n’est pas une société qui a choisi la « morbidité ». Dans cette lutte contre l’obscurité, André Azoulay a joué un rôle fondamental. “Cette maison est celle de la mémoire et de l’histoire. Elle est aussi celle de cette boussole marocaine dont le monde a besoin aujourd’hui, un monde en quête de repères, un monde qui tourne le dos à toutes ces valeurs qui sont celles de notre pays sous le leadership de SM le Roi, Amir Al-Mouminine”, a ajouté Azoulay. C’est aussi une maison d’où peut rejaillir la lumière pour éclairer les consciences et mettre fin aux « vérités absolues » à la base des fanatismes destructeurs d’âme et de conscience. En effet, au moment où les vents poussent dans le sens contraire de l’histoire, au moment où ressurgissent des tendances qui ont été à l’origine de « deux grandes boucheries mondiales » au 20ème siècle, l’espoir ne doit pas disparaître. « Bayt Dakira », qui est une trace ineffaçable de la vie juive à Essaouira, de la naissance au décès et de la Bar Mitzvah au mariage, est également devenu un haut lieu de pédagogie grâce au Centre de Recherches Haim et Célia Zafrani sur l’histoire des Relations entre le Judaïsme et l’Islam. C’est un espace d’échange et de réflexions entre les chercheurs de divers horizons et un espace de partage, de transmission et de résistance à l’amnésie. Mais c’est aussi un exemple d’espace à agrandir, à étendre à toutes les régions du Maroc, à Séfrou, à Demnate (…), là où pendant des siècles, voire des millénaires, des êtres humains ont su vivre ensemble, se respecter, s’aimer, s’entraider, partager sans jamais se haïr. C’est de cette source-là dont les générations actuelles ont tant besoin pour faire échec aux discours empoisonnés de la haine. Très significative est la présence d’Audrey Azoulay, directrice générale de l’Organisation des Nations unies pour l’éducation, la science et la culture (UNESCO), lors de la visite du Souverain. A travers cette organisation, c’est la rencontre entre le local et le global, le spécifique et l’universel qui s’articulent et se complètent pour signifier à tous les humains que l’unique n’existe pas. Seule la diversité, l’acceptation de toutes les différences doivent permettre aux humains de vivre ensemble, dans la paix et le bonheur.  Les anciennes  générations peuvent reposer en paix. Les nouvelles générations veilleront à sauvegarder ce riche héritage humain. La mémoire juive marocaine a ses résistants et ses gardiens, toutes confessions confondues. Elle est et restera toujours vivante comme toutes les autres composantes de notre mémoire collective. L’humanisme est le meilleur rempart contre les préjugés. De toutes générations et de toutes confessions, ces Marocains de naissance ou de cœur sont désormais mobilisés, chacun à son échelle et dans son espace de vie, pour préserver, perpétuer et faire rayonner le judaïsme marocain, composante singulière et souvent exemplaire de l’identité plurielle du Maroc.",
  label: 'maison de la mémoire ',
  type: 'hisorical',
  name: 'Bayt Dakira',
  address: 'Essaouira',
  rating: 5,
  markerId: 'id-0',
  latitude: 31.513401981371864,
  longitude: -9.771127044316183,
  icon: '',
  title: 'Bayt Dakira',
  snippet: 'destination historique',
  category: 'destination historique',
);
