# Example: List Customers

This example demonstrates how to use the Stripe API client to list customers from your Stripe account.

## Setup

1. Navigate to the example directory:
   ```bash
   cd example
   ```

2. Install dependencies:
   ```bash
   dart pub get
   ```

3. Create a `.env` file in the project root (parent directory):
   ```bash
   cp ../.env.example ../.env
   ```

4. Edit `../.env` and add your Stripe API key:
   ```
   STRIPE_API_KEY=sk_test_your_actual_api_key_here
   ```
   
   You can get your API key from the [Stripe Dashboard](https://dashboard.stripe.com/apikeys).

## Running the Example

From the example directory:
```bash
dart run list_customers.dart
```

Or from the project root:
```bash
cd example && dart run list_customers.dart
```

## What This Example Does

1. Loads the Stripe API key from the `.env` file
2. Creates a Stripe client with [createStripeClient], which configures authentication and form serialization for Stripe’s API
3. Fetches and displays a list of customers from your Stripe account

## Customization

You can modify this example to:
- Create new customers
- Update customer information
- Access other Stripe API endpoints
- Add error handling for specific error types

See the [Stripe API documentation](https://stripe.com/docs/api) for available endpoints and operations.
