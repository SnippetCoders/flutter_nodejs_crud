List<ProductModel> productsFromJson(dynamic str) =>
    List<ProductModel>.from((str).map((x) => ProductModel.fromJson(x)));

class ProductModel {
  late String? id;
  late String? productName;
  late String? productDescription;
  late int? productPrice;
  late String? productImage;

  ProductModel({
    this.id,
    this.productName,
    this.productDescription,
    this.productPrice,
    this.productImage,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    productName = json['productName'];
    productDescription = json['productDescription'];
    productPrice = json['productPrice'];
    productImage = json['productImage'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['productName'] = productName;
    _data['productDescription'] = productDescription;
    _data['productPrice'] = productPrice;
    _data['productImage'] = productImage;
    return _data;
  }
}
