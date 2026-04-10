import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PizzaDetailsScreen()));

class PizzaDetailsScreen extends StatelessWidget {
  const PizzaDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),

            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F8FA),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_back_ios_new, size: 16),
                  ),
                ),

                const SizedBox(width: 10),
                const Text(
                  "Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            
            SizedBox(
              height: 210,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFC567),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 10,
                    child: Container(
                      width: 200,
                      height: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            const Color(0xFFFFEBE4).withOpacity(0.8), 
                            const Color(0xFFFFEBE4).withOpacity(0.0), 
                          ],
                          stops: const [0.5, 1.0], 
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    child: Image.asset(
                      'assets/image2.png',
                      height: 190,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.favorite_border,
                          color: Colors.white, size: 22),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Text("Uttora Coffe House",
                  style: TextStyle(fontSize: 13)),
            ),

            const SizedBox(height: 10),
            const Text("Pizza Calzone European",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),
            const Text("Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
              style: TextStyle(color: Colors.grey, fontSize: 13, height: 1.2),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _infoIcon(Icons.star_border_rounded, "4.7"),
                const SizedBox(width: 20),
                _infoIcon(Icons.local_shipping_outlined, "Free"),
                const SizedBox(width: 20),
                _infoIcon(Icons.access_time, "20 min"),
              ],
            ),

            const Spacer(flex: 2),

            Row(
              children: [
                const Text(
                  "SIZE:  ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12),
                ),
                _sizeCircle('10"', false),
                _sizeCircle('14"', true),
                _sizeCircle('16"', false),
              ],
            ),

            const Spacer(flex: 2),

            const Text("INGRIDENTS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12)),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _circularIngredient(Icons.bakery_dining),
                _circularIngredient(Icons.kebab_dining),
                _circularIngredient(Icons.opacity),
                _circularIngredient(Icons.eco),
                _circularIngredient(Icons.waves),
              ],
            ),

            const Spacer(flex: 2),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFFF0F5FA),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("\$32",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E222B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.remove,
                                color: Colors.white, size: 18),
                            onPressed: () {}),
                        const Text("2",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            icon: const Icon(Icons.add,
                                color: Colors.white, size: 18),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _infoIcon(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFFFF9431), size: 20),
        const SizedBox(width: 4),
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      ],
    );
  }

  Widget _sizeCircle(String text, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 42,
      width: 42,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFFF9431) : const Color(0xFFF0F5FA),
        shape: BoxShape.circle,
      ),
      child: Text(text,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14)),
    );
  }

  Widget _circularIngredient(IconData icon) {
    return Container(
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
        color: Color(0xFFFFEBE4),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: const Color(0xFFFF7043), size: 20),
    );
  }
}