import 'package:flutter/material.dart';
import 'package:flutter__app/model/movie_model.dart';
//import 'package:searchbar_animation/searchbar_animation.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
      //backgroundColor: Color.fromARGB(255, 226, 238, 211),
      //appBar: AppBar(
      //title: const Text(
      //'Search Screen',
    );
    //),
    // body: const Center(
    //   child: Text(
    //     'This Is Search Page',
    //     style: TextStyle(
    //       fontWeight: FontWeight.bold,
    //       fontStyle: FontStyle.italic,
    //       fontSize: 30.0,
    //     ),
    //   ),
    // ),
    //);
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<MovieModel> main_movies_list = [
    MovieModel("Pathaan", 2023, 6.4,
        "https://m.media-amazon.com/images/M/MV5BM2QzM2JiNTMtYjU4Ny00MDZkLTk3MmUtYTRjMzVkZGJlNmYyXkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_.jpg"),
    MovieModel("K.G.F: Chapter 1", 2018, 8.2,
        "https://m.media-amazon.com/images/M/MV5BZDNlNzBjMGUtYTA0Yy00OTI2LWJmZjMtODliYmUyYTI0OGFmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg"),
    MovieModel("K.G.F: Chapter 2", 2022, 8.3,
        "https://m.media-amazon.com/images/M/MV5BMjI2Njg2Y2EtZjgwMC00ZGVkLWJmMWYtYjVhYjk2ZTkwNWE1XkEyXkFqcGdeQXVyMTMxMjA5NDU1._V1_.jpg"),
    MovieModel("Shazam!", 2019, 7.0,
        "https://m.media-amazon.com/images/M/MV5BOWZhZjE4NGQtODg5Ni00MjQ1LWJmMzAtNzQ2N2M1NzYzMDJkXkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg"),
    MovieModel("F9: The Fast Saga", 2021, 5.2,
        "https://m.media-amazon.com/images/M/MV5BMjI0NmFkYzEtNzU2YS00NTg5LWIwYmMtNmQ1MTU0OGJjOTMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg"),
    MovieModel("Fast & Furious Presents: Hobbs & Shaw", 2019, 7.0,
        "https://m.media-amazon.com/images/M/MV5BOTIzYmUyMmEtMWQzNC00YzExLTk3MzYtZTUzYjMyMmRiYzIwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg"),
    MovieModel("The Fate of the Furious", 2017, 6.6,
        "https://m.media-amazon.com/images/M/MV5BMjMxODI2NDM5Nl5BMl5BanBnXkFtZTgwNjgzOTk1MTI@._V1_.jpg"),
    MovieModel("Furious 7", 2015, 7.1,
        "https://m.media-amazon.com/images/M/MV5BMTQxOTA2NDUzOV5BMl5BanBnXkFtZTgwNzY2MTMxMzE@._V1_.jpg"),
    MovieModel("Fast & Furious 6", 2013, 7.0,
        "https://m.media-amazon.com/images/M/MV5BMTM3NTg2NDQzOF5BMl5BanBnXkFtZTcwNjc2NzQzOQ@@._V1_.jpg"),
    MovieModel("Fast Five", 2011, 7.3,
        "https://m.media-amazon.com/images/M/MV5BMTUxNTk5MTE0OF5BMl5BanBnXkFtZTcwMjA2NzY3NA@@._V1_.jpg"),
    MovieModel("Fast & Furious", 2009, 6.5,
        "https://m.media-amazon.com/images/M/MV5BYjQ1ZTMxNzgtZDcxOC00NWY5LTk3ZjAtYzRhMDhlNDZlOWEzXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg"),
    MovieModel("The Fast and the Furious: Tokyo Drift", 2006, 6.0,
        "https://m.media-amazon.com/images/M/MV5BMTQ2NTMxODEyNV5BMl5BanBnXkFtZTcwMDgxMjA0MQ@@._V1_.jpg"),
    MovieModel("2 Fast 2 Furious", 2003, 5.9,
        "https://m.media-amazon.com/images/M/MV5BMzExYjcyYWMtY2JkOC00NDUwLTg2OTgtMDI3MGY2OWQzMDE2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg"),
    MovieModel("The Fast and the Furious", 2001, 6.8,
        "https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg"),
    MovieModel("Avengers: Endgame", 2019, 8.4,
        "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg"),
    MovieModel("Avengers: Infinity War", 2018, 8.4,
        "https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg"),
    MovieModel("The Avengers", 2012, 8.0,
        "https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"),
    MovieModel("Captain America: The First Avenger", 2011, 6.9,
        "https://m.media-amazon.com/images/M/MV5BMTYzOTc2NzU3N15BMl5BanBnXkFtZTcwNjY3MDE3NQ@@._V1_.jpg"),
    MovieModel("Money Heist", 2017, 8.2,
        "https://m.media-amazon.com/images/M/MV5BODI0ZTljYTMtODQ1NC00NmI0LTk1YWUtN2FlNDM1MDExMDlhXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_.jpg"),
    MovieModel("Squid Game", 2021, 8.0,
        "https://m.media-amazon.com/images/M/MV5BYWE3MDVkN2EtNjQ5MS00ZDQ4LTliNzYtMjc2YWMzMDEwMTA3XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg"),
    MovieModel("Stranger Things", 2016, 8.7,
        "https://m.media-amazon.com/images/M/MV5BMDZkYmVhNjMtNWU4MC00MDQxLWE3MjYtZGMzZWI1ZjhlOWJmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg"),
    MovieModel("Game of Thrones", 2011, 9.2,
        "https://m.media-amazon.com/images/M/MV5BYTRiNDQwYzAtMzVlZS00NTI5LWJjYjUtMzkwNTUzMWMxZTllXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_.jpg"),
    MovieModel("Resident Evil: The Final Chapter", 2016, 5.5,
        "https://m.media-amazon.com/images/M/MV5BNzQ5NzgwNDA4MF5BMl5BanBnXkFtZTgwNTQ5NDY4MDI@._V1_.jpg"),
  ];

  List<MovieModel> display_list = List.from(main_movies_list);

  void updateList(String value) {
    // this is the function that will filter our list
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 250, 221),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isKeyboard)
              Text(
                "Search for a Movie or Web Series ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              //style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Eg:  Harry Potter",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                      "No Result Found",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  : ListView.builder(
                      //child: ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].movie_title!,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${display_list[index].movie_release_year!}',
                          style: TextStyle(
                            color: Color.fromARGB(255, 116, 138, 149),
                          ),
                        ),
                        trailing: Text(
                          '${display_list[index].rating}',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        leading: Image.network(
                            display_list[index].movie_poster_url!),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
