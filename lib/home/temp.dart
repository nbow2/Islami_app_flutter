import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  static const String routeName = 'Quran';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 870,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: -3,
                child: Container(
                  width: 412,
                  height: 873,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/412x873"),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(width: 1),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 798,
                child: Container(
                  width: 412,
                  height: 72,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 412,
                          height: 68,
                          decoration: BoxDecoration(
                            color: Color(0xFFB7935F),
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 320,
                        top: 0,
                        child: Container(
                          width: 62,
                          height: 67,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 62,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/62x60"),
                                      fit: BoxFit.fill,
                                    ),
                                    border: Border.all(width: 1),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17,
                                top: 52,
                                child: Text(
                                  'القرآن',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 135,
                        top: 7,
                        child: Container(
                          width: 62,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/62x60"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 37,
                        top: 8,
                        child: Container(
                          width: 51,
                          height: 49,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/51x49"),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: 68,
                child: Container(
                  width: 205,
                  height: 227,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/205x227"),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(width: 1),
                  ),
                ),
              ),
              Positioned(
                left: 0.50,
                top: 309.50,
                child: Container(
                  width: 419,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFB7935F),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.50,
                top: 357.50,
                child: Container(
                  width: 419,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFB7935F),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 243,
                top: 313,
                child: Text(
                  'اسم السورة',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 25,
                    fontFamily: 'El Messiri',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 196.50,
                top: 308.50,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  child: Container(
                    width: 494,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFB7935F),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 313,
                child: Text(
                  'عدد الآيات',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 25,
                    fontFamily: 'El Messiri',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 77,
                top: 375,
                child: Container(
                  width: 254,
                  height: 392,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 254,
                          height: 31,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 1,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 50,
                        child: Container(
                          width: 254,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 102,
                        child: Container(
                          width: 254,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 154,
                        child: Container(
                          width: 254,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 206,
                        child: Container(
                          width: 254,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 258,
                        child: Container(
                          width: 254,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 310,
                        child: Container(
                          width: 254,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 362,
                        child: Container(
                          width: 254,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 201,
                                top: 0,
                                child: Text(
                                  'البقرة',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '286',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 145,
                top: 18,
                child: Text(
                  'إسلامي',
                  style: TextStyle(
                    color: Color(0xFF242424),
                    fontSize: 30,
                    fontFamily: 'El Messiri',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
