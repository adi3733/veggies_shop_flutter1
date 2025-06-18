import 'package:flutter/material.dart';

class Tomato extends StatelessWidget {
  const Tomato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 15), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.arrow_back , 
                          color: 
                          Color.fromARGB(227, 11, 73, 13),  
                          size: 30),
                          const Icon(Icons.shopping_cart, 
                          color: 
                          Color.fromARGB(227, 11, 73, 13), size: 30),
                        ],
                      ),
                    ],
                  ),
                ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                'assets/images/tomato.png',
                height: 250,
              ),
            ),
            Container(
              height: 600,
              width: 500,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 202, 249, 203),
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fresh & Organic\nTomato',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                    style: TextStyle(fontSize: 13, color: Colors.green),
                    textAlign: null,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: const [
                            Icon(Icons.remove, size: 18, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 248, 248, 248),
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.add, size: 18, color: Colors.white),
                            SizedBox(width: 5),
                            Text('kg', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      const Text(
                        '₹ 60.00',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Similar products',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // Red cabbage
                          Container(
                            width: 140,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.10), // soft black shadow
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/images/red_cabbage.png', height: 100),
                                const SizedBox(height: 10),
                                const Text('Red cabbage', style: TextStyle(fontWeight: FontWeight.bold)),
                                const Text('Organic', style: TextStyle(fontSize: 12)),
                                const SizedBox(height: 5),
                                Row(
                                  children: const [
                                    SizedBox(width: 15),
                                    Text('₹ 60.00'),
                                    SizedBox(width: 35),
                                    Icon(Icons.favorite_border, size: 18),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // EggPlant
                          Container(
                            width: 140,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.10), // soft black shadow
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/images/eggplant.png', height: 100),
                                const SizedBox(height: 10),
                                const Text('EggPlant', style: TextStyle(fontWeight: FontWeight.bold)),
                                const Text('Organic', style: TextStyle(fontSize: 12)),
                                const SizedBox(height: 5),
                                Row(
                                  children: const [
                                    SizedBox(width: 15),
                                    Text('₹ 60.00'),
                                    SizedBox(width: 35),
                                    Icon(Icons.favorite_border, size: 18),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Potato
                          Container(
                            width: 140,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.10), // soft black shadow
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/images/potato.png', height: 100),
                                const SizedBox(height: 10),
                                const Text('Potato', style: TextStyle(fontWeight: FontWeight.bold)),
                                const Text('Organic', style: TextStyle(fontSize: 12)),
                                const SizedBox(height: 5),
                                Row(
                                  children: const [
                                    SizedBox(width: 15),
                                    Text('₹ 60.00'),
                                    SizedBox(width: 35),
                                    Icon(Icons.favorite_border, size: 18),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Ginger
                          Container(
                            width: 140,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.10), // soft black shadow
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/images/ginger.png', height: 100),
                                const SizedBox(height: 10),
                                const Text('Ginger', style: TextStyle(fontWeight: FontWeight.bold)),
                                const Text('Organic', style: TextStyle(fontSize: 12)),
                                const SizedBox(height: 5),
                                Row(
                                  children: const [
                                    SizedBox(width: 15),
                                    Text('₹ 60.00'),
                                    SizedBox(width: 35),
                                    Icon(Icons.favorite_border, size: 18),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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