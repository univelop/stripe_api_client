// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_invoice_settings.dart';

/// auto generated
class PaymentLinksResourceInvoiceCreation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Enable creating an invoice on successful payment.
  bool? enabled;

  ///  Configuration for the invoice. Default invoice values will be used if unspecified.
  PaymentLinksResourceInvoiceSettings? invoiceData;

  /// Instantiates a new [PaymentLinksResourceInvoiceCreation] and sets the default values.
  PaymentLinksResourceInvoiceCreation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceInvoiceCreation createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceInvoiceCreation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['invoice_data'] = (node) => invoiceData =
        node.getObjectValue<PaymentLinksResourceInvoiceSettings>(
            PaymentLinksResourceInvoiceSettings.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<PaymentLinksResourceInvoiceSettings>(
        'invoice_data', invoiceData);
    writer.writeAdditionalData(additionalData);
  }
}
