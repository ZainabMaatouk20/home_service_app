// File: service_provider.dart

// Class to represent a service provider
class ServiceProvider {
  String name; // Name of the provider
  String profession; // Profession like plumber, electrician, or carpenter
  String description; // Short description of their service
  String phone; // Contact number
  bool isIndividual; // True if provider is an individual, false if a company

  // Constructor
  ServiceProvider({
    required this.name,
    required this.profession,
    required this.description,
    required this.phone,
    required this.isIndividual,
  });

  // Method to display provider details in a readable format
  @override
  String toString() {
    return '''
$name
$phone
$description
''';
  }
}

// List of service providers
List<ServiceProvider> providers = [
  ServiceProvider(
    name: 'EEE EEE',
    profession: 'Plumber',
    description: 'Best plumber service in Nabatieh',
    phone: '07122333',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'FixIt Plumbing Co.',
    profession: 'Plumber',
    description: 'Commercial plumbing specialists',
    phone: '03122334',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'AAA Electricians',
    profession: 'Electrician',
    description: 'Certified electrician services',
    phone: '07122335',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'BBB BBB',
    profession: 'Electrician',
    description: 'Electrical solutions for homes and offices',
    phone: '08122336',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'DDD DDD',
    profession: 'Electrician',
    description: 'Reliable electrical repairs',
    phone: '09122337',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'HHH HHH',
    profession: 'Electrician',
    description: 'Industrial electrical maintenance',
    phone: '06122338',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'Craft Carpentry',
    profession: 'Carpenter',
    description: 'Custom woodwork solutions',
    phone: '05122339',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'WoodFix',
    profession: 'Carpenter',
    description: 'Best carpentry service in Beirut',
    phone: '02122340',
    isIndividual: true,
  ),
];
