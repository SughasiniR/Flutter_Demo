// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
//
// List<CameraDescription>? cameras;
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   cameras = await availableCameras();
//   runApp(CameraOpen());
// }
//
// class CameraOpen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const CameraPage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class CameraPage extends StatefulWidget {
//   const CameraPage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   _CameraPageState createState() => _CameraPageState();
// }
//
// class _CameraPageState extends State<CameraPage> {
//   CameraController? controller;
//   String imagePath = "";
//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(cameras![1], ResolutionPreset.max);
//     controller?.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!controller!.value.isInitialized) {
//       return Container();
//     }
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 width: 200,
//                 height: 200,
//                 child: AspectRatio(
//                   aspectRatio: controller!.value.aspectRatio,
//                   child: CameraPreview(controller!),
//                 ),
//               ),
//               TextButton(
//                   onPressed: () async {
//                     try {
//                       final image = await controller!.takePicture();
//                       setState(() {
//                         imagePath = image.path;
//                       });
//                     } catch (e) {
//                       print(e);
//                     }
//                   },
//                   child: Text("Take Photo")),
//               if (imagePath != "")
//                 Container(
//                   width: 300,
//                   height: 300,
//                   // child: Image.file(
//                   //   File(),
//                   // )
//                 )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
