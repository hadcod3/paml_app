import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Map<String, dynamic>> products = [
      {"name": "Photobooth", "price": "43", "desc": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "imageUrl": "lib/images/360_photobooth.png"},
      {"name": "Chafing Dish", "price": "6", "desc": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "imageUrl": "lib/images/chafing_dish.png"},
      {"name": "Misty Fan", "price": "40", "desc": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "imageUrl": "lib/images/misty_fan.png"},
      {"name": "Rool Top", "price": "4", "desc": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "imageUrl": "lib/images/roll_top.png"},
      {"name": "Stand Frame", "price": "15", "desc": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", "imageUrl": "lib/images/stand_frame.png"},
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.5, 
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontSize: 13, color: Colors.grey, fontFamily: "Poppins"),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey, size: 16,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade100, width: 0.5),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications, color: Color.fromRGBO(33, 33, 33, 1)),
                  onPressed: () {
                    
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.settings, color: Color.fromRGBO(33, 33, 33, 1)),
                  onPressed: () {
                    
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductsListHorizontal(products: products),
            ProductsListVertical(products: products),
            ProductsGrid(products: products),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: Colors.grey.shade900,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class ProductsListHorizontal extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductsListHorizontal({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    
    if (products.isEmpty) {
      return const Center(child: Text('No products available in wishlist'));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              Text(
                'Best Offers!',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward, 
                color: Colors.black, 
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(10.0),
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                width: 120,
                margin: const EdgeInsets.only(right: 10),
                child: ProductCardHorizontal(
                  name: product["name"] ?? "Unknown Product",
                  price: product["price"] ?? "0",
                  imageUrl: product["imageUrl"] ?? "lib/images/moore_logo_bw.png",
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ProductsListVertical extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductsListVertical({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              Text(
                'Favorite List!',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward, 
                color: Colors.black, 
              ),
            ],
          ),
          const SizedBox(height: 10), 
          ListView.builder(
            shrinkWrap: true, 
            physics: const NeverScrollableScrollPhysics(), 
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCardVertical(
                name: product["name"] ?? "Unknown Product",
                price: product["price"] ?? "0",
                desc: product["desc"] ?? "Description unavailable",
                imageUrl: product["imageUrl"] ?? "lib/images/moore_logo_bw.png",
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductsGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductsGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1, 
            child: GridView.builder(
              padding: const EdgeInsets.only(top: 10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length,
              shrinkWrap: true, 
              physics: const NeverScrollableScrollPhysics(), 
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCardGrid(
                  name: product["name"] ?? "Unknown Product",
                  price: product["price"] ?? "0",
                  imageUrl: product["imageUrl"] ?? "lib/images/moore_logo_bw.png",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCardHorizontal extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  const ProductCardHorizontal({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(237, 237, 237, 1), 
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5)), 
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => Container(
                      decoration: const BoxDecoration(
                        color: Colors.grey, 
                        borderRadius: BorderRadius.vertical(top: Radius.circular(5)), 
                      ),
                      child: Image.asset(
                        'lib/images/misty_fan.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text(
                  name,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$$price", 
                  style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCardVertical extends StatelessWidget {
  final String name;
  final String price;
  final String desc;
  final String imageUrl;

  const ProductCardVertical({
    super.key,
    required this.name,
    required this.price,
    required this.desc,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120, 
            height: 120, 
            decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular((10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), 
                  spreadRadius: 1, 
                  blurRadius: 5, 
                  offset: const Offset(0, 2), 
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular((10)),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0), 
                  child: Image.asset(
                    imageUrl,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover, 
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey.shade200, 
                      child: Image.asset(
                        'lib/images/misty_fan.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    name,
                    style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4), 
                  Text(
                    desc,
                    maxLines: 2,
                    style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(height: 4), 
                  Text(
                    "\$$price",
                    style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Color.fromARGB(255, 194, 21, 21)),
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }
}

class ProductCardGrid extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  const ProductCardGrid({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(237, 237, 237, 1), 
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5)), 
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.contain, 
                    errorBuilder: (context, error, stackTrace) => Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300, 
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(5)), 
                      ),
                      child: const Center( 
                        child: Image(
                          image: AssetImage('lib/images/moore_logo_bw.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    name,
                    style: const TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "\$$price",
                    style: const TextStyle(color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}