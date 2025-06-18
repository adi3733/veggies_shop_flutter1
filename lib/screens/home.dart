
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Image.asset("assets/images/v.png"),
          const SizedBox(width: 300),
          GestureDetector(
            onTap: () {}, // TODO: handle cart tap
            child: const Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(227, 11, 73, 13),
              size: 30,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
              child: Container(
                height: 790,
                width: 500,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 210, 239, 211),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          height: 140,
                          width: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 50, 129, 52),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Hunting for fresh \nflavors?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 30,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      SizedBox(width: 8),
                                      Icon(
                                        Icons.search,
                                        color: Color.fromARGB(255, 150, 165, 151),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Search",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 150, 165, 151),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 50),
                            ),
                            Text(
                              "Vegetables",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 47, 134, 50),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 120),
                            Text(
                              "Fruits",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 115, 148, 116),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildVeggieCard(context, '/tomato', 'Tomato', 'assets/images/tomato.png'),
                            const SizedBox(width: 40),
                            _buildVeggieCard(context, '/onion', 'Onion', 'assets/images/onion.png'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildVeggieCard(context, '/eggplant', 'EggPlant', 'assets/images/eggplant.png'),
                            const SizedBox(width: 40),
                            _buildVeggieCard(context, '/ginger', 'Ginger', 'assets/images/ginger.png'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildVeggieCard(context, '/red_cabbage', 'Red Cabbage', 'assets/images/red_cabbage.png'),
                            const SizedBox(width: 40),
                            _buildVeggieCard(context, '/potato', 'Potato', 'assets/images/potato.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildVeggieCard(BuildContext context, String route, String name, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, route),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                blurRadius: 18,
                spreadRadius: 2,
                offset: const Offset(0, 8),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 32,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Image.asset(imagePath, width: 130, height: 130),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'Organic',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: const [
                        Text(
                          '₹ 60.00',
                          style: TextStyle(color: Colors.green),
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.favorite_border, color: Colors.green),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
