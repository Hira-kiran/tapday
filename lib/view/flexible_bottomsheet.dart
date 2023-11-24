// ignore_for_file: must_be_immutable

import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tapday_project/extension/sizedbox.dart';

class FlexibleBottomSheet extends StatefulWidget {
  const FlexibleBottomSheet({super.key});

  @override
  State<FlexibleBottomSheet> createState() => _FlexibleBottomSheetState();
}

class _FlexibleBottomSheetState extends State<FlexibleBottomSheet> {
  bool showBottomSheet = false;
  int counter = 1;
  bool favorite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showFlexibleBottomSheet(
                  bottomSheetBorderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                  minHeight: 0.0,
                  initHeight: 0.95,
                  maxHeight: 1,
                  anchors: [0, 0.95, 1],

                  context: context,
                  builder: (
                    BuildContext context,
                    ScrollController scrollController,
                    double bottomSheetOffset,
                  ) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          topRight: Radius.circular(15.r),
                        ),
                      ),
                      child: ListView(
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                "assets/jacket.png",
                                height: 300.h,
                                width: double.infinity,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 3.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 0,
                                right: 20,
                                child: CircleAvatar(
                                  child: Icon(Icons.logout),
                                ),
                              ),
                            ],
                          ),
                          10.ph,
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 5.h,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Soft ultimate lagings"),
                                    GestureDetector(
                                      onTap: () {
                                        favorite = !favorite;
                                        setState(() {});
                                      },
                                      child: favorite
                                          ? const Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            )
                                          : const Icon(
                                              Icons.favorite_outline,
                                              color: Colors.grey,
                                            ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: "\$100.00  ",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\$50.00  ",
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 10.sp,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => const Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                20.ph,
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Soft ultimate lagings"),
                                    Icon(Icons.shop)
                                  ],
                                ),
                                const Text("Select Size"),
                                10.ph,
                                Row(
                                  children: [
                                    SizedContainer(
                                      text: "S",
                                    ),
                                    SizedContainer(
                                      text: "M",
                                    ),
                                    SizedContainer(
                                      text: "L",
                                    ),
                                    SizedContainer(
                                      text: "XL",
                                    ),
                                    SizedContainer(
                                      text: "XS",
                                    ),
                                  ],
                                ),
                                10.ph,
                                const Text("Select Color"),
                                10.ph,
                                Row(
                                  children: [
                                    SelectColorContainer(
                                      text: "White",
                                    ),
                                    SelectColorContainer(
                                      text: "Green",
                                    ),
                                    SelectColorContainer(
                                      text: "Blue",
                                    ),
                                  ],
                                ),
                                5.ph,
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Quality"),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            counter++;
                                            setState(() {});
                                          },
                                          child: const Icon(Icons.add),
                                        ),
                                        5.pw,
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 10.w,
                                                vertical: 5.h,
                                              ),
                                              child: Text("$counter"),
                                            ),
                                          ),
                                        ),
                                        5.pw,
                                        GestureDetector(
                                          onTap: () {
                                            if (counter < 1) {
                                              counter++;
                                            }
                                            counter--;
                                            setState(() {});
                                          },
                                          child: const Icon(Icons.remove),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(),
                                10.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                        ),
                                        child: const Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "Add to Card",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    10.pw,
                                    Expanded(
                                      child: Container(
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(Icons.apple),
                                              5.pw,
                                              const Text(
                                                "Apple Pay",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ...List.generate(
                                  5,
                                  (index) => ExpansionTile(
                                    iconColor: Colors.black,
                                    collapsedIconColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    expandedAlignment: Alignment.topLeft,
                                    title: Text(
                                      "Composition and care",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Reviews",
                                    ),
                                    Text(
                                      "View all",
                                    ),
                                  ],
                                ),
                                10.ph,
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(
                                      5,
                                      (index) => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey.shade400,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.w,
                                              vertical: 5.h,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "5.0",
                                                        ),
                                                        Row(
                                                          children:
                                                              List.generate(
                                                                  5,
                                                                  (index) =>
                                                                      const Icon(
                                                                        Icons
                                                                            .star,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .amber,
                                                                      )),
                                                        ),
                                                      ],
                                                    ),
                                                    const Text(
                                                      "Mary lynch",
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "A paragraph could contain a series of brief examples or a single long illustration of a general point.",
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                10.ph,
                                const Text(
                                  "You may look like",
                                ),
                                SizedBox(
                                  height: 250,
                                  child: GridView.builder(
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      childAspectRatio: 1 / 1.43,
                                    ),
                                    itemBuilder: (context, index) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius:
                                                  BorderRadius.circular(6.r),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                5.ph,
                                                Image.asset(
                                                  "assets/jacket.png",
                                                  height: 102.h,
                                                  width: double.infinity,
                                                ),
                                                10.ph,
                                                Container(
                                                  height: 35,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(6.r),
                                                      bottomRight:
                                                          Radius.circular(6.r),
                                                    ),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "+ Quick Add",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          5.ph,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        const TextSpan(
                                                          text: "\$100.00  ",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "\$50.00  ",
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                            fontSize: 10.sp,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  favorite = !favorite;
                                                  setState(() {});
                                                },
                                                child: favorite
                                                    ? const Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      )
                                                    : const Icon(
                                                        Icons.favorite_outline,
                                                        color: Colors.grey,
                                                      ),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            "Jackets for girls",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          20.ph,
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                10.ph,
                              ],
                            ),
                          ),
                          20.ph,
                        ],
                      ),
                    );
                  },
                  // isSafeArea: true,
                );
              },
              child: const Text("Show bottom sheet"),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectColorContainer extends StatefulWidget {
  String text;

  SelectColorContainer({super.key, required this.text});

  @override
  State<SelectColorContainer> createState() => _SelectColorContainerState();
}

class _SelectColorContainerState extends State<SelectColorContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: 5.w),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? Colors.purple : Colors.transparent,
              ),
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Text(
              widget.text,
              style: TextStyle(
                color: isSelected ? Colors.purple : Colors.black,
              ),
            ),
          )),
        ),
      ),
    );
  }
}

class SizedContainer extends StatefulWidget {
  String text;
  SizedContainer({super.key, required this.text});

  @override
  State<SizedContainer> createState() => _SizedContainerState();
}

class _SizedContainerState extends State<SizedContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? Colors.purple : Colors.transparent,
              ),
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            child: Text(
              widget.text,
              style: TextStyle(
                color: isSelected ? Colors.purple : Colors.black,
              ),
            ),
          )),
        ),
      ),
    );
  }
}
