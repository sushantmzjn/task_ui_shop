class CauroselImage {
  final String imageUrl;

  CauroselImage(
      {required this.imageUrl,
        });

  factory CauroselImage.fromJson(Map<String, dynamic> json) {
    return CauroselImage(
        imageUrl: json['imageUrl'],
       );
  }
}

List<CauroselImage> background = [

  CauroselImage(
      imageUrl: 'https://res.cloudinary.com/practicaldev/image/fetch/s--MZvaMEOV--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/qll2w5atklv13ljmqope.png',
      ), CauroselImage(
      imageUrl: 'https://res.cloudinary.com/practicaldev/image/fetch/s--MZvaMEOV--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/qll2w5atklv13ljmqope.png',
      ), CauroselImage(
      imageUrl: 'https://res.cloudinary.com/practicaldev/image/fetch/s--MZvaMEOV--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/qll2w5atklv13ljmqope.png',
      ), CauroselImage(
      imageUrl: 'https://res.cloudinary.com/practicaldev/image/fetch/s--MZvaMEOV--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/qll2w5atklv13ljmqope.png',
      ),

];
