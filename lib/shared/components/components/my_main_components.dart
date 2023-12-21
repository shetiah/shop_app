import 'package:api_advanced/models/pageview.dart';
import 'package:api_advanced/shared/components/constants/const.dart';
import 'package:flutter/material.dart';

Widget buildPageItem({required PageBuilder pg}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(pg.imgUrl),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(pg.name, style: const TextStyle(fontSize: 25)),
          const SizedBox(
            height: 30,
          ),
          Text(pg.text),
        ],
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required Function? onSubmit,
  required Function? onChange,
  required Function? onTap,
  bool isPassword = false,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  required dynamic context,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },
      onChanged: (s) {
        onChange!(s);
      },
      onTap: () {
        onTap!();
      },
      validator: (s) {
        return validate(s);
      },
      decoration: InputDecoration(
        prefixIconColor: defcolor,
        suffixIconColor: defcolor,
        labelText: label,
        labelStyle: const TextStyle(
          color: defcolor,
        ),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(
                  suffix,
                  size: 20,
                ),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );

Widget separtor() => Container(
      color: Colors.grey[300],
      height: 1,
      width: double.infinity,
    );
//  Widget NewsItem({
//   required BuildContext context,
//   required Map<String, dynamic> DataList,
// }) =>
//     InkWell(
//       onTap: () {
//         // NewsAppCubit.get(context).changeUrl(URL: '${DataList['url']}');
//         // // _launchURL('${DataList['url']}');
//         // navigateTo(context, WebViewScreen());
//       },
//       child: Container(
//         color: NewsAppCubit.get(context).isDark
//             ? const Color.fromARGB(255, 208, 173, 214)
//             : Color.fromARGB(255, 239, 238, 240),
//         child: Row(
//           children: [
//             Container(
//               width: 120.0,
//               height: 120.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(
//                   10.0,
//                 ),
//                 image: DataList["urlToImage"] != null
//                     ? DecorationImage(
//                         image: NetworkImage(DataList["urlToImage"]),
//                         fit: BoxFit.cover,
//                       )
//                     : DecorationImage(
//                         image: AssetImage('assets/myimage.png'),
//                         fit: BoxFit.cover,
//                       ),
//               ),
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 children: [
//                   Text(
//                     "${DataList["title"]}",
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: GetMyDefTextStyle1(context),
//                   ),
//                   Text(
//                     "${DataList["publishedAt"]}",
//                     // style:Theme.of(context).textTheme.bodyMedium ,
//                     style: TextStyle(
//                       color: NewsAppCubit.get(context).isDark
//                           ? Color.fromARGB(236, 175, 109, 80)
//                           : Color.fromARGB(255, 150, 123, 123),
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );
// _launchURL(String url) async {
//   if (await canLaunchUrl(Uri.parse(url))) {
//     await launchUrl(Uri.parse(url));
//   } else {
//     throw 'Could not launch $url';
//   }
// }
