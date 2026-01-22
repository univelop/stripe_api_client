// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_invoice_creation_invoice_data_issuer_type.dart';

/// auto generated
class PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuer
    implements AdditionalDataHolder, Parsable {
  ///  The account property
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuerType? type_;

  /// Instantiates a new [PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuer] and sets the default values.
  PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuer()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuer
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuerType>(
        (stringValue) =>
            PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuerType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeEnumValue<
            PaymentLinksPostRequestBodyInvoiceCreationInvoiceDataIssuerType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
