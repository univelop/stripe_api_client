// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_bill_resource_invoice_item_parents_invoice_item_parent_type.dart';
import './billing_bill_resource_invoice_item_parents_invoice_item_subscription_parent.dart';

/// auto generated
class BillingBillResourceInvoiceItemParentsInvoiceItemParent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about the subscription that generated this invoice item
  BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent?
      subscriptionDetails;

  ///  The type of parent that generated this invoice item
  BillingBillResourceInvoiceItemParentsInvoiceItemParentType? type_;

  /// Instantiates a new [BillingBillResourceInvoiceItemParentsInvoiceItemParent] and sets the default values.
  BillingBillResourceInvoiceItemParentsInvoiceItemParent()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoiceItemParentsInvoiceItemParent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoiceItemParentsInvoiceItemParent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['subscription_details'] = (node) => subscriptionDetails =
        node.getObjectValue<
                BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent>(
            BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            BillingBillResourceInvoiceItemParentsInvoiceItemParentType>(
        (stringValue) =>
            BillingBillResourceInvoiceItemParentsInvoiceItemParentType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent>(
        'subscription_details', subscriptionDetails);
    writer.writeEnumValue<
            BillingBillResourceInvoiceItemParentsInvoiceItemParentType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
