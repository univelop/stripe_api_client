// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_automatic_tax.dart';
import './create_preview_post_request_body_customer_details.dart';
import './create_preview_post_request_body_discounts.dart';
import './create_preview_post_request_body_invoice_items.dart';
import './create_preview_post_request_body_issuer.dart';
import './create_preview_post_request_body_on_behalf_of.dart';
import './create_preview_post_request_body_preview_mode.dart';
import './create_preview_post_request_body_schedule_details.dart';
import './create_preview_post_request_body_subscription_details.dart';

/// auto generated
class CreatePreviewPostRequestBody implements Parsable {
  ///  Settings for automatic tax lookup for this invoice preview.
  CreatePreviewPostRequestBodyAutomaticTax? automaticTax;

  ///  The currency to preview this invoice in. Defaults to that of `customer` if not specified.
  String? currency;

  ///  The identifier of the customer whose upcoming invoice you're retrieving. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
  String? customer;

  ///  The identifier of the account representing the customer whose upcoming invoice you're retrieving. If `automatic_tax` is enabled then one of `customer`, `customer_account`, `customer_details`, `subscription`, or `schedule` must be set.
  String? customerAccount;

  ///  Details about the customer you want to invoice or overrides for an existing customer. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
  CreatePreviewPostRequestBodyCustomerDetails? customerDetails;

  ///  The coupons to redeem into discounts for the invoice preview. If not specified, inherits the discount from the subscription or customer. This works for both coupons directly applied to an invoice and coupons applied to a subscription. Pass an empty string to avoid inheriting any discounts.
  CreatePreviewPostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  List of invoice items to add or update in the upcoming invoice preview (up to 250).
  Iterable<CreatePreviewPostRequestBodyInvoiceItems>? invoiceItems;

  ///  The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
  CreatePreviewPostRequestBodyIssuer? issuer;

  ///  The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
  CreatePreviewPostRequestBodyOnBehalfOf? onBehalfOf;

  ///  Customizes the types of values to include when calculating the invoice. Defaults to `next` if unspecified.
  CreatePreviewPostRequestBodyPreviewMode? previewMode;

  ///  The identifier of the schedule whose upcoming invoice you'd like to retrieve. Cannot be used with subscription or subscription fields.
  String? schedule;

  ///  The schedule creation or modification params to apply as a preview. Cannot be used with `subscription` or `subscription_` prefixed fields.
  CreatePreviewPostRequestBodyScheduleDetails? scheduleDetails;

  ///  The identifier of the subscription for which you'd like to retrieve the upcoming invoice. If not provided, but a `subscription_details.items` is provided, you will preview creating a subscription with those items. If neither `subscription` nor `subscription_details.items` is provided, you will retrieve the next upcoming invoice from among the customer's subscriptions.
  String? subscription;

  ///  The subscription creation or modification params to apply as a preview. Cannot be used with `schedule` or `schedule_details` fields.
  CreatePreviewPostRequestBodySubscriptionDetails? subscriptionDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreatePreviewPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<CreatePreviewPostRequestBodyAutomaticTax>(
            CreatePreviewPostRequestBodyAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['customer_details'] = (node) => customerDetails =
        node.getObjectValue<CreatePreviewPostRequestBodyCustomerDetails>(
            CreatePreviewPostRequestBodyCustomerDetails
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<CreatePreviewPostRequestBodyDiscounts>(
            CreatePreviewPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['invoice_items'] = (node) => invoiceItems = node
        .getCollectionOfObjectValues<CreatePreviewPostRequestBodyInvoiceItems>(
            CreatePreviewPostRequestBodyInvoiceItems
                .createFromDiscriminatorValue);
    deserializerMap['issuer'] = (node) => issuer =
        node.getObjectValue<CreatePreviewPostRequestBodyIssuer>(
            CreatePreviewPostRequestBodyIssuer.createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<CreatePreviewPostRequestBodyOnBehalfOf>(
            CreatePreviewPostRequestBodyOnBehalfOf
                .createFromDiscriminatorValue);
    deserializerMap['preview_mode'] = (node) => previewMode =
        node.getEnumValue<CreatePreviewPostRequestBodyPreviewMode>(
            (stringValue) => CreatePreviewPostRequestBodyPreviewMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['schedule'] = (node) => schedule = node.getStringValue();
    deserializerMap['schedule_details'] = (node) => scheduleDetails =
        node.getObjectValue<CreatePreviewPostRequestBodyScheduleDetails>(
            CreatePreviewPostRequestBodyScheduleDetails
                .createFromDiscriminatorValue);
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    deserializerMap['subscription_details'] = (node) => subscriptionDetails =
        node.getObjectValue<CreatePreviewPostRequestBodySubscriptionDetails>(
            CreatePreviewPostRequestBodySubscriptionDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CreatePreviewPostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<CreatePreviewPostRequestBodyCustomerDetails>(
        'customer_details', customerDetails);
    writer.writeObjectValue<CreatePreviewPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeCollectionOfObjectValues<
            CreatePreviewPostRequestBodyInvoiceItems>(
        'invoice_items', invoiceItems);
    writer.writeObjectValue<CreatePreviewPostRequestBodyIssuer>(
        'issuer', issuer);
    writer.writeObjectValue<CreatePreviewPostRequestBodyOnBehalfOf>(
        'on_behalf_of', onBehalfOf);
    writer.writeEnumValue<CreatePreviewPostRequestBodyPreviewMode>(
        'preview_mode', previewMode, (e) => e?.value);
    writer.writeStringValue('schedule', schedule);
    writer.writeObjectValue<CreatePreviewPostRequestBodyScheduleDetails>(
        'schedule_details', scheduleDetails);
    writer.writeStringValue('subscription', subscription);
    writer.writeObjectValue<CreatePreviewPostRequestBodySubscriptionDetails>(
        'subscription_details', subscriptionDetails);
  }
}
