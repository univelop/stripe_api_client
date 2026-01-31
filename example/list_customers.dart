// ignore_for_file: avoid_print

import 'dart:io';
import 'package:dotenv/dotenv.dart';
import 'package:stripe_api_client/stripe_api_client.dart';
import 'package:stripe_api_client/v1/customers/customers_get_request_body.dart';

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

  // Create Stripe client (handles auth + form serialization for Stripe API)
  final client = createStripeClient(apiKey);

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
