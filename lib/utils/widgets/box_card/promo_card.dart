import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/colors.dart';

class PromoCard extends StatefulWidget {
  final String label;
  final AssetImage images;

  const PromoCard({
    super.key,
    required this.label,
    required this.images
    });

  @override
  _PromoCardState createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  Timer? _timer;
  int _timeInSeconds = 3661;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_timeInSeconds > 0) {
        setState(() {
          _timeInSeconds--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String get hours => (_timeInSeconds ~/ 3600).toString().padLeft(2, '0');
  String get minutes => ((_timeInSeconds % 3600) ~/ 60).toString().padLeft(2, '0');
  String get seconds => (_timeInSeconds % 60).toString().padLeft(2, '0');

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        image: DecorationImage(
          image: widget.images,
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.backgroundColor,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Hours
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding: const EdgeInsets.all(8),
                child: Text(
                  hours, // Dynamically updated hours
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkColor,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Colon separator
              const Text(
                ':',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.backgroundColor,
                ),
              ),
              const SizedBox(width: 8),
              // Minutes
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding: const EdgeInsets.all(8),
                child: Text(
                  minutes,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkColor,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Colon separator
              const Text(
                ':',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.backgroundColor,
                ),
              ),
              const SizedBox(width: 8),
              // Seconds
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding: const EdgeInsets.all(8),
                child: Text(
                  seconds,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
