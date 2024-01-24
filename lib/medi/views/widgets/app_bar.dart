import "package:flutter/material.dart";

AppBar appBar() {
  return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello Shmuel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Stack(
                      children: [
                        const Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                              color: Colors.lightGreen,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ));
}
