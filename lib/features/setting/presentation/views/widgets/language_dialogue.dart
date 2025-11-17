import 'package:flutter/material.dart';

class LanguageDialog extends StatefulWidget {
  @override
  _LanguageDialogState createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  String selectedLanguage = 'Arabic'; // Set default to Arabic as in Figma

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:
          Colors.transparent, // Make the dialog background transparent
      elevation: 0, // Remove default shadow
      child: Material(
        // Wrap content in Material to control its background color
        color: Colors.white, // Explicitly set background to white
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select Language', // Added title as in Figma (implied)
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _buildLanguageOption('العربية', '🇸🇦', 'Arabic'),
                SizedBox(height: 12),
                _buildLanguageOption('English', '🇺🇸', 'English'),
                SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, selectedLanguage);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2D5F3F), // Primary green color
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0, // No shadow for flat look
                    ),
                    child: Text(
                      'Apply',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Close',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageOption(String label, String flag, String value) {
    bool isSelected = selectedLanguage == value;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = value;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? Color(0xFFE6F0E9)
              : Colors
                    .white, // Light green background when selected, white otherwise
          border: Border.all(
            color: isSelected
                ? Color(0xFF2D5F3F)
                : Colors
                      .grey
                      .shade300, // Green border when selected, light grey otherwise
            width: isSelected ? 1.5 : 1,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? Color(0xFF2D5F3F)
                      : Colors.grey, // Green check circle border
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Icon(
                        Icons.check,
                        size: 16,
                        color: Color(0xFF2D5F3F),
                      ), // Green check icon
                    )
                  : null,
            ),
            SizedBox(width: 12),
            Text(flag, style: TextStyle(fontSize: 24)),
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                color: isSelected ? Color(0xFF2D5F3F) : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// استخدام الـ Dialog:
void showLanguageDialog(BuildContext context) {
  showDialog(context: context, builder: (context) => LanguageDialog());
}
