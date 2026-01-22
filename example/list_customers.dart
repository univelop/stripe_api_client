import 'dart:io';
import 'package:dotenv/dotenv.dart';
import 'package:stripe_api_client/stripe_api_client.dart';
import 'package:stripe_api_client/v1/customers/customers_get_request_body.dart';
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';

/// Custom authentication provider that adds Stripe API key to Authorization header
class StripeApiKeyAuthenticationProvider implements AuthenticationProvider {
  final String apiKey;

  StripeApiKeyAuthenticationProvider(this.apiKey);

  @override
  Future<void> authenticateRequest(RequestInformation request,
      [Map<String, Object>? additionalAuthenticationContext]) async {
    // Stripe uses Bearer token authentication
    // Headers is a Map-like structure with a put method
    request.headers.put('Authorization', 'Bearer $apiKey');
  }
}

void main() async {
  // Load environment variables from .env file
  final env = DotEnv(includePlatformEnvironment: true)..load();

  // Get Stripe API key from environment
  final apiKey = env['STRIPE_API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    print('Error: STRIPE_API_KEY not found in .env file');
    print('Please create a .env file with: STRIPE_API_KEY=sk_test_...');
    exit(1);
  }

  print('Initializing Stripe client...');

  // Create authentication provider with API key
  final authProvider = StripeApiKeyAuthenticationProvider(apiKey);

  // Create request adapter
  final requestAdapter = DefaultRequestAdapter(authProvider: authProvider);

  // Initialize Stripe client
  final client = StripeClient(requestAdapter);

  try {
    print('Fetching customers...');

    // List customers
    final response = await client.v1.customers.getAsync(
      CustomersGetRequestBody(),
      (config) {
        // Additional request configuration can be added here if needed
      },
    );

    if (response != null && response.data != null) {
      final customers = response.data!.toList();
      print('\nFound ${customers.length} customer(s):\n');
      for (final customer in customers) {
        print('Customer ID: ${customer.id}');
        print('Email: ${customer.email ?? 'N/A'}');
        print('Created: ${customer.created}');
        print('---');
      }
    } else {
      print('No customers found.');
    }
  } catch (e) {
    print('Error fetching customers: $e');
    exit(1);
  }
}
