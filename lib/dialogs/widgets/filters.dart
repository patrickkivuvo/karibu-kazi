import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final double progress;

  ProgressWidget({required this.progress});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ProgressPainter(progress: progress),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final double progress;

  ProgressPainter({required this.progress});
@override
void paint(Canvas canvas, Size size) {
  final double width = size.width;
  final double height = size.height;

  final Paint bluePaint = Paint()..color = Colors.blue;
  final Paint greyPaint = Paint()..color = Colors.grey;
  final double circleRadius = 8.0;

  // Calculate the x-coordinate for the end of the blue line representing progress
  double progressX = progress * width;

  // Draw blue line representing progress from 0 to progressX
  canvas.drawLine(
    Offset(0, height / 2),
    Offset(progressX, height / 2),
    bluePaint,
  );

  // Draw grey line from progressX to end
  canvas.drawLine(
    Offset(progressX, height / 2),
    Offset(width, height / 2),
    greyPaint,
  );

  // Draw circles at 20, 30, 40, 50 km
  List<double> distances = [20, 30, 40, 50];
  distances.forEach((distance) {
    double x = distance / 50 * width;
    Paint paint = distance <= progress * 50 ? bluePaint : greyPaint;
    canvas.drawCircle(Offset(x, height / 2), circleRadius, paint);
  });
}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

