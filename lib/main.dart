import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Option',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1F2023),
        fontFamily: 'SourceCodePro'
      ),
      home: MyHomePage(title: 'Pocket Option'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = "EUR/USD";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('Trade', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFffffff)
              )),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Text(r'Balance: $ 56 799.24', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFffffff)
                  )),
                )
              ],
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12, left: 20, right: 20),
                    child: TextButton(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Color(0xFFffffff),
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            )
                          )
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF121212)),
                          fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width - 40, 32)),
                          shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  )
                          )
                        ),
                        onPressed: () => debugPrint("Clicked!")
                    )
                  )
                ],
              )
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 12, left: 20),
                  child: Text(
                    "1.34899",
                    style: TextStyle(
                      color: Color(0xFFffffff),
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    )
                  )
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 20),
                  child: Text(
                    "+3.54% (+0,00034)",
                    style: TextStyle(
                      color: Color(0xFF58CF56),
                      fontSize: 13,
                      fontWeight: FontWeight.w600
                    )
                  )
                )
              ]
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, left: 10, right: 10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  TextButton(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              "1 min",
                              style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              )
                          )
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF121212)),
                          fixedSize: MaterialStateProperty.all<Size>(Size(72.5, 32)),
                          shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              )
                          )
                      ),
                      onPressed: () => debugPrint("Clicked!")
                  ),
                  TextButton(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              "5 min",
                              style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              )
                          )
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF121212)),
                          fixedSize: MaterialStateProperty.all<Size>(Size(72.5, 32)),
                          shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              )
                          )
                      ),
                      onPressed: () => debugPrint("Clicked!")
                  ),
                  TextButton(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              "15 min",
                              style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              )
                          )
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF121212)),
                          fixedSize: MaterialStateProperty.all<Size>(Size(72.5, 32)),
                          shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              )
                          )
                      ),
                      onPressed: () => debugPrint("Clicked!")
                  ),
                  TextButton(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              "1 hour",
                              style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              )
                          )
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF121212)),
                          fixedSize: MaterialStateProperty.all<Size>(Size(72.5, 32)),
                          shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              )
                          )
                      ),
                      onPressed: () => debugPrint("Clicked!")
                  )
                ],
              )
            )
          ],
        )
      )
    );
  }
}
