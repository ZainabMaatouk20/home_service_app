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

// List of service providers in Lebanon

List<ServiceProvider> providers = [
  // Individuals (isIndividual: true)
  ServiceProvider(
    name: 'John Haddad',
    profession: 'Plumber',
    description: 'Freelance plumber offering quick fixes and installations.',
    phone: '+961 71 223344',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Ali Mansour',
    profession: 'Electrician',
    description: 'Certified electrician specializing in residential repairs.',
    phone: '+961 76 334455',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Karim Woodworks',
    profession: 'Carpenter',
    description: 'Custom wood furniture and repairs for homes.',
    phone: '+961 70 112233',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'George Mikhael',
    profession: 'Plumber',
    description: 'Experienced plumber handling leak repairs and pipe installations.',
    phone: '+961 78 445566',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'Hussein Fawaz',
    profession: 'Carpenter',
    description: 'Handcrafted wood designs and home renovations.',
    phone: '+961 71 556677',
    isIndividual: true,
  ),

  // Companies (isIndividual: false)
  ServiceProvider(
    name: 'FixIt Plumbing Co.',
    profession: 'Plumber',
    description: 'Leading plumbing company for commercial and industrial needs.',
    phone: '+961 1 334455',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'ElectroFix Lebanon',
    profession: 'Electrician',
    description: 'Professional electrical services for homes and businesses.',
    phone: '+961 1 445566',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'Crafted Carpentry SARL',
    profession: 'Carpenter',
    description: 'Specialized in custom wood furniture and interior design.',
    phone: '+961 4 556677',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'Saccal Enterprises SAL',
    profession: 'Electrician',
    description: 'Electromechanical services and power solutions.',
    phone: '+961 1 667788',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'WoodMasters Ltd.',
    profession: 'Carpenter',
    description: 'Providing premium woodworks for homes and offices.',
    phone: '+961 5 778899',
    isIndividual: false,
  ),
];
