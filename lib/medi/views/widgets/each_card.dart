import 'package:flutter/material.dart';

class EachCard extends StatelessWidget {
  const EachCard({
    super.key,
    required this.image,
    required this.text,
    required this.color,
  });

  final String image, text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: ListTile(
        leading: Image.asset(
          image,
          width: 50,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: SizedBox(
          width: 45,
          child: Row(
            children: [
              Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(Icons.arrow_drop_down_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
