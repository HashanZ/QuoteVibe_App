import 'package:flutter/material.dart';
import 'dart:math'; // For Random()
import 'quotes_data.dart';
import 'quote_detail_screen.dart';
import 'app_colors.dart';

void main() {
  runApp(const MyApp());
}

/// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuoteVibe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          // Large text for quote content
          headlineLarge: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          // Body text for regular content
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
          // Title text for author names
          titleLarge: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      home: const QuoteScreen(),
    );
  }
}

/// Main screen displaying quotes and category selection
class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  // Current selected category
  String _selectedCategory = 'Motivational';

  // Currently displayed quote
  Quote? _currentQuote;

  bool _isLoading = false;

  // List of available categories
  final List<String> _categories = [
    'Motivational',
    'Wisdom',
    'Life',
    'Success',
    'Love',
    'Funny',
    'Technology',
    'Education'
  ];

  @override
  void initState() {
    super.initState();
    _fetchNewQuote(); // Fetch initial quote
  }

  /// Fetches a new random quote from the selected category
  Future<void> _fetchNewQuote() async {
    setState(() => _isLoading = true);

    // Filter quotes by selected category
    final categoryQuotes = List<Quote>.from(
      quotes.where((quote) => quote.category == _selectedCategory),
    );

    if (categoryQuotes.isNotEmpty) {
      final random = Random();
      // Ensure different quote from current one
      Quote newQuote;
      do {
        newQuote = categoryQuotes[random.nextInt(categoryQuotes.length)];
      } while (newQuote.id == _currentQuote?.id && categoryQuotes.length > 1);

      await Future.delayed(const Duration(milliseconds: 200));

      if (mounted) {
        setState(() {
          _currentQuote = newQuote;
          _isLoading = false;
        });
      }
    } else {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuoteVibe'),
        centerTitle: true,
        backgroundColor: AppColors.accentColor,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
        elevation: 4,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: Column(
          children: [
            _buildCategorySelector(), // Category dropdown
            Expanded(
              child: _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildQuoteCard(), // Display current quote
                        const SizedBox(height: 30),
                        _buildNewQuoteButton(), // New quote button
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the category selection dropdown
  Widget _buildCategorySelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25),
        ),
        child: DropdownButton<String>(
          value: _selectedCategory,
          dropdownColor: AppColors.primaryColor,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
          isExpanded: true,
          items: _categories.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
                  style: const TextStyle(color: Colors.white, fontSize: 16)),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() => _selectedCategory = newValue!);
            _fetchNewQuote(); // Refresh quotes on category change
          },
        ),
      ),
    );
  }

  /// Builds the quote card with animation
  Widget _buildQuoteCard() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      switchInCurve: Curves.easeInOutBack,
      switchOutCurve: Curves.easeInOutBack,
      child: _currentQuote == null
          ? const SizedBox.shrink()
          : GestureDetector(
              key: ValueKey<String>(_currentQuote!.id), // Force rebuild
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      QuoteDetailScreen(quote: _currentQuote!),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: AppColors.cardGradient,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.format_quote,
                              color: Colors.white.withOpacity(0.3), size: 40),
                          const SizedBox(height: 20),
                          Text(_currentQuote!.text,
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center),
                          const SizedBox(height: 25),
                          Text('- ${_currentQuote!.author}',
                              style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  /// Builds the "New Quote" button
  Widget _buildNewQuoteButton() {
    return ElevatedButton.icon(
      icon: const Icon(Icons.autorenew, color: Colors.white, size: 24),
      label: const Text(
        'New Quote',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accentColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
      ),
      onPressed: _fetchNewQuote,
    );
  }
}
