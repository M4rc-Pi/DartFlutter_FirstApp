
//This is a provisional Class I will be using before the API implementation

// ignore_for_file: file_names

class DataCreator {

  static const Map<String, String> tortilla = {'name': 'Tortilla de patatas', 'stars': '★★★★', 'time': '2 hours', 'img': 'https://www.recetasderechupete.com/wp-content/uploads/2020/11/Tortilla-de-patatas-4.jpg' };
  static const Map<String, String> gazpacho = {'name': 'Gazpacho', 'stars': '★★★★', 'time': '45 min', 'img': 'https://www.acouplecooks.com/wp-content/uploads/2021/07/Gazpacho-002s.jpg'};
  static const Map<String, String> paella = {'name': 'Paella', 'stars': '★★★★★', 'time': '1\'45 min', 'img': 'https://www.irishexaminer.com/cms_media/module_img/5168/2584028_1_articlelarge_iStock-1177501296.jpg'};

  List<Map> fillData() {

    List<Map> data = <Map<String,String>>[];
    data.add(tortilla);
    data.add(gazpacho);
    data.add(paella);
    
    return data;
  }

}
