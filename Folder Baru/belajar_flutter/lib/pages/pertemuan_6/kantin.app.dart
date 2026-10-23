import 'package:flutter/material.dart';

final List<Map<String, dynamic>> categories = [
  {'name': 'Semua', 'icon': Icons.restaurant_menu},
  {'name': 'Makanan', 'icon': Icons.ramen_dining},
  {'name': 'Minuman', 'icon': Icons.local_drink},
  {'name': 'Snack', 'icon': Icons.fastfood},
  {'name': 'Promo', 'icon': Icons.local_offer},
];

final List<Map<String, dynamic>> products = [
  {
    'name': 'Nasi Goreng',
    'category': 'Makanan',
    'price': 15000,
    'rating': 4.8,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=800',
  },
  {
    'name': 'Ayam Geprek',
    'category': 'Makanan',
    'price': 18000,
    'rating': 4.9,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=800',
  },
  {
    'name': 'Mie Ayam',
    'category': 'Makanan',
    'price': 12000,
    'rating': 4.7,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=800',
  },
  {
    'name': 'Es Teh Manis',
    'category': 'Minuman',
    'price': 5000,
    'rating': 4.6,
    'available': true,
    'image': 'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=800',
  },
  {
    'name': 'Kopi Susu',
    'category': 'Minuman',
    'price': 10000,
    'rating': 4.8,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=800',
  },
  {
    'name': 'Roti Bakar',
    'category': 'Snack',
    'price': 10000,
    'rating': 4.5,
    'available': false,
    'image':
        'https://images.unsplash.com/photo-1521305916504-4a1121188589?w=800',
  },
];

// Dynamic List untuk berita
final List<Map<String, dynamic>> news = [
  {
    'title': 'Promo Makan Hemat untuk Mahasiswa',
    'category': 'Promo',
    'date': '7 Oktober 2026',
    'image':
        'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800',
  },
  {
    'title': 'KantinKampus Tambah Menu Baru',
    'category': 'Informasi',
    'date': '6 Oktober 2026',
    'image':
        'https://images.unsplash.com/photo-1498837167922-ddd27525d352?w=800',
  },
  {
    'title': 'Tips Memilih Makanan Sebelum Kuliah',
    'category': 'Tips',
    'date': '5 Oktober 2026',
    'image': 'https://images.unsplash.com/photo-1547592180-85f173990554?w=800',
  },
];

class KantinApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bagianAtas(),
      body: ListView(
        children: [
          Container(
            height: 210,
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj2PxywDVbt9RjMtFrFs0LFbmhchlJCAKovYm-LIXf5Q5K89UiHuYay-b9&s=10",
                  fit: BoxFit.fitWidth,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(color: Colors.red);
                  },
                ),

                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: AlignmentGeometry.centerRight,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Text(
                      "Promo Hari Ini!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 20,
                  top: 65,
                  child: Text(
                    "Diskon Hingga \n30%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      height: 1.1,
                    ),
                  ),
                ),

                Positioned(
                  left: 20,
                  bottom: 20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.orange,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Lihat Promo",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 100,
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      spacing: 9,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.delivery_dining_outlined,
                            color: Colors.white,
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Gratis Ongkir",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Min. Pembelian Rp 100.000",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 100,
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      spacing: 9,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.timelapse_rounded,
                            color: Colors.white,
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buka Hari Ini",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "09.00 - 19.00",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kategori',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),

                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,

              itemCount: categories.length,

              itemBuilder: (context, index) {
                final ctg = categories[index];
                return Container(
                  width: 90,
                  margin: EdgeInsets.all(7),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(ctg['icon']), Text('${ctg['name']}')],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu Favorit',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),

                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12),
            shrinkWrap: true,

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
            ),
            itemCount: products.length,

            itemBuilder: (context, index) {
              final pdk = products[index];
              return Container(
                clipBehavior: Clip.antiAlias,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(pdk['image'], fit: BoxFit.cover),

                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),

                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    ' ${pdk['rating']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            right: 5,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),

                              decoration: BoxDecoration(
                                color: pdk['available']
                                    ? Colors.green
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),

                              child: Row(
                                children: [
                                  Text(
                                    pdk['available'] ? 'Tersedia' : 'Habis',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pdk['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "${pdk['category']}",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 12,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rp${pdk['price']}',

                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.orange.shade600,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Berita Kampus',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),

                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12),
            shrinkWrap: true,

            itemCount: news.length,
            itemBuilder: (context, index) {
              final nws = news[index];
              return Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    Image.network(
                      nws['image'],
                      width: 150,
                      height: 110,
                      fit: BoxFit.cover,
                    ),

                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nws['category'],
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            nws['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            nws['date'],
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_right, color: Colors.grey),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  AppBar _bagianAtas() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kantin Kampus", style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
            "Makan Enak, Harga Bersahabat",
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
    );
  }
}
