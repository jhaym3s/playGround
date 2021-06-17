import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class ImageScreen extends StatefulWidget {
  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File _selectImage;
  Future _getImage() async {
    final picker = ImagePicker();
    PickedFile _imageFile = await picker.getImage(source: ImageSource.camera,maxWidth: 600 );
    setState(() {
      if(_imageFile== null ){
        return ;
      }
      _selectImage = File(_imageFile.path);
    });
    /*
    final appDir = await devicePath.getApplicationDocumentsDirectory();
    final tempFileName = path.basename(_imageFile.path);
    final saveImage = await _selectImage.copy('${appDir.path}/$tempFileName');
    widget.onSelectImage(saveImage);

     */
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              //width: 150,height: 150,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey)),
              child: _selectImage != null ?
              Image.file(_selectImage, fit: BoxFit.cover,width: double.infinity,height: double.infinity,) :Text("What's up"),
              alignment: Alignment.center,
            ),
          ),
          RaisedButton(onPressed: _getImage,color: Colors.black,)
        ],
      ),
    );
  }
}
