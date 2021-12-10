
//This is a provisional Class I will be using before the API implementation

// ignore_for_file: file_names

class Data {

  final Map<String,String> _mainBanner = {'title': 'Traditional Food!', 'img': 'https://st4.depositphotos.com/4590583/28898/i/450/depositphotos_288989496-stock-photo-banner-food-top-view-free.jpg'};
  final Map<String, String> _tortilla = {'title': 'Tortilla de patatas', 'stars': '★★★★', 'time': '2 hours', 'img': 'https://www.recetasderechupete.com/wp-content/uploads/2020/11/Tortilla-de-patatas-4.jpg', 'banner': 'https://res.cloudinary.com/tienda-com/image/upload/ar_16:9,c_fill/c_scale,w_auto,dpr_auto/recipes/tortilla-espanola.jpg'};
  final Map<String, String> _gazpacho = {'title': 'Gazpacho', 'stars': '★★★★', 'time': '45 min', 'img': 'https://www.acouplecooks.com/wp-content/uploads/2021/07/Gazpacho-002s.jpg', 'banner': 'https://assets.bonappetit.com/photos/57aca0e0f1c801a1038bc671/16:9/w_3327,h_1871,c_limit/summer-gazpacho.jpg'};
  final Map<String, String> _paella = {'title': 'Paella', 'stars': '★★★★★', 'time': '1\'45 min', 'img': 'https://www.irishexaminer.com/cms_media/module_img/5168/2584028_1_articlelarge_iStock-1177501296.jpg', 'banner': 'https://www.irishexaminer.com/cms_media/module_img/5168/2584028_1_articlelarge_iStock-1177501296.jpg'};
  final List<Map<String,String>> _data = <Map<String,String>>[];

  Data() {
    _data.add(_tortilla);
    _data.add(_gazpacho);
    _data.add(_paella);
  }

  Map<String,String> get mainBanner => _mainBanner;
  List<Map<String,String>> get data => _data;

}
