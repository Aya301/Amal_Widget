import 'package:flutter/material.dart';
class  books extends StatefulWidget {
  @override
  _booksState createState() => _booksState();
}

class _booksState extends State<books> {
  var book_list = [
    {
      "name": "أحوال المصطفى",
     'picture': 'book/b1.jpg',
      "price": "60 جنية",
    },
    {
      "name": "النفس و الحياة",
      'picture': ' book/b2.jpg',
      "price":  "20 جنية",
    },
    {
      "name": "القرآن نسخة شخصية",
      "picture": " book/b3.jpg",
      "price": "65 جنية",
    },
    {
      "name": "الطريق الى الله",
      "picture": " book/b4.jpg",
      "price": "25 جنية",
    },
    {
      "name": " قواعد فى اعمال القلوب",
      "picture": " book/b5.jpg",
      "price": "35 جنية",
    },
    {
      "name": "فى ظلال السيرة النبوية",
      "picture": " book/b6.jpg",
      "price": "80 جنية",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                  'دينية')
              ,),
            body:
            GridView.builder(
                itemCount: book_list.length,
                gridDelegate:
                new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Single_prod(
                      prod_name: book_list[index]['name'],
                      prod_pricture: book_list[index]['picture'],
                      prod_price: book_list[index]['price'],
                    ),
                  );
                })
        ));
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),

                      ),
                      subtitle: Text(
                        "$prod_price",
                        style: TextStyle(
                            color: Colors. black45, fontWeight: FontWeight.w800),
                      ),

                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}