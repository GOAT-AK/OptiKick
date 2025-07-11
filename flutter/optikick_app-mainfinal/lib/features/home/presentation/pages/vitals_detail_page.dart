import 'package:flutter/material.dart';

class VitalsDetailPage extends StatelessWidget {
  const VitalsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Understanding Your Vitals',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          // Top image with navy background
          Container(
            color: Colors.blue.shade900,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/vits.png',
              height: 200,
              fit: BoxFit.contain,
            ),
          ),

          // Article text
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Understanding Your Vitals',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'If you\'ve heard the term "vitals" before, it may have been at the doctor\'s when they checked your vital signs. Vital signs are a set of very specific measurements — such as heart rate and temperature — doctors use to get an essential view into your overall health.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 16),
                Text(
                  'Outside the doctor\'s, people are using wearable devices that take more frequent measurements of even more metrics. With the right set and frequency of measurements, people are able to get a sense of how they\'re doing from day to day.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 16),
                Text(
                  'It\'s often best to measure these metrics at night because that provides the most consistent, comparable data. If you wear Apple Watch to sleep, it can track these metrics for you.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 16),
                Text(
                  'We all know what it\'s like to wake up and feel a little off. Metrics like heart rate, respiratory rate and wrist temperature can help you get a sense of why because they often change when there\'s something worth paying attention to.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 24),
                Text(
                  'What kinds of factors can affect these measurements?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Many factors can cause an increase or decrease in your metrics. A common one is getting sick. For example, if you catch a cold, your heart often beats faster while you sleep to help your body fight off the infection.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 16),
                Text(
                  'Factors can be something you\'ve done or something in your environment — like drinking alcohol, recovering from exercise, or hormonal changes. Sometimes, multiple factors affect a single measurement.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 24),
                Text(
                  'When to pay attention to a change',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Because you\'re looking for short-term changes in these metrics, it helps to compare last night\'s measurement to your recent average. That baseline helps identify when something is an outlier.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 8),
                Text(
                  'Typically, most measurements will be in range. That\'s a good sign. When one is out of range, that\'s worth noticing — especially if several metrics are out of range at once.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 24),
                Text(
                  'How to use this information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Knowing when your metrics are off can help you reflect on your environment and lifestyle. For example:\n\n'
                      '• An athlete might take a rest day if their heart rate is high after training.\n'
                      '• You might prioritize sleep after travel if your oxygen level is low.\n\n'
                      'Even if you feel fine, out-of-range data can offer insight. The Vitals app helps you understand how different factors interact.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 24),
                Text(
                  'A final note',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Vitals is not meant to diagnose illness. If you\'re concerned about a health change, always consult a doctor.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),

                SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
