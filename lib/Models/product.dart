class ProductModel {
  final String name;
  final String price;
  final String imgUrl;
  final String discount;
  final String measure;

  ProductModel(this.name, this.price, this.imgUrl, this.discount, this.measure);
  

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'imgUrl': imgUrl,
      'discount': discount,
      'measure': measure,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      map['name'],
      map['price'],
      map['imgUrl'],
      map['discount'],
      map['measure'],
    );
  }
}
