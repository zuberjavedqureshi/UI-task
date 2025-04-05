import 'package:flutter/material.dart';
import 'package:ui_task/components/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 16,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/sample1.jpg"),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Zubair Qureshi",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "MSC CS",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(29),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Next class section
            sectionHeader(title: 'Next Class'),
            nextClassCard(),

            const SizedBox(height: 20),
            // Events Section
            sectionHeader(title: "Events"),
            eventCard(
                "Comedy Show", "26 Apr, 6:30pm", "assets/images/sample.jpg"),
            eventCard(
                "Dance Evening", "2 May, 5:40pm", "assets/images/sample1.jpg"),
            eventCard("Singing Show", "10 August, 8:30 pm",
                "assets/images/student_teacher.jpg"),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * .60,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha(8),
                      blurRadius: 20,
                      spreadRadius: 10),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNavItem(Icons.home, 0),
                buildNavItem(Icons.calendar_month_rounded, 1),
                buildNavItem(Icons.storage_rounded, 2)
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(8),
                        blurRadius: 20,
                        spreadRadius: 10),
                  ]),
              child: buildNavItem(Icons.chat, 4)),
        ],
      ),
    );
  }
}
