// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_invoice_creation_invoice_data.dart';

/// auto generated
/// Generate a post-purchase Invoice for one-time payments.
class SessionsPostRequestBodyInvoiceCreation
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The invoice_data property
  SessionsPostRequestBodyInvoiceCreationInvoiceData? invoiceData;

  /// Instantiates a new [SessionsPostRequestBodyInvoiceCreation] and sets the default values.
  SessionsPostRequestBodyInvoiceCreation() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyInvoiceCreation createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyInvoiceCreation();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['invoice_data'] = (node) => invoiceData =
        node.getObjectValue<SessionsPostRequestBodyInvoiceCreationInvoiceData>(
            SessionsPostRequestBodyInvoiceCreationInvoiceData
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<SessionsPostRequestBodyInvoiceCreationInvoiceData>(
        'invoice_data', invoiceData);
    writer.writeAdditionalData(additionalData);
  }
}
