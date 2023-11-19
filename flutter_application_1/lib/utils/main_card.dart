import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Quote of the day"),
        TextButton(
          style: ButtonStyle(),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Refresh",
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.refresh,
                color: Colors.black,
              ),
            ],
          ),
        )
      ],
    );
  }
}
