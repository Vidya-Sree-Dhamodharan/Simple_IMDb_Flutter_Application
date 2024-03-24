import 'package:flutter/material.dart';
import 'package:imdb_app/classes/constructor_class.dart';
import 'package:imdb_app/pages/describe_page.dart';
import 'package:imdb_app/widget/cards_widget.dart';
import 'package:super_banners/super_banners.dart';
import 'package:imdb_app/basic/const_val.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMDb"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              // child: GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //     MaterialPageRoute(
              //      builder: (context) {
              //       return const DescribePage();
              //   },));},),
              child: Card(
                child: Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(right:300.0),
                    //   child: CornerBanner(
                    //         bannerColor:Colors.red ,
                    //         child: Text("Trending"),
                    //         bannerPosition: CornerBannerPosition.topLeft),
                    // ),

                    Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 50.0),
                            child: CornerBanner(
                                bannerColor: Colors.red.shade900,
                                child: Text("Trending"),
                                bannerPosition: CornerBannerPosition.topLeft),
                          ),
                          Icon(Icons.star, color: Colors.yellow),
                          const Text("4.7 out of 5"),
                          SizedBox(
                            height: 20,
                          ),
                        ]),
                    Container(
                      // width: double.infinity,
                      // padding: const EdgeInsets.all(10),

                      child: Image.asset(height: 300.0, 'images/madam.jpg'),
                    ),
                    const Text('Madame Web',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Action · Adventure · Sci-Fi · Thriller · Motion',
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center),
                    ),
                    SizedBox(
                      height: val10,
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 390.0,
                  child: cards_widget(
                    box: ConstructorClass(
                        title: 'Migration',
                        path: 'images/migration.jpg',
                        description:
                            'Animation · Adventure ',
                        rate: "4.3 out of 5",
                        story:
                            'A family of ducks decides to leave the safety of a New England pond for an adventurous trip to Jamaica. However, their well-laid plans quickly go awry when they get lost and wind up in New York City. The experience soon inspires them to expand their horizons, open themselves up to new friends, and accomplish more than they ever thought possible.',
                        c1: 'Kumail Nanjiani',
                        c1im: 'images/mig_1.jpg',
                        c2: 'Elizabeth Banks',
                        c2im: 'images/mig_2.jpeg',
                        c3: 'Awkwafina',
                        c3im: 'images/mig_3.jpeg',
                        c4: 'Danny DeVito',
                        c4im: 'images/mig_4.jpeg',
                        video: 'https://www.youtube.com/watch?v=cQfo0HJhCnE&t=76s'),
                  ),
                )),
                Expanded(
                  child: SizedBox(
                    height: 390.0,
                    child: cards_widget(
                        box: ConstructorClass(
                            title: 'Meg 2.0',
                            path: 'images/meg2.jpg',
                            description:
                                "Action · Thriller · Sci-Fi",
                            rate: "3.7 out of 5",
                            story: 'Jonas Taylor leads a research team on an exploratory dive into the deepest depths of the ocean. Their voyage spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival. Pitted against colossal, prehistoric sharks and relentless environmental plunderers, they must outrun, outsmart and outswim their merciless predators.',
                            c1: 'Kumail Nanjiani',
                            c1im: 'images/meg_1.jpeg',
                            c2: 'Elizabeth Banks',
                            c2im: 'images/meg_2.jpg',
                            c3: 'Awkwafina',
                            c3im: 'images/meg_3.jpeg',
                            c4: 'Danny DeVito',
                            c4im: 'images/meg_4.jpeg',
                            video: 'https://www.youtube.com/watch?v=dG91B3hHyY4')),
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   padding: EdgeInsets.all(8.0),
                //   child: Image.asset(height: 250.0, 'images/wonka.jpg'),
                // ),
              ],
            ),
            SizedBox(
              height: val2,
            ),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 390.0,
                  child: cards_widget(
                      box: ConstructorClass(
                          title: 'Ancestral',
                          path: 'images/ancestral.jpg',
                          description:
                              "Action · Thriller · Horror",
                          rate: "4.5 out of 5",
                          story: "Following a family tragedy, a widower moves his two daughters to their family's centuries-old estate. When both daughters have unsettling visions and night terrors, their father seeks a psychologist's help, as something sinister inhabits the walls.",
                          c1: 'Kumail Nanjiani',
                        c1im: 'images/anc_1.jpeg',
                        c2: 'Elizabeth Banks',
                        c2im: 'images/anc_2.jpeg',
                        c3:'Awkwafina',
                        c3im: 'images/anc_3.jpeg',
                        c4: 'Danny DeVito',
                        c4im: 'images/anc_4.jpeg',
                        video:'https://www.youtube.com/watch?v=FWKCoBpmp-U')),
                )),
                Expanded(
                  child: SizedBox(
                    height: 390.0,
                    child: cards_widget(
                      box: ConstructorClass(
                          title: 'Wonka',
                          path: 'images/wonka.jpg',
                          description:
                              "Adventure · Family · Fantasy",
                          rate: "3.4 out of 5",
                          story: 'Willy Wonka is the mastermind behind some of the most delicious and innovative chocolate creations the world has ever seen. But before shaking up the chocolate industry and making a name for himself as a confectionery genius, the ambitious young creator had to defy all odds. As a result, Willy transformed his wildest dreams into reality with a bold vision, determination, and unexpected help from new friends. After all, hard work and a dash of magic can make anything happen. Because, as Willy already knows, it only takes a dream to make a difference.',
                          c1: 'Kumail Nanjiani',
                        c1im: 'images/wonka_1.jpeg',
                        c2: 'Elizabeth Banks',
                        c2im: 'images/wonka_2.jpeg',
                        c3:'Awkwafina',
                        c3im: 'images/wonka_3.jpeg',
                        c4: 'Danny DeVito',
                        c4im: 'images/wonka_4.jpeg',
                        video: 'https://www.youtube.com/watch?v=otNh9bTjXWg'),
                    ),
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   padding: EdgeInsets.all(8.0),
                //   child: Image.asset(height: 250.0, 'images/wonka.jpg'),
                // ),
              ],
            ),
            SizedBox(height: val10),
          ],
        ),
      ),
    );
  }
}
