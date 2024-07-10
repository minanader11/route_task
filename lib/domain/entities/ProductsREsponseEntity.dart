class ProductsResponseEntity {
  ProductsResponseEntity({
      this.products, 
      this.total, 
      this.skip, 
      this.limit,});


  List<ProductEntity>? products;
  num? total;
  num? skip;
  num? limit;



}

class ProductEntity {
  ProductEntity({
      this.id, 
      this.title, 
      this.description, 
      this.category, 
      this.price, 
      this.discountPercentage, 
      this.rating, 
      this.stock, 
      this.tags, 
      this.brand, 
      this.sku, 
      this.weight, 
      this.dimensions, 
      this.warrantyInformation, 
      this.shippingInformation, 
      this.availabilityStatus, 
      this.reviews, 
      this.returnPolicy, 
      this.minimumOrderQuantity, 
      this.meta, 
      this.images, 
      this.thumbnail,});


  num? id;
  String? title;
  String? description;
  String? category;
  num? price;
  num? discountPercentage;
  num? rating;
  num? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  num? weight;
  DimensionsEntity? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<ReviewsEntity>? reviews;
  String? returnPolicy;
  num? minimumOrderQuantity;
  MetaEntity? meta;
  List<String>? images;
  String? thumbnail;



}

class MetaEntity {
  MetaEntity({
      this.createdAt, 
      this.updatedAt, 
      this.barcode, 
      this.qrCode,});


  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;



}

class ReviewsEntity {
  ReviewsEntity({
      this.rating, 
      this.comment, 
      this.date, 
      this.reviewerName, 
      this.reviewerEmail,});


  num? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;



}

class DimensionsEntity {
  DimensionsEntity({
      this.width, 
      this.height, 
      this.depth,});

  num? width;
  num? height;
  num? depth;



}