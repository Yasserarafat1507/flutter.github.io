import 'package:flutter/material.dart';
import 'package:jjbt/model/buah_model.dart';
import 'package:jjbt/screen/main_screen.dart';

class DetailScreen extends StatelessWidget {
  final BuahModel buah;
  const DetailScreen({required this.buah, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
        print('Screen width: ${constraints.maxWidth}');
        if (constraints.maxWidth <= 600) {
          return HpScreen(buah: buah);
        } else {
          return WebScreen(buah: buah);
        }
      })),
    );
  }
}

class HpScreen extends StatelessWidget {
  const HpScreen({
    super.key,
    required this.buah,
  });

  final BuahModel buah;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Stack(
            children: [
              Image.asset(buah.imageAsset),
              Positioned(
                left: 15,
                top: 15,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              buah.name,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(buah.location),
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.monetization_on_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(buah.Price)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              buah.description,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: buah.imageUrls.length,
              itemBuilder: (context, index) {
                final String img = buah.imageUrls[index];
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(img)),
                );
              },
            ),
          ),
        ],
      
    );
  }
}

class WebScreen extends StatefulWidget {
  final BuahModel buah;

  WebScreen({super.key, required this.buah});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  final _scrollBarController = ScrollController();

  @override
  void dispose() {
    _scrollBarController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 64,
        vertical: 16,
      ),
      child: Center(
        child: SizedBox(
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wisata Bandung",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset(widget.buah.imageAsset),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Scrollbar(
                          controller: _scrollBarController,
                          child: SizedBox(
                            height: 250,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.buah.imageUrls.length,
                              itemBuilder: (context, index) {
                                final String image =
                                    widget.buah.imageUrls[index];
                                return Padding(
                                  padding: EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(image)),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.buah.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(widget.buah.location),
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.monetization_on_outlined),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(widget.buah.Price),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                widget.buah.description,
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
