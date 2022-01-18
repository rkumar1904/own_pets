import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:own_pets/constant.dart';
import 'package:own_pets/default_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            title: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Hi Radit\n',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Good Morning!',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          sliverList(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primaryColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 3,
                    offset: Offset(0, 10),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('images/community-bg.png'),
                  alignment: Alignment.centerRight,
                ),
              ),
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Join The \nCommunity',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: const Offset(
                            0,
                            10,
                          ),
                        ),
                      ],
                    ),
                    child: const Text(
                      'Join now',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          sliverList(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'See All',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          sliverList(
              child: SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              primary: false,
              // physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              children: [
                GridOption(
                  image: 'images/vet.png',
                  title: 'Vet',
                  isSelected: true,
                  onTap: () {},
                ),
                GridOption(
                  image: 'images/Grooming.png',
                  title: 'Grooming',
                  isSelected: false,
                  onTap: () {},
                ),
                GridOption(
                  image: 'images/food.png',
                  title: 'Food',
                  isSelected: false,
                  onTap: () {},
                ),
                GridOption(
                  image: 'images/playing.png',
                  title: 'Playing',
                  isSelected: false,
                  onTap: () {},
                ),
              ],
            ),
          )),
          sliverList(
            child: Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 5,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nearby Veterinary',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'See All',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          sliverList(
              child: ListView(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(0),
            children: const [
              DrListContainer(),
              DrListContainer(),
              DrListContainer(),
              DrListContainer(),
              DrListContainer(),
            ],
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          print('selected index $index');
        },
      ),
    );
  }
}

class DrListContainer extends StatelessWidget {
  const DrListContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: secondryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
            // offset: const Offset(
            //   0,
            //   10,
            // ),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('images/dr.png'), // change in future
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'drh. Ariyo Hartono',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'General Veterinary',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$125.000',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        '2.1 KM',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 40,
            child: Container(
              decoration: const BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {
                  print('on click');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridOption extends StatelessWidget {
  const GridOption({
    Key? key,
    required this.image,
    required this.title,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 4.3,
              height: 85,
              decoration: BoxDecoration(
                color: isSelected ? primaryColor : secondryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.asset(
                image,
                // fit: BoxFit.scaleDown,
                height: 50,
              ),
            ),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
