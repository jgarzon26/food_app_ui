import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';
import 'package:food_app_ui/demoData.dart';
import 'package:food_app_ui/screens_home/widgets/image_carousel.dart';
import 'package:food_app_ui/screens_home/widgets/restaurant_info_medium_card.dart';
import 'package:food_app_ui/screens_home/widgets/section_title.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            floating: true,
            title: Column(
              children: [
                Text(
                  'Deliver To'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption!.copyWith(
                    color: kActiveColor,
                  ),
                ),
                const Text(
                  'San Francisco',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: (){},
                child: const Text(
                  'Filter',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: 'Featured Partners',
                press: (){},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                  List.generate(
                    demoMediumCardData.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: defaultPadding),
                          child: RestaurantInfoMediumCard(
                          title: demoMediumCardData[index]['name'],
                          image: demoMediumCardData[index]['image'],
                          location: demoMediumCardData[index]['location'],
                          deliveryTime: demoMediumCardData[index]['delivertTime'],
                          rating: demoMediumCardData[index]['rating'],
                          press: () {},
                          ),
                        ),
                  ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset('assets/images/Banner.png'),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: 'Best Pick',
                press: (){},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                List.generate(
                  demoMediumCardData.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      image: demoMediumCardData[index]['image'],
                      location: demoMediumCardData[index]['location'],
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





