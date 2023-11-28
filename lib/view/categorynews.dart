import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/API/showcategory.dart';
import 'package:newsapp/model/showcategorymodel.dart';

class categorynews extends StatefulWidget {
  final name;
  const categorynews({super.key, required this.name});

  @override
  State<categorynews> createState() => _categorynewsState();
}

class _categorynewsState extends State<categorynews> {
  List<ShowCategoryModel> categories = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  getNews() async {
    CategoryNews newsclass = CategoryNews();
    await newsclass.getCategoryNews(widget.name);
    categories = newsclass.categorys;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: GoogleFonts.openSans(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return showcategory(
                image: categories[index].urlToImage!,
                desc: categories[index].description!,
                title: categories[index].title!);
          }),
    );
  }
}

class showcategory extends StatelessWidget {
  String image, desc, title;
  showcategory({required this.image, required this.desc, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: image,
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover,
          ),
          Text(
            title,
            maxLines: 1,
            style: GoogleFonts.openSans(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            desc,
            maxLines: 3,
            style: GoogleFonts.openSans(fontSize: 15, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
