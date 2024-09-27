import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0, // No shadow
        title: Expanded(
          child: Row(
            children: [
              Image.asset(
                'assets/images/trading_buddy.png', // Logo at the top-left corner
                width: 240,
                height: 40,
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle notifications
            },
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile and Trading Account Info
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      child: Icon(Icons.person, color: Colors.white, size: 30),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roger Mark',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Mark.rog@gmail.com',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        // Handle refresh action
                      },
                      icon: Icon(Icons.refresh, color: Colors.white),
                    ),
                  ],
                ),
              ),

              // Balance and Connect Account Button
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$4,820',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle connect trading account action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Connect Trading Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Refer 3 Friends Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Refer Friends Container
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color:
                            Colors.brown[900], // Dark brown color for the card
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            'Refer 3 Friends, Get a free Membership',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),

                          // Referral Progress Row
                          Row(
                            children: [
                              // Circle with checkmark for first step
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(Icons.person,
                                    size: 30, color: Colors.brown[900]),
                              ),
                              Icon(Icons.check_circle,
                                  color: Colors.green, size: 20), // Checkmark

                              // Dashes between the numbers
                              Expanded(
                                child: Divider(
                                  color: Colors.white54,
                                  thickness: 2,
                                ),
                              ),
                              // Number 2
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 25,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              // Dashes between the numbers
                              Expanded(
                                child: Divider(
                                  color: Colors.white54,
                                  thickness: 2,
                                ),
                              ),
                              // Number 3
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 25,
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),

                              Expanded(
                                child: Divider(
                                  color: Colors.white54,
                                  thickness: 2,
                                ),
                              ),
                              // Trophy icon for the goal
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 25,
                                child: Icon(Icons.emoji_events,
                                    color: Colors.white, size: 30),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Referral Link Row
                          Row(
                            children: [
                              // Referral link text box
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 14),
                                  decoration: BoxDecoration(
                                    color: Colors.brown[
                                        800], // Darker brown background for the link box
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'akashx.com/rogermark',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),

                              // Copy icon button
                              IconButton(
                                onPressed: () {
                                  // Handle copy action here
                                },
                                icon: Icon(Icons.copy, color: Colors.white),
                              ),

                              // Share button
                              ElevatedButton(
                                onPressed: () {
                                  // Handle share action here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .orange, // Orange background for the share button
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Share',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Calculate Your Risk Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Calculate your risk',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Use the slider below to calculate what you could have made if you took every signal last week',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Insert the circular amount indicator here
                    Center(
                      child: Expanded(
                        child: Container(
                          width: 200,
                          height: 200,
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: CircularProgressIndicator(
                                  value: 0.7,
                                  strokeWidth: 12.0,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.orange),
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                              Center(
                                child: Text(
                                  '\$1.40',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.home, size: 30),
                SizedBox(height: 5), // Spacing between icon and text
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange, // Text color for the selected item
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.signal_cellular_alt, size: 30),
                SizedBox(height: 5),
                Text(
                  'Sessions',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey, // Text color for unselected items
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.notifications, size: 30),
                SizedBox(height: 5),
                Text(
                  'Trade Alerts',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey, // Text color for unselected items
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.touch_app, size: 30),
                SizedBox(height: 5),
                Text(
                  'Tap to Trade',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey, // Text color for unselected items
                  ),
                ),
              ],
            ),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed, // Required to show all icons
        currentIndex: 0, // Set the current index
        onTap: (int index) {
          // Handle navigation on tap
        },
      ),
    );
  }

  // Helper function to build referral steps
  Widget _buildReferralStep(int step, bool completed) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: completed ? Colors.green : Colors.grey,
          radius: 20,
          child: completed
              ? Icon(Icons.check, color: Colors.white)
              : Text(step.toString(), style: TextStyle(color: Colors.white)),
        ),
        SizedBox(height: 5),
        Text(
          step == 1 ? 'Complete' : 'Step $step',
          style: TextStyle(color: Colors.white54, fontSize: 12),
        ),
      ],
    );
  }
}

// Create a custom CircularAmountIndicator widget
class CircularAmountIndicator extends StatelessWidget {
  final double progress; // progress percentage
  final double amount; // Amount to display in the center

  CircularAmountIndicator({required this.progress, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Set the size of the circular indicator
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circular progress indicator
          CircularProgressIndicator(
            value: progress, // Set progress value
            strokeWidth: 8,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
          ),
          // Amount Text
          Text(
            '\$${amount.toStringAsFixed(2)}',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
