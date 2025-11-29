class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.description,
      required this.image});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "سماعات لاسلكية",
    subTitle: "جودة صوت عالية",
    image: "images/airpod.png",
    description: "سماعات بتقنية البلوتوث مع صوت نقي وعزل للضوضاء.",),
  Product(
    id: 2,
    price: 899,
    title: "جهاز موبايل",
    subTitle: "وأصبح للموبايل قوة",
    image: "images/mobile.png",
    description: "هاتف ذكي بأداء قوي وشاشة عالية الدقة لتجربة مذهلة.",

  ),
  Product(
    id: 3,
    price: 89,
    title: "نظارات ثلاثية الأبعاد",
    subTitle: "لنقلك للعالم الافتراضي",
    image: "images/class.png",
    description:
        "نظارات VR لنقلك إلى عالم الواقع الافتراضي بتجربة غامرة..",
  ),
  Product(
    id: 4,
    price: 56,
    title: "سماعات",
    subTitle: "لساعات استماع طويلة",
    image: "images/headset.png",
    description:
        "سماعات رأسية بجودة صوت عالية وتصميم مريح للاستخدام الطويل.",
  ),
  Product(
    id: 5,
    price: 38,
    title: "مسجل صوت",
    subTitle: "سجل اللحظات المهمة حولك",
    image: "images/speaker.png",
    description:
        "مسجل صوت رقمي لتسجيل المحاضرات والاجتماعات بجودة ممتازة.",
  ),
  Product(
    id: 6,
    price: 119,
    title: "كاميرات كمبيوتر",
    subTitle: "بجودة ودقة صورة عالية",
    image: "images/camera.png",
    description:
        "كاميرا ويب عالية الدقة لمكالمات الفيديو والبث المباشر.",
  ),
];