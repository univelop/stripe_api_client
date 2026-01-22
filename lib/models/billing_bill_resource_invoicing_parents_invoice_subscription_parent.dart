// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_parents_invoice_subscription_parent_metadata.dart';
import './billing_bill_resource_invoicing_parents_invoice_subscription_parent_subscription.dart';

/// auto generated
class BillingBillResourceInvoicingParentsInvoiceSubscriptionParent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) defined as subscription metadata when an invoice is created. Becomes an immutable snapshot of the subscription metadata at the time of invoice finalization. *Note: This attribute is populated only for invoices created on or after June 29, 2023.*
  BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata?
      metadata;

  ///  The subscription that generated this invoice
  BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription?
      subscription;

  ///  Only set for upcoming invoices that preview prorations. The time used to calculate prorations.
  int? subscriptionProrationDate;

  /// Instantiates a new [BillingBillResourceInvoicingParentsInvoiceSubscriptionParent] and sets the default values.
  BillingBillResourceInvoicingParentsInvoiceSubscriptionParent()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingParentsInvoiceSubscriptionParent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingParentsInvoiceSubscriptionParent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata>(
        BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata
            .createFromDiscriminatorValue);
    deserializerMap[
        'subscription'] = (node) => subscription = node.getObjectValue<
            BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription>(
        BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription
            .createFromDiscriminatorValue);
    deserializerMap['subscription_proration_date'] =
        (node) => subscriptionProrationDate = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription>(
        'subscription', subscription);
    writer.writeIntValue(
        'subscription_proration_date', subscriptionProrationDate);
    writer.writeAdditionalData(additionalData);
  }
}
