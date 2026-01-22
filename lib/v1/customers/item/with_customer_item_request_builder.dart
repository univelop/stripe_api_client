// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/customer.dart';
import '../../../models/deleted_customer.dart';
import '../../../models/error.dart';
import './balance_transactions/balance_transactions_request_builder.dart';
import './bank_accounts/bank_accounts_request_builder.dart';
import './cards/cards_request_builder.dart';
import './cash_balance/cash_balance_request_builder.dart';
import './cash_balance_transactions/cash_balance_transactions_request_builder.dart';
import './discount/discount_request_builder.dart';
import './funding_instructions/funding_instructions_request_builder.dart';
import './payment_methods/payment_methods_request_builder.dart';
import './sources/sources_request_builder.dart';
import './subscriptions/subscriptions_request_builder.dart';
import './tax_ids/tax_ids_request_builder.dart';
import './with_customer_delete_request_body.dart';
import './with_customer_get_request_body.dart';
import './with_customer_get_response.dart';
import './with_customer_item_request_builder_get_query_parameters.dart';
import './with_customer_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}
class WithCustomerItemRequestBuilder
    extends BaseRequestBuilder<WithCustomerItemRequestBuilder> {
  ///  The balance_transactions property
  BalanceTransactionsRequestBuilder get balanceTransactions {
    return BalanceTransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The bank_accounts property
  BankAccountsRequestBuilder get bankAccounts {
    return BankAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The cards property
  CardsRequestBuilder get cards {
    return CardsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The cash_balance property
  CashBalanceRequestBuilder get cashBalance {
    return CashBalanceRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The cash_balance_transactions property
  CashBalanceTransactionsRequestBuilder get cashBalanceTransactions {
    return CashBalanceTransactionsRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The discount property
  DiscountRequestBuilder get discount {
    return DiscountRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The funding_instructions property
  FundingInstructionsRequestBuilder get fundingInstructions {
    return FundingInstructionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payment_methods property
  PaymentMethodsRequestBuilder get paymentMethods {
    return PaymentMethodsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The sources property
  SourcesRequestBuilder get sources {
    return SourcesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The subscriptions property
  SubscriptionsRequestBuilder get subscriptions {
    return SubscriptionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The tax_ids property
  TaxIdsRequestBuilder get taxIds {
    return TaxIdsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithCustomerItemRequestBuilder clone() {
    return WithCustomerItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithCustomerItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCustomerItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/customers/{customer}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithCustomerItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCustomerItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/customers/{customer}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Permanently deletes a customer. It cannot be undone. Also immediately cancels any active subscriptions on the customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedCustomer?> deleteAsync(WithCustomerDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedCustomer>(requestInfo,
        DeletedCustomer.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a Customer object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<WithCustomerGetResponse?> getAsync(WithCustomerGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCustomerItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<WithCustomerGetResponse>(requestInfo,
        WithCustomerGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specified customer by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if you pass the <strong>source</strong> parameter, that becomes the customer’s active source (e.g., a card) to be used for all charges in the future. When you update a customer to a new valid card source by passing the <strong>source</strong> parameter: for each of the customer’s current subscriptions, if the subscription bills automatically and is in the <code>past_due</code> state, then the latest open invoice for the subscription with automatic collection enabled will be retried. This retry will not count as an automatic retry, and will not affect the next regularly scheduled payment for the invoice. Changing the <strong>default_source</strong> for a customer will not trigger this behavior.</p><p>This request accepts mostly the same arguments as the customer creation call.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Customer?> postAsync(WithCustomerPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Customer>(
        requestInfo, Customer.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Permanently deletes a customer. It cannot be undone. Also immediately cancels any active subscriptions on the customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithCustomerDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves a Customer object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithCustomerGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCustomerItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithCustomerItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithCustomerItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specified customer by setting the values of the parameters passed. Any parameters not provided will be left unchanged. For example, if you pass the <strong>source</strong> parameter, that becomes the customer’s active source (e.g., a card) to be used for all charges in the future. When you update a customer to a new valid card source by passing the <strong>source</strong> parameter: for each of the customer’s current subscriptions, if the subscription bills automatically and is in the <code>past_due</code> state, then the latest open invoice for the subscription with automatic collection enabled will be retried. This retry will not count as an automatic retry, and will not affect the next regularly scheduled payment for the invoice. Changing the <strong>default_source</strong> for a customer will not trigger this behavior.</p><p>This request accepts mostly the same arguments as the customer creation call.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithCustomerPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
