import 'package:e_learing/constants.dart';
import 'package:e_learing/core/models/course_model.dart';
import 'package:e_learing/core/widgets/custom_alert.dart';
import 'package:e_learing/core/widgets/custom_button.dart';
import 'package:e_learing/core/widgets/loading_dialog.dart';
import 'package:e_learing/features/admin/manager/admin_cubit/admin_cubit.dart';
import 'package:e_learing/features/admin/views/widgets/add_lesson_list_view.dart';
import 'package:e_learing/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:e_learing/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddCourseView extends StatefulWidget {
  const AddCourseView({super.key});
  static String id = 'AddCourseView';

  @override
  State<AddCourseView> createState() => _AddCourseViewState();
}

class _AddCourseViewState extends State<AddCourseView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  final TextEditingController createorController = TextEditingController();
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  final TextEditingController priceController = TextEditingController();
  List<TextEditingController> urlControllers = [];

  String? image, category;
  bool isUploading = false; // New state to track upload status

  bool loaded = false;
  @override
  void dispose() {
    titleController.dispose();
    subTitleController.dispose();
    createorController.dispose();
    priceController.dispose();
    for (var controller in urlControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void addUrlField() {
    setState(() {
      urlControllers.add(TextEditingController());
    });
  }

  Future<void> uploadImage() async {
    setState(() {
      isUploading = true; // Set loading indicator to true
    });

    // Assume uploadImage is a function that uploads the image
    image = await BlocProvider.of<AdminCubit>(context)
        .uploadImage(titleController.text);

    setState(() {
      isUploading = false; // Set loading indicator to false
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return BlocListener<AdminCubit, AdminState>(
      listener: (context, state) {
        if (state is AdminLoading) {
          showLoadingDialog(context);
        } else if (state is AdminSuccess) {
          clearFieldsMethod();
          setState(() {
            image = null;
          });
          Navigator.pop(context);
        } else if (state is AdminFailure) {
          showCustomAlert(
              context: context,
              type: AlertType.error,
              title: s.error_title,
              description: state.errMessage,
              onPressed: () {},
              actionTitle: s.ok);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(s.add_course),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              children: [
                CustomTextFrom(
                  label: s.title,
                  hint: s.title,
                  controller: titleController,
                ),
                CustomTextFrom(
                  label: s.subTitle,
                  hint: s.subTitle,
                  controller: subTitleController,
                ),
                CustomTextFrom(
                  label: s.price,
                  hint: s.price,
                  controller: priceController,
                ),
                CustomTextFrom(
                  label: s.creator,
                  hint: s.creator,
                  controller: createorController,
                ),
                const SizedBox(height: 15),
                AddLessonListView(urlControllers: urlControllers, s: s),
                CustomButton(
                  label: s.add_lesson,
                  color: orangeColor,
                  txtColor: Colors.white,
                  onTap: addUrlField,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton.icon(
                  onPressed: () async {
                    if (image == null) {
                      await uploadImage();
                    }
                  },
                  icon: isUploading
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.upload),
                  label: Text(image == null ? 'Upload Image' : 'uploaded done'),
                ),
                CustomButton(
                  label: s.send,
                  color: orangeColor,
                  txtColor: Colors.white,
                  onTap: () async {
                    if (fromKey.currentState!.validate()) {
                      List<String> urls = urlControllers
                          .map((controller) => controller.text)
                          .toList();

                      await BlocProvider.of<AdminCubit>(context).addCourse(
                          courseModel: CourseModel(
                        urls, // Passing the URLs list
                        priceController.text,
                        createorController.text,
                        titleController.text,
                        subTitleController.text,
                        image!,
                      ));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clearFieldsMethod() {
    titleController.clear();
    priceController.clear();
    subTitleController.clear();
    createorController.clear();
    for (var controller in urlControllers) {
      controller.clear();
    }
    setState(() {
      urlControllers.clear(); // Clear the URL fields as well
    });
  }
}
