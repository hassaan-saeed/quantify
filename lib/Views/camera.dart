import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class TakePhoto extends StatefulWidget {
  const TakePhoto({Key? key, this.camera}) : super(key: key);
  final CameraDescription? camera;

  @override
  _TakePhotoState createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {

  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera as CameraDescription,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  Future<XFile?> takePicture() async {
    if (_controller.value.isTakingPicture) {
      return null;
    }

    try {
      XFile file = await _controller.takePicture();
      return file;
    } on CameraException catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Take Photo"),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () async {
          final file = await takePicture();
          Navigator.of(context).pop(file != null ? file.path : null);
        },
        child: Icon(Icons.camera_alt, color: Colors.black87,),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return Container(
              // height: MediaQuery.of(context).size.height,
              child: CameraPreview(_controller),
            );
          } else {
            // Otherwise, display a loading indicator.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
