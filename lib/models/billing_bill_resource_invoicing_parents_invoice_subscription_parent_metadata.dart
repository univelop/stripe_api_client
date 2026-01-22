// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) defined as subscription metadata when an invoice is created. Becomes an immutable snapshot of the subscription metadata at the time of invoice finalization. *Note: This attribute is populated only for invoices created on or after June 29, 2023.*
class BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata] and sets the default values.
  BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingBillResourceInvoicingParentsInvoiceSubscriptionParentMetadata();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeAdditionalData(additionalData);
  }
}
