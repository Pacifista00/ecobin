// File: lib/widgets/trash_bin_card.dart

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TrashBinCard extends StatefulWidget {
  final Map<String, dynamic> organicData;
  final Map<String, dynamic> anorganicData;

  const TrashBinCard({
    required this.organicData,
    required this.anorganicData,
    super.key,
  });

  @override
  State<TrashBinCard> createState() => _TrashBinCardState();
}

class _TrashBinCardState extends State<TrashBinCard> {
  String _selectedType = 'Organik';

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> displayedData =
        _selectedType == 'Organik' ? widget.organicData : widget.anorganicData;

    final int fillPercentage = displayedData['fillPercentage'];
    final String binName = displayedData['binName'];
    final String status = displayedData['status'];
    final bool isFull = fillPercentage >= 100;

    List<Color> progressColors;
    if (fillPercentage >= 90) {
      progressColors = [Colors.redAccent, Colors.red];
    } else if (fillPercentage >= 75) {
      progressColors = [Colors.yellow, Colors.amber];
    } else if (fillPercentage >= 50) {
      progressColors = [Colors.lime, Colors.lime];
    } else {
      progressColors = [Colors.lightGreen, Colors.green];
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 15.0,
            percent: fillPercentage / 100,
            linearGradient: LinearGradient(colors: progressColors),
            animation: true,
            animationDuration: 1000,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              "$fillPercentage%",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            backgroundColor: Colors.grey[300]!,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedType = 'Organik';
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color:
                              _selectedType == 'Organik'
                                  ? const Color(0xFF98CD00)
                                  : Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Organik',
                          style: TextStyle(
                            fontSize: 12,
                            color:
                                _selectedType == 'Organik'
                                    ? Colors.white
                                    : Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedType = 'Anorganik';
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color:
                              _selectedType == 'Anorganik'
                                  ? const Color(0xFF98CD00)
                                  : Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Anorganik',
                          style: TextStyle(
                            fontSize: 12,
                            color:
                                _selectedType == 'Anorganik'
                                    ? Colors.white
                                    : Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  binName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  status,
                  style: TextStyle(
                    fontSize: 14,
                    color: isFull ? Colors.red : Colors.black54,
                    fontWeight: isFull ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: isFull ? () {} : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isFull ? const Color(0xFFF9C70E) : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Lihat Lokasi",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
