// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The subscription that generated this invoice item
  String? subscription;

  ///  The subscription item that generated this invoice item
  String? subscriptionItem;

  /// Instantiates a new [BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent] and sets the default values.
  BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoiceItemParentsInvoiceItemSubscriptionParent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    deserializerMap['subscription_item'] =
        (node) => subscriptionItem = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('subscription', subscription);
    writer.writeStringValue('subscription_item', subscriptionItem);
    writer.writeAdditionalData(additionalData);
  }
}
