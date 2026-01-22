// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_invoice_settings.dart';

/// auto generated
class PaymentPagesCheckoutSessionInvoiceCreation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates whether invoice creation is enabled for the Checkout Session.
  bool? enabled;

  ///  The invoice_data property
  PaymentPagesCheckoutSessionInvoiceSettings? invoiceData;

  /// Instantiates a new [PaymentPagesCheckoutSessionInvoiceCreation] and sets the default values.
  PaymentPagesCheckoutSessionInvoiceCreation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionInvoiceCreation
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionInvoiceCreation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['invoice_data'] = (node) => invoiceData =
        node.getObjectValue<PaymentPagesCheckoutSessionInvoiceSettings>(
            PaymentPagesCheckoutSessionInvoiceSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<PaymentPagesCheckoutSessionInvoiceSettings>(
        'invoice_data', invoiceData);
    writer.writeAdditionalData(additionalData);
  }
}
