// import 'package:flutter/material.dart';
// import 'package:karibu_kazi/constants/color_extension.dart';


// class VideoMessage extends StatelessWidget {
//   const VideoMessage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.45, // 45% of total width
//       child: AspectRatio(
//         aspectRatio: 1.6,
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.asset("assets/images/Video Place Here.png"),
//             ),
//             Container(
//               height: 25,
//               width: 25,
//               decoration:  BoxDecoration(
//                 color: TColor.gray,
//                 shape: BoxShape.circle,
//               ),
//               child: const Icon(
//                 Icons.play_arrow,
//                 size: 16,
//                 color: Colors.white,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
