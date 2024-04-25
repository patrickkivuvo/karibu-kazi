import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class EditJobDialog extends StatelessWidget {
  const EditJobDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              
              child: InkWell(
                onTap: () {
                   Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Center(
                      child: Icon(
                        Icons.edit,
                        color: TColor.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.012,
                    ),
                    const Flexible(
                      child: Text(
                        "Edit job details",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: InkWell(
                onTap: () {
                   Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Center(
                      child: Icon(
                        Icons.delete_outlined,
                        color: TColor.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.012,
                    ),
                    const Flexible(
                      child: Text(
                        "Remove this job",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
