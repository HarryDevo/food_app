import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigItemWidget extends StatelessWidget {
  const BigItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        const SizedBox(
          height: 240,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(90),
            bottomRight: Radius.circular(90),
          ),
          child: Container(
            height: 160,
            width: _size.width * 0.95,
            color: Colors.grey.withOpacity(0.25),
            padding: EdgeInsets.only(right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Chicken Salad',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Chicken with Avocada',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '\$32.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.black,
                    ),
                    child: Icon(CupertinoIcons.plus, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: -56,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 12,
                  spreadRadius: 6,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/1.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
