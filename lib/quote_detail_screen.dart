import 'package:flutter/material.dart';
import 'quotes_data.dart';
import 'app_colors.dart';

/// Screen displaying detailed information about a quote and its author
class QuoteDetailScreen extends StatelessWidget {
  final Quote quote;

  const QuoteDetailScreen({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: CustomScrollView(
          slivers: [
            //  image at the top
            SliverAppBar(
              expandedHeight: 300,
              flexibleSpace: Hero(
                tag: quote.id,
                child: AspectRatio(
                  aspectRatio: 1, // Square image container
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                    child: Image.asset(
                      quote.imagePath,
                      fit: BoxFit.cover, // Maintain aspect ratio
                      errorBuilder: (context, error, stackTrace) => Container(
                        // Fallback for missing images
                        color: Colors.grey[800],
                        child: const Center(
                          child: Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Content below the image
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailSection('Quote Context', quote.details),
                    _buildDetailSection(
                        'About ${quote.author}', quote.authorBio),
                    if (quote.year != null)
                      _buildDetailSection('Year', quote.year!),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds a detail section with title and content
  Widget _buildDetailSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const Divider(
            color: Colors.white24,
            height: 30,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
