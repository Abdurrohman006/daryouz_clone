import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DefaultArticleShortShimmer extends StatefulWidget {
  const DefaultArticleShortShimmer({Key? key}) : super(key: key);

  @override
  State<DefaultArticleShortShimmer> createState() =>
      _DefaultArticleShortShimmerState();
}

class _DefaultArticleShortShimmerState
    extends State<DefaultArticleShortShimmer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.2))),
        width: double.infinity,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(4)),
                  width: 120,
                  height: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Shimmer.fromColors(
                          baseColor: Colors.black12,
                          highlightColor: Colors.white,
                          child: Container(
                            margin: const EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(4)),
                            width: 200,
                            height: 20,
                          )),
                      Shimmer.fromColors(
                          baseColor: Colors.black12,
                          highlightColor: Colors.white,
                          child: Container(
                            margin: const EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(4)),
                            width: 200,
                            height: 20,
                          )),
                      Shimmer.fromColors(
                          baseColor: Colors.black12,
                          highlightColor: Colors.white,
                          child: Container(
                            margin: const EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(4)),
                            width: 200,
                            height: 20,
                          )),
                    ],
                  ),
                  Shimmer.fromColors(
                      baseColor: Colors.black12,
                      highlightColor: Colors.white,
                      child: Container(
                        color: Colors.white10,
                        height: 75,
                        width: 115,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(4)),
                      width: 100,
                      height: 16,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        size: 19,
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                      Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.white,
                        child: Container(
                          margin: const EdgeInsets.only(left: 6),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(4)),
                          width: 50,
                          height: 16,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//       Container(
//         height: 370,
//         margin: const EdgeInsets.only(top: 10),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey.withOpacity(0.2)),
//         ),
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Shimmer.fromColors(
//               baseColor: Colors.black12,
//               highlightColor: Colors.white,
//               child: Container(
//                 color: Colors.white10,
//                 height: 200,
//                 width: double.infinity,
//               ),
//             ), // Image
//             Container(
//               padding: const EdgeInsets.all(15),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Shimmer.fromColors(
//                       baseColor: Colors.grey,
//                       highlightColor: Colors.white,
//                       child: Container(
//                         margin: const EdgeInsets.only(bottom: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.black12,
//                             borderRadius: BorderRadius.circular(4)),
//                         width: 100,
//                         height: 16,
//                       )),
//                   Shimmer.fromColors(
//                       baseColor: Colors.black12,
//                       highlightColor: Colors.white,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white10,
//                             borderRadius: BorderRadius.circular(4)),
//                         width: double.infinity,
//                         height: 25,
//                       )),
//                   Shimmer.fromColors(
//                       baseColor: Colors.black12,
//                       highlightColor: Colors.white,
//                       child: Container(
//                         margin: const EdgeInsets.only(top: 5),
//                         decoration: BoxDecoration(
//                             color: Colors.white10,
//                             borderRadius: BorderRadius.circular(4)),
//                         width: double.infinity,
//                         height: 25,
//                       )),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Shimmer.fromColors(
//                           baseColor: Colors.grey,
//                           highlightColor: Colors.white,
//                           child: Container(
//                             margin: const EdgeInsets.only(top: 20),
//                             decoration: BoxDecoration(
//                                 color: Colors.white10,
//                                 borderRadius: BorderRadius.circular(4)),
//                             width: 130,
//                             height: 16,
//                           )),
//                       Row(
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(top: 20),
//                             child: const Icon(
//                               Icons.remove_red_eye_outlined,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           Shimmer.fromColors(
//                               baseColor: Colors.grey,
//                               highlightColor: Colors.white,
//                               child: Container(
//                                 margin:
//                                 const EdgeInsets.only(top: 20, left: 10),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white10,
//                                     borderRadius: BorderRadius.circular(4)),
//                                 width: 30,
//                                 height: 16,
//                               )),
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
