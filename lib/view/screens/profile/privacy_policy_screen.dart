import 'package:flutter/material.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../config/constants/app_sizes.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_text_widget.dart';



class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            color: kPrimaryColor,
          ),
          child: Stack(
            children: [
              CommonImageView(
                imagePath:Assets.imagesMaskgroup,
              ),
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: MyText(
                  text: "Privacy Policy",
                  size: 18,
                  weight: FontWeight.w600,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.inter,
                ),
                centerTitle: true,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Condition & Attending",
              size: 18,
              weight: FontWeight.w600,
              color: kBlackColor,
            ),
            SizedBox(height: 5,),
            MyText(
              text: "At enim hic etiam dolore. Dulce amarum, leve asperum, prope longe, stare movere, quadratum rotundum."
                " At certe gravius. Nullus est igitur cuiusquam dies natalis. Paulum, cum regem Persem captum adduceret, "
                "eodem flumine invectio?\n\nQuare hoc videndum est, possitne nobis hoc ratio philosophorum dare."
                " Sed finge non solum callidum eum, qui aliquid improbe faciat, verum etiam praepotentem, ut M."
                "\nEst autem officium, quod ita factum est, ut eius facti probabilis ratio reddi possit.",
              size: 14,
              weight: FontWeight.w500,
              color: kGreyPPColor,

            ),
            SizedBox(height: 10,),
            MyText(
              text: "Terms & Use",
              size: 18,
              weight: FontWeight.w600,
              color: kBlackColor,
            ),
            SizedBox(height: 5,),
            MyText(
              text: "Ut proverbia non nulla veriora sint quam vestra dogmata. Tamen aberramus a proposito, et, ne longius, prorsus,"
                  " inquam, Piso, si ista mala sunt, placet. Omnes enim iucundum motum, quo sensus hilaretur. "
                  "Cum id fugiunt, re eadem defendunt, quae Peripatetici, verba. Quibusnam praeteritis? Portenta haec esse dicit,"
                  " quidem hactenus; Si id dicis, vicimus. Qui ita affectus, beatum esse numquam probabis; Igitur neque stultorum "
                  "quisquam beatus neque sapientium non beatus.\n\nDicam, inquam, et quidem discendi causa magis, quam quo te aut Epicurum"
                  " reprehensum velim. Dolor ergo, id est summum malum, metuetur semper, etiamsi non ader.",
              size: 14,
              weight: FontWeight.w500,
              color: kGreyPPColor,

            ),



          ],
        ),
      ),
    );
  }
}
