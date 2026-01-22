// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoicing_parents_invoice_parent_type.dart';
import './billing_bill_resource_invoicing_parents_invoice_quote_parent.dart';
import './billing_bill_resource_invoicing_parents_invoice_subscription_parent.dart';

/// auto generated
class BillingBillResourceInvoicingParentsInvoiceParent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about the quote that generated this invoice
  BillingBillResourceInvoicingParentsInvoiceQuoteParent? quoteDetails;

  ///  Details about the subscription that generated this invoice
  BillingBillResourceInvoicingParentsInvoiceSubscriptionParent?
      subscriptionDetails;

  ///  The type of parent that generated this invoice
  BillingBillResourceInvoicingParentsInvoiceParentType? type_;

  /// Instantiates a new [BillingBillResourceInvoicingParentsInvoiceParent] and sets the default values.
  BillingBillResourceInvoicingParentsInvoiceParent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingParentsInvoiceParent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingParentsInvoiceParent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['quote_details'] = (node) => quoteDetails = node
        .getObjectValue<BillingBillResourceInvoicingParentsInvoiceQuoteParent>(
            BillingBillResourceInvoicingParentsInvoiceQuoteParent
                .createFromDiscriminatorValue);
    deserializerMap['subscription_details'] = (node) => subscriptionDetails =
        node.getObjectValue<
                BillingBillResourceInvoicingParentsInvoiceSubscriptionParent>(
            BillingBillResourceInvoicingParentsInvoiceSubscriptionParent
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BillingBillResourceInvoicingParentsInvoiceParentType>(
            (stringValue) =>
                BillingBillResourceInvoicingParentsInvoiceParentType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BillingBillResourceInvoicingParentsInvoiceQuoteParent>(
        'quote_details', quoteDetails);
    writer.writeObjectValue<
            BillingBillResourceInvoicingParentsInvoiceSubscriptionParent>(
        'subscription_details', subscriptionDetails);
    writer.writeEnumValue<BillingBillResourceInvoicingParentsInvoiceParentType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
