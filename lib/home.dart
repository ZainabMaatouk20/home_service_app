// File: home.dart
import 'package:flutter/material.dart';
import 'service_provider.dart';

// Main widget for the application
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedType = 'Any'; // Default provider type
  String selectedProfession = 'Plumber'; // Default profession
  ServiceProvider? selectedProvider; // Selected provider for display

  @override
  Widget build(BuildContext context) {
    // Filter the list of providers based on user selection
    List<ServiceProvider> filteredProviders = providers.where((provider) {
      if (selectedType == 'Individual' && !provider.isIndividual) return false;
      if (selectedType == 'Company' && provider.isIndividual) return false;
      if (provider.profession != selectedProfession) return false;
      return true;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Providers'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Radio buttons for selecting provider type
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                      value: 'Individual',
                      groupValue: selectedType,
                      onChanged: (value) {
                        setState(() {
                          selectedType = value.toString();
                          selectedProvider = null;
                        });
                      },
                    ),
                    const Text('Individual'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Company',
                      groupValue: selectedType,
                      onChanged: (value) {
                        setState(() {
                          selectedType = value.toString();
                          selectedProvider = null;
                        });
                      },
                    ),
                    const Text('Company'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Any',
                      groupValue: selectedType,
                      onChanged: (value) {
                        setState(() {
                          selectedType = value.toString();
                          selectedProvider = null;
                        });
                      },
                    ),
                    const Text('Any'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Dropdown for selecting profession
            const Text('Select Profession:'),
            DropdownButton<String>(
              value: selectedProfession,
              items: ['Plumber', 'Electrician', 'Carpenter']
                  .map((profession) => DropdownMenuItem(
                        value: profession,
                        child: Text(profession),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedProfession = value!;
                  selectedProvider = null;
                });
              },
            ),
            const SizedBox(height: 16),

            // Dropdown for selecting provider
            const Text('Select Provider:'),
            DropdownButton<ServiceProvider?>(
              value: selectedProvider,
              items: filteredProviders.map((provider) {
                return DropdownMenuItem<ServiceProvider?>(
                  value: provider,
                  child: Text(provider.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedProvider = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Display selected provider details
            if (selectedProvider != null)
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    selectedProvider.toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Entry point for the application
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
