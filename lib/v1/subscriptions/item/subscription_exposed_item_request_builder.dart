// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/subscription.dart';
import './discount/discount_request_builder.dart';
import './migrate/migrate_request_builder.dart';
import './resume/resume_request_builder.dart';
import './subscription_exposed_delete_request_body.dart';
import './subscription_exposed_get_request_body.dart';
import './subscription_exposed_item_request_builder_get_query_parameters.dart';
import './subscription_exposed_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\subscriptions\{subscription_exposed_-id}
class SubscriptionExposedItemRequestBuilder
    extends BaseRequestBuilder<SubscriptionExposedItemRequestBuilder> {
  ///  The discount property
  DiscountRequestBuilder get discount {
    return DiscountRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The migrate property
  MigrateRequestBuilder get migrate {
    return MigrateRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The resume property
  ResumeRequestBuilder get resume {
    return ResumeRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SubscriptionExposedItemRequestBuilder clone() {
    return SubscriptionExposedItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [SubscriptionExposedItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionExposedItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscriptions/{subscription_exposed_%2Did}{?expand*}",
            pathParameters);

  /// Instantiates a new [SubscriptionExposedItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionExposedItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscriptions/{subscription_exposed_%2Did}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Cancels a customer’s subscription immediately. The customer won’t be charged again for the subscription. After it’s canceled, you can no longer update the subscription or its <a href="/metadata">metadata</a>.</p><p>Any pending invoice items that you’ve created are still charged at the end of the period, unless manually <a href="#delete_invoiceitem">deleted</a>. If you’ve set the subscription to cancel at the end of the period, any pending prorations are also left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations are removed if <code>invoice_now</code> and <code>prorate</code> are both set to true.</p><p>By default, upon subscription cancellation, Stripe stops automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Subscription?> deleteAsync(SubscriptionExposedDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Subscription>(
        requestInfo, Subscription.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the subscription with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Subscription?> getAsync(SubscriptionExposedGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionExposedItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Subscription>(
        requestInfo, Subscription.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an existing subscription to match the specified parameters.When changing prices or quantities, we optionally prorate the price we charge next month to make up for any price changes.To preview how the proration is calculated, use the <a href="/docs/api/invoices/create_preview">create preview</a> endpoint.</p><p>By default, we prorate subscription changes. For example, if a customer signs up on May 1 for a <currency>100</currency> price, they’ll be billed <currency>100</currency> immediately. If on May 15 they switch to a <currency>200</currency> price, then on June 1 they’ll be billed <currency>250</currency> (<currency>200</currency> for a renewal of her subscription, plus a <currency>50</currency> prorating adjustment for half of the previous month’s <currency>100</currency> difference). Similarly, a downgrade generates a credit that is applied to the next invoice. We also prorate when you make quantity changes.</p><p>Switching prices does not normally change the billing date or generate an immediate charge unless:</p><ul><li>The billing interval is changed (for example, from monthly to yearly).</li><li>The subscription moves from free to paid.</li><li>A trial starts or ends.</li></ul><p>In these cases, we apply a credit for the unused time on the previous price, immediately charge the customer using the new price, and reset the billing date. Learn about how <a href="/docs/billing/subscriptions/upgrade-downgrade#immediate-payment">Stripe immediately attempts payment for subscription changes</a>.</p><p>If you want to charge for an upgrade immediately, pass <code>proration_behavior</code> as <code>always_invoice</code> to create prorations, automatically invoice the customer for those proration adjustments, and attempt to collect payment. If you pass <code>create_prorations</code>, the prorations are created but not automatically invoiced. If you want to bill the customer for the prorations before the subscription’s renewal date, you need to manually <a href="/docs/api/invoices/create">invoice the customer</a>.</p><p>If you don’t want to prorate, set the <code>proration_behavior</code> option to <code>none</code>. With this option, the customer is billed <currency>100</currency> on May 1 and <currency>200</currency> on June 1. Similarly, if you set <code>proration_behavior</code> to <code>none</code> when switching between different billing intervals (for example, from monthly to yearly), we don’t generate any credits for the old subscription’s unused time. We still reset the billing date and bill immediately for the new subscription.</p><p>Updating the quantity on a subscription many times in an hour may result in <a href="/docs/rate-limits">rate limiting</a>. If you need to bill for a frequently changing quantity, consider integrating <a href="/docs/billing/subscriptions/usage-based">usage-based billing</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Subscription?> postAsync(SubscriptionExposedPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Subscription>(
        requestInfo, Subscription.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Cancels a customer’s subscription immediately. The customer won’t be charged again for the subscription. After it’s canceled, you can no longer update the subscription or its <a href="/metadata">metadata</a>.</p><p>Any pending invoice items that you’ve created are still charged at the end of the period, unless manually <a href="#delete_invoiceitem">deleted</a>. If you’ve set the subscription to cancel at the end of the period, any pending prorations are also left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations are removed if <code>invoice_now</code> and <code>prorate</code> are both set to true.</p><p>By default, upon subscription cancellation, Stripe stops automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      SubscriptionExposedDeleteRequestBody body,
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

  /// <p>Retrieves the subscription with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      SubscriptionExposedGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionExposedItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<SubscriptionExposedItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => SubscriptionExposedItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates an existing subscription to match the specified parameters.When changing prices or quantities, we optionally prorate the price we charge next month to make up for any price changes.To preview how the proration is calculated, use the <a href="/docs/api/invoices/create_preview">create preview</a> endpoint.</p><p>By default, we prorate subscription changes. For example, if a customer signs up on May 1 for a <currency>100</currency> price, they’ll be billed <currency>100</currency> immediately. If on May 15 they switch to a <currency>200</currency> price, then on June 1 they’ll be billed <currency>250</currency> (<currency>200</currency> for a renewal of her subscription, plus a <currency>50</currency> prorating adjustment for half of the previous month’s <currency>100</currency> difference). Similarly, a downgrade generates a credit that is applied to the next invoice. We also prorate when you make quantity changes.</p><p>Switching prices does not normally change the billing date or generate an immediate charge unless:</p><ul><li>The billing interval is changed (for example, from monthly to yearly).</li><li>The subscription moves from free to paid.</li><li>A trial starts or ends.</li></ul><p>In these cases, we apply a credit for the unused time on the previous price, immediately charge the customer using the new price, and reset the billing date. Learn about how <a href="/docs/billing/subscriptions/upgrade-downgrade#immediate-payment">Stripe immediately attempts payment for subscription changes</a>.</p><p>If you want to charge for an upgrade immediately, pass <code>proration_behavior</code> as <code>always_invoice</code> to create prorations, automatically invoice the customer for those proration adjustments, and attempt to collect payment. If you pass <code>create_prorations</code>, the prorations are created but not automatically invoiced. If you want to bill the customer for the prorations before the subscription’s renewal date, you need to manually <a href="/docs/api/invoices/create">invoice the customer</a>.</p><p>If you don’t want to prorate, set the <code>proration_behavior</code> option to <code>none</code>. With this option, the customer is billed <currency>100</currency> on May 1 and <currency>200</currency> on June 1. Similarly, if you set <code>proration_behavior</code> to <code>none</code> when switching between different billing intervals (for example, from monthly to yearly), we don’t generate any credits for the old subscription’s unused time. We still reset the billing date and bill immediately for the new subscription.</p><p>Updating the quantity on a subscription many times in an hour may result in <a href="/docs/rate-limits">rate limiting</a>. If you need to bill for a frequently changing quantity, consider integrating <a href="/docs/billing/subscriptions/usage-based">usage-based billing</a> instead.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      SubscriptionExposedPostRequestBody body,
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
