import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';

class ProductsResponseDto extends ProductsResponseEntity{
  ProductsResponseDto({
      super.products,
      super.total,
      super.skip,
      super.limit,});

  ProductsResponseDto.fromJson(dynamic json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(ProductDto.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }




}

class ProductDto extends ProductEntity {
  ProductDto({
      super.id,
      super.title,
      super.description,
      super.category,
      super.price,
      super.discountPercentage,
      super.rating,
      super.stock,
      super.tags,
      super.brand,
      super.sku,
      super.weight,
      super.dimensions,
      super.warrantyInformation,
      super.shippingInformation,
      super.availabilityStatus,
      super.reviews,
      super.returnPolicy,
      super.minimumOrderQuantity,
      super.meta,
      super.images,
      super.thumbnail,});

  ProductDto.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    brand = json['brand'];
    sku = json['sku'];
    weight = json['weight'];
    dimensions = json['dimensions'] != null ? DimensionsDto.fromJson(json['dimensions']) : null;
    warrantyInformation = json['warrantyInformation'];
    shippingInformation = json['shippingInformation'];
    availabilityStatus = json['availabilityStatus'];
    if (json['reviews'] != null) {
      reviews = [];
      json['reviews'].forEach((v) {
        reviews?.add(ReviewsDto.fromJson(v));
      });
    }
    returnPolicy = json['returnPolicy'];
    minimumOrderQuantity = json['minimumOrderQuantity'];
    meta = json['meta'] != null ? MetaDto.fromJson(json['meta']) : null;
    images = json['images'] != null ? json['images'].cast<String>() : [];
    thumbnail = json['thumbnail'];
  }


}

class MetaDto extends MetaEntity{
  MetaDto({
      super.createdAt,
      super.updatedAt,
      super.barcode,
      super.qrCode,});

  MetaDto.fromJson(dynamic json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    barcode = json['barcode'];
    qrCode = json['qrCode'];
  }


}

class ReviewsDto extends ReviewsEntity {
  ReviewsDto({
      super.rating,
      super.comment,
      super.date,
      super.reviewerName,
      super.reviewerEmail,});

  ReviewsDto.fromJson(dynamic json) {
    rating = json['rating'];
    comment = json['comment'];
    date = json['date'];
    reviewerName = json['reviewerName'];
    reviewerEmail = json['reviewerEmail'];
  }


}

class DimensionsDto extends DimensionsEntity {
  DimensionsDto({
      super.width,
      super.height,
      super.depth,});

  DimensionsDto.fromJson(dynamic json) {
    width = json['width'];
    height = json['height'];
    depth = json['depth'];
  }



}