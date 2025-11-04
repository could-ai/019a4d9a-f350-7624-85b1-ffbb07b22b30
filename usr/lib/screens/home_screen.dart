import 'package:flutter/material.dart';
import 'package:couldai_user_app/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png'), // Placeholder for App Logo
        ),
        title: const Text('Fast Earn'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(Icons.monetization_on, color: AppColors.accentColor),
                const SizedBox(width: 4),
                const Text('1234', style: TextStyle(color: AppColors.accentColor, fontSize: 16)), // Placeholder
                const SizedBox(width: 16),
                const Icon(Icons.diamond, color: AppColors.accentColor),
                const SizedBox(width: 4),
                const Text('56', style: TextStyle(color: AppColors.accentColor, fontSize: 16)), // Placeholder
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildEarnCard(context, 'Spin Wheel', 'Spin to win coins', Icons.casino),
            const SizedBox(height: 16),
            _buildEarnCard(context, 'Scratch Card', 'Scratch and earn', Icons.money),
            const SizedBox(height: 16),
            _buildEarnCard(context, 'Play Game', 'Match emojis for rewards', Icons.emoji_emotions),
            const SizedBox(height: 16),
            _buildEarnCard(context, 'Mega Offer', 'Complete tasks for gems', Icons.star),
            const SizedBox(height: 16),
            _buildEarnCard(context, 'Offer Wall', 'Explore more offers', Icons.view_list),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.person_add),
              label: const Text('Refer & Earn'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              icon: const Icon(Icons.rate_review, color: AppColors.accentColor),
              label: const Text('Rate Us', style: TextStyle(color: AppColors.accentColor)),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.accentColor),
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEarnCard(BuildContext context, String title, String subtitle, IconData icon) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: AppColors.accentColor, width: 1),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppColors.accentColor, size: 40),
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
        trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.accentColor),
        onTap: () {
          // Navigate to respective screen
        },
      ),
    );
  }
}
