import 'package:flutter/material.dart';

class BottomAppbarButton extends StatelessWidget {
  const BottomAppbarButton({
    Key? key,
    required this.title,
    required this.onPressedCallback,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35), // Adjust the right radius as needed
        ),
        border: Border.all(
          color: const Color.fromARGB(255, 211, 210, 210), // Border color
          width: 2.0, // Border width
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35), // Adjust the right radius as needed
        ),
        child: BottomAppBar(
          // color: Colors.transparent,
          child: SizedBox(
            height: 100, // Adjust the height as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: onPressedCallback,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(60), // Rounded button borders
                    ),
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
