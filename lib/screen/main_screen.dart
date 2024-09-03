import 'package:flutter/material.dart';
import 'package:jjbt/model/buah_model.dart';
import 'package:jjbt/screen/detail_screen.dart';
import 'package:jjbt/model/category.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: _AppBar(),
  body: LayoutBuilder(
    builder: (context, constraints) {
      return Column(
        children: [
          constraints.maxWidth < 600
            ? _searchField()
            : Center(
                child: SizedBox(
                  width: 400,
                  child: _searchField(),
                ),
              ),
              SizedBox(height: 20,),
          constraints.maxWidth < 600
            ? _category(Category)
            : Center(
                child: SizedBox(
                  width: 800,
                  child: _category(Category),
                ),
              ),
          SizedBox(height: 40,),
          Expanded(
            child: LayoutBuilder(
              builder: (context, BoxConstraints constraints) {
                if (constraints.maxWidth <= 550) {
                  return HpScreen();
                } else if (constraints.maxWidth < 700) {
                  return WebScreen(crossAxisCount: 2);
                } else if (constraints.maxWidth < 1000) {
                  return WebScreen(crossAxisCount: 3);
                } else if (constraints.maxWidth < 1200) {
                  return WebScreen(crossAxisCount: 4);
                } else {
                  return WebScreen(crossAxisCount: 5);
                }
              },
            ),
          ),
        ],
      );
    },
  ),
);
  }

  Column _category(List<CategoryModels> categories) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Category",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
                ),
              Container(
                height: 150,
                child: ListView.separated(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 25,),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: categories[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(categories[index].iconPath),
                            ),
                          ),
                          Text(
                            categories[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1D1617)
                .withOpacity(0.11), // Warna shadow dengan opacity
            blurRadius: 40, // Ukuran blur shadow
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Search Book',
          hintStyle: TextStyle(
            color: Color(0xffDDDADA),
            fontSize: 14,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              'assets/img/search.jpg',
              width: 20,
              height: 20,
            ),
          ),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/img/filter.jpg',
                        width: 20, height: 20),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar _AppBar() {
    return AppBar(
      title: Text(
        "Jenis Jenis Buah Tropis ",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          // Aksi yang dilakukan ketika ikon di-tap
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/img/fruits.jpg',
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child: Image.asset(
              'assets/img/dots.jpg',
              height: 20,
              width: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

class HpScreen extends StatelessWidget {
  const HpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: buahModelList.length,
      itemBuilder: (context, index) {
        final BuahModel buah = buahModelList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          buah: buah,
                        )));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Image.asset(buah.imageAsset)),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              buah.name,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(buah.location)
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class WebScreen extends StatelessWidget {
  final int crossAxisCount;
  const WebScreen({required this.crossAxisCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: crossAxisCount,
        children: buahModelList
            .map((buah) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                buah: buah,
                              )),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              flex: 2,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  child: Image.asset(
                                    buah.imageAsset,
                                    fit: BoxFit.cover,
                                    // width: double.infinity,
                                    // height: double.infinity,
                                  ))),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  buah.name,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  buah.location,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
