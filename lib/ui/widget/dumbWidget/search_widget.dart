import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';
import 'package:revieuus/ui/widget/shared/images.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black);
    final styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(14, 0, 14, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        border: Border.all(color: Colors.white),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(4.h),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(4.h),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white, width: 0.5),
            borderRadius: BorderRadius.circular(4.h),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.white,
            ),
          ),
          prefixIcon: Icon(Icons.search),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
                  child: Icon(Icons.close, color: style.color),
                  onTap: () {
                    controller.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // added line
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 40.h,
                        width: 1.sp,
                        color: AppColors.textGrey,
                      ),
                      horizontalSpaceSmall_15,
                      InkWell(
                        // onTap: () {
                        //   print(model.searchcontroller.text);
                        // },
                        child: Container(
                            width: 20.sp, child: Image.asset(Images.filter)),
                      ),
                    ],
                  ),
                ),
          hintText: widget.hintText,
          hintStyle: style,
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }
}
