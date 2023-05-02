import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/app_styles.dart';
import 'package:flutter_home_rent_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding8,
        ),
        height: 43,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: kPadding20,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price',
                    style: kRalewayRegular.copyWith(
                      color: kGrey85,
                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  Text(
                    'Rp. 2.500.000.000 / Year',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('Rent Now Tapped');
              },
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius10,
                  ),
                  gradient: kLinearGradientBlue,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding24,
                ),
                child: Center(
                  child: Text(
                    'Rent Now',
                    style: kRalewaySemibold.copyWith(
                      color: kWhite,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding20,
          ),
          child: Column(
            children: [
              Container(
                height: 319,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius20,
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0,
                      offset: const Offset(0, 18),
                      blurRadius: 18,
                      color: kBlack.withOpacity(0.1),
                    )
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://mod-movers.com/wp-content/uploads/2020/06/webaliser-_TPTXZd9mOo-unsplash-scaled-e1591134904605.jpg',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(kBorderRadius20),
                            bottomRight: Radius.circular(kBorderRadius20),
                          ),
                          gradient: kLinearGradientBlack,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kPadding20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 17,
                                backgroundColor: kBlack.withOpacity(0.24),
                                child: SvgPicture.asset(
                                  'assets/icon_arrow_back.svg',
                                ),
                              ),
                              CircleAvatar(
                                radius: 17,
                                backgroundColor: kBlack.withOpacity(0.24),
                                child: SvgPicture.asset(
                                  'assets/icon_bookmark.svg',
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dreamsville House',
                                style: kRalewaySemibold.copyWith(
                                  color: kWhite,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 4.5,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 0.5,
                              ),
                              Text(
                                'Jl. Sultan Iskandar Muda, Jakarta selatan',
                                style: kRalewayRegular.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 1.5,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        decoration: BoxDecoration(
                                          color: kWhite.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            kBorderRadius5,
                                          ),
                                        ),
                                        padding:
                                            const EdgeInsets.all(kPadding4),
                                        child: SvgPicture.asset(
                                          'assets/icon_bedroom_white.svg',
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.blockSizeHorizontal! *
                                            2.5,
                                      ),
                                      Text(
                                        '6 Bedroom',
                                        style: kRalewayRegular.copyWith(
                                          color: kWhite,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:
                                        SizeConfig.blockSizeHorizontal! * 7.5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        width:
                                            SizeConfig.blockSizeHorizontal! * 7,
                                        decoration: BoxDecoration(
                                          color: kWhite.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            kBorderRadius5,
                                          ),
                                        ),
                                        padding:
                                            const EdgeInsets.all(kPadding4),
                                        child: SvgPicture.asset(
                                          'assets/icon_bathroom_white.svg',
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.blockSizeHorizontal! *
                                            2.5,
                                      ),
                                      Text(
                                        '4 Bathroom',
                                        style: kRalewayRegular.copyWith(
                                          color: kWhite,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  2.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Description',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              ReadMoreText(
                'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars',
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: '...',
                trimCollapsedText: 'Show More',
                trimExpandedText: 'Show Less',
                style: kRalewayRegular.copyWith(
                  color: kGrey85,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
                moreStyle: kRalewayRegular.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
                lessStyle: kRalewayRegular.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://blogger.googleusercontent.com/img/a/AVvXsEiRB_dB-wXqJdvt26dkR-vqOXUjacfxAQIgFNMHl_czjMNDOh6VZVc-muCczDKZh-VU0JqUYV1M9h25ZooLGqhVfwexQO6zNY1jxeMDu0-SpfEPe8xkF7re1eldAkKld9Ct1YzesFmHpQK9wlPK330AXA85gsmDBURTQm3i7r08g6vO7KNtAPyDgeUIaQ=s740',
                        ),
                        backgroundColor: kBlue,
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abdul Aziz Ahwan',
                            style: kRalewayMedium.copyWith(
                              color: kBlack,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical! * 0.2,
                          ),
                          Text(
                            'Owner',
                            style: kRalewayMedium.copyWith(
                              color: kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius5),
                          color: kBlue.withOpacity(0.5),
                        ),
                        child: SvgPicture.asset(
                          'assets/icon_phone.svg',
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius5),
                          color: kBlue.withOpacity(0.5),
                        ),
                        child: SvgPicture.asset(
                          'assets/icon_message.svg',
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Gallery',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: kPadding16,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                      color: kBlue,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://mod-movers.com/wp-content/uploads/2020/06/webaliser-_TPTXZd9mOo-unsplash-scaled-e1591134904605.jpg',
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: index == 4 - 1 ? kBlack.withOpacity(0.3) : null,
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                      ),
                      child: Center(
                        child: index == 4 - 1
                            ? Text(
                                '+5',
                                style: kRalewayMedium.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 5,
                                ),
                              )
                            : null,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Container(
                height: 161,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/map_sample.png',
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 136,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(kBorderRadius20),
                            bottomRight: Radius.circular(kBorderRadius20),
                          ),
                          gradient: kLinearGradientWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
