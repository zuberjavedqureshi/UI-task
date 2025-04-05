import 'package:flutter/material.dart';

Widget sectionHeader({required String title}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const Text(
        "See all",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget nextClassCard() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.blue[50],
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.calculate_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Text(
                    "Homework",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.done_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Basic Mathematics",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        const Text("Today, 08:15am",
            style: TextStyle(color: Colors.grey, fontSize: 16)),
        const SizedBox(height: 10),
        const Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/sample1.jpg"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Jane Cooper",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        )
      ],
    ),
  );
}

Widget eventCard(String title, String date, String imagePath) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      color: const Color.fromARGB(252, 240, 255, 252),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.fill),
      ),
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      subtitle: Text(date, style: const TextStyle(color: Colors.grey)),
      trailing: const Icon(Icons.favorite_border, color: Colors.grey),
    ),
  );
}

Widget buildNavItem(IconData icon, int index) {
  return GestureDetector(
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
        color: 0 == index ? Colors.black : Colors.white,
      ),
      child: Icon(
        icon,
        color: 0 == index ? Colors.white : Colors.black,
        size: 24,
      ),
    ),
  );
}
