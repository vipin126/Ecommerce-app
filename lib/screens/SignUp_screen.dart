import 'package:flutter/material.dart';
import 'package:tstore/common/style/widgets/heading.dart';
import 'package:tstore/common/style/widgets/search_fied.dart';
import 'package:tstore/common/style/widgets/textField.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/text_strings.dart';

class SingUPscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: TColors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            InputFields(labelText: TTexts.firstName, icon: Icon(Icons.person))
          ],
        ),
      ),
    );
  }
}
