import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/helpers/common.dart';

class AddPictureDescription extends StatefulWidget {
  const AddPictureDescription({super.key});

  @override
  State<AddPictureDescription> createState() => _AddPictureDescriptionState();
}

class _AddPictureDescriptionState extends State<AddPictureDescription> {
  XFile? photo;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          getAppLocalizations(context)!.addAPicOfItem,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Spacer(),
        IconButton(
          onPressed: () async {
            await pickImage();
          },
          icon: const Icon(
            Icons.camera_alt,
          ),
          style: ButtonStyle(
            elevation: const WidgetStatePropertyAll(
              10,
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
            ),
            side: const WidgetStatePropertyAll(
              BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
  Future<void> pickImage() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
      if (image == null) return;
      final imageTemp = XFile(image.path);
      setState(() => photo = imageTemp);
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
    }
  }
}
