import 'package:flutter/material.dart';

class BuahModel {
  String name;
  String location;
  String description;
  String Price;
  String imageAsset;
  List<String> imageUrls;

  BuahModel({
    required this.name,
    required this.location,
    required this.description,
    required this.Price,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var buahModelList = [
  BuahModel(
    name: 'Pisang (Banana)',
    location: 'Indonesia, Filipina, India, Brasil, dan Thailand',
    description:
        'Buah ini memiliki kulit yang mudah dikupas dan daging buah yang lembut. Rasanya manis dan sering digunakan dalam berbagai olahan seperti smoothie, kue, atau dimakan langsung.',
    Price: 'Rp 25000 Per Kilo',
    imageAsset: 'assets/img/pisang.jpg',
    imageUrls: [
      'https://www.mongabay.co.id/wp-content/uploads/2023/09/Pisang-siap-panen-milik-warga-Desa-Klungkung-Kabupaten-Jember-foto-Petrus-Riski.jpeg',

      'https://www.mongabay.co.id/wp-content/uploads/2023/09/Pisang-siap-panen-milik-warga-Desa-Klungkung-Kabupaten-Jember-foto-Petrus-Riski.jpeg',
      'https://pict.sindonews.net/dyn/850/pena/news/2022/08/23/34/864087/negaranegara-penghasil-pisang-terbesar-dunia-nomor-9-jadi-makanan-pokok-efd.jpg'
    ],
  ),

  BuahModel(
    name: 'Nanas (Pineapple)',
    location: 'Hawaii, Thailand, Filipina, Brasil, dan Indonesia',
    description:
        'Nanas memiliki kulit yang bersegmen dan daging buah yang manis serta asam. Buah ini sering dimakan segar, dipanggang, atau digunakan dalam berbagai minuman dan makanan.',
    Price: 'Rp 112.950 Per Kilo',
    imageAsset: 'assets/img/nanas.jpg',
    imageUrls: [
      'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/12/12/NANAS-12-3698135359.jpg',
      'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/12/12/NANAS-12-3698135359.jpg',
      'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/12/12/NANAS-12-3698135359.jpg',
    ],
  ),

  BuahModel(
    name: 'Mangga (Mango)',
    location: 'India, Indonesia, Thailand, Filipina, dan Brasil',
    description:
        'Mangga dikenal dengan rasanya yang manis dan daging buah yang lembut. Ada berbagai varietas mangga dengan warna kulit yang berbeda, seperti hijau, kuning, atau merah.capkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    Price: 'Rp 21.300 Per Kilo',
    imageAsset: 'assets/img/mangga.jpg',
    imageUrls: [
      'https://api-lotte.hollacode.com/api/static/inspirasi/1690283540383-jenis-mangga.png',
      'https://api-lotte.hollacode.com/api/static/inspirasi/1690283540383-jenis-mangga.png',
      'https://akcdn.detik.net.id/visual/2021/07/06/ilustrasi-mangga_169.jpeg?w=650',
    ],
  ),

  BuahModel(
    name: 'Jambu Air (Water Apple)',
    location: 'Indonesia, Malaysia, dan Thailand',
    description:
        'Jambu air memiliki bentuk seperti lonceng dengan kulit tipis dan daging buah yang renyah dan segar. Rasanya manis dan sedikit asam.',
    Price: 'Rp 8000 Per Kilo',
    imageAsset: 'assets/img/jambu_air.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/X9XFwufkZi5c4x10l7Yc3NUBmHY=/77x46:952x629/750x500/data/photo/2023/07/12/64ae131e70481.jpg',
      'https://cdn.ngopibareng.id/uploads/2022/2022-07-08/10-jenis-jambu-air-yang-menyegarkan--thumbnail-156.webp',
      'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/222/2024/04/24/IMG-20240424-WA0086-1876310712.jpg',
    ],
  ),
  
  BuahModel(
    name: 'Durian',
    location: 'Thailand, Malaysia, Indonesia, dan Filipina',
    description:
        'Durian terkenal dengan kulit berduri dan aroma yang sangat kuat. Daging buahnya creamy dan rasanya manis, sering dianggap sebagai "raja buah" di Asia Tenggara.',
    Price: 'Rp 52.000 Per Kilo',
    imageAsset: 'assets/img/durian.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/Zx0qzYqqfhmcuusMVprdWCVtb_4=/77x19:928x586/1200x800/data/photo/2023/02/07/63e209234faff.jpg',
      'https://asset.kompas.com/crops/Zx0qzYqqfhmcuusMVprdWCVtb_4=/77x19:928x586/1200x800/data/photo/2023/02/07/63e209234faff.jpg',
      'https://asset.kompas.com/crops/Zx0qzYqqfhmcuusMVprdWCVtb_4=/77x19:928x586/1200x800/data/photo/2023/02/07/63e209234faff.jpg',
    ],
  ),
  
  BuahModel(
    name: 'Papaya',
    location: 'Meksiko, Brasil, Indonesia, dan Filipina',
    description:
        'Papaya memiliki daging buah yang lembut dan manis dengan warna oranye cerah. Buah ini sering dimakan segar, dibuat jus, atau digunakan dalam salad.',
    Price: 'Rp 13000 Per Kilo',
    imageAsset: 'assets/img/papaya.jpg',
    imageUrls: [
      'https://www.treedom.net/_next/image?url=https%3A%2F%2Fassets.treedom.net%2Fimage%2Fupload%2Fs--645JC7K---%2Fc_limit%2Cf_auto%2Fv1%2Fscientific_specie-gallery%2Fm%2Fd899172e03e4c4b0715fc1741e9ff822.jpg&w=3840&q=75',
      'https://www.treedom.net/_next/image?url=https%3A%2F%2Fassets.treedom.net%2Fimage%2Fupload%2Fs--645JC7K---%2Fc_limit%2Cf_auto%2Fv1%2Fscientific_specie-gallery%2Fm%2Fd899172e03e4c4b0715fc1741e9ff822.jpg&w=3840&q=75',
      'https://cdn.wikifarmer.com/wp-content/uploads/2023/10/Harvest-yield-1.png',
    ],
  ),
  BuahModel(
    name: 'Kelengkeng (Longan)',
    location: 'hailand, Vietnam, dan Indonesia',
    description:
        'Kelengkeng memiliki kulit tipis dan daging buah yang jernih serta manis. Buah ini mirip dengan lychee namun lebih kecil.',
    Price: 'Rp 36000 Per Kilo',
    imageAsset: 'assets/img/klengkeng.jpg',
    imageUrls: [
      'https://www.padiindonesia.or.id/wp-content/uploads/2021/11/Picang.jpg',
      'https://img-cdn.medkomtek.com/VY40xBEnFZMnB6lYGlDGfb7VOSs=/730x411/smart/filters:quality(100):format(webp)/article/uG1HQr18sT-Il6OHgUmGE/original/067929300_1617777486-Manfaat_Buah_Kelengkeng_bagi_Kesehatan.jpg',
      'https://www.yesdok.com/visual/slideshow/kelengkeng-article-1609170998.jpg?w=1200',
    ],
  ),
  BuahModel(
    name: 'Sirsak (Soursop)',
    location: 'Amerika Tengah, Karibia, dan Asia Tenggara',
    description:
        'Sirsak memiliki kulit berduri dengan daging buah yang putih dan lembut. Rasanya campuran antara asam dan manis, sering digunakan dalam jus dan smoothie.',
    Price: 'Rp 18000 Per Kilo',
    imageAsset: 'assets/img/sirsak.jpg',
    imageUrls: [
      'https://i0.wp.com/umsu.ac.id/berita/wp-content/uploads/2023/07/manfaat-sirsak.jpg?fit=1200%2C675&ssl=1',
      'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2021/10/18025028/kenali-manfaat-daun-sirsak-untuk-kesehatan-wanita-halodoc.jpg',
      'https://blog.klikindomaret.com/wp-content/uploads/2022/01/yogurt-soursop-mix-smoothies-scaled.jpg',
    ],
  ),
  BuahModel(
    name: 'Buah Tin (Fig)',
    location: 'Turki, Mesir, dan beberapa bagian Amerika Selatan',
    description:
        'Buah tin memiliki kulit yang lembut dan daging buah yang manis dengan biji-biji kecil di dalamnya. Buah ini bisa dimakan segar atau kering.',
    Price: 'Rp 276.000 Per Kilo',
    imageAsset: 'assets/img/tin.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/k4L2sbsfSn_6PzlsRodW6zGR-EE=/0x0:1000x667/1200x800/data/photo/2023/04/14/64397bb36808d.jpg',
      'https://static.honestdocs.id/system/blog_articles/main_hero_images/000/002/312/original/Manfaat_Buah_Tin_Si_%22Buah_Surga%22.jpg',
      'https://gdmagri.com/wp-content/uploads/2021/06/harga-buah-tin.jpg',
    ],
  ),
];
