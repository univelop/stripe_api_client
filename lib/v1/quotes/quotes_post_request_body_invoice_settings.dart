// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_invoice_settings_issuer.dart';

/// auto generated
/// All invoices will be billed using the specified settings.
class QuotesPostRequestBodyInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The days_until_due property
  int? daysUntilDue;

  ///  The issuer property
  QuotesPostRequestBodyInvoiceSettingsIssuer? issuer;

  /// Instantiates a new [QuotesPostRequestBodyInvoiceSettings] and sets the default values.
  QuotesPostRequestBodyInvoiceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodyInvoiceSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesPostRequestBodyInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['days_until_due'] =
        (node) => daysUntilDue = node.getIntValue();
    deserializerMap['issuer'] = (node) => issuer =
        node.getObjectValue<QuotesPostRequestBodyInvoiceSettingsIssuer>(
            QuotesPostRequestBodyInvoiceSettingsIssuer
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('days_until_due', daysUntilDue);
    writer.writeObjectValue<QuotesPostRequestBodyInvoiceSettingsIssuer>(
        'issuer', issuer);
    writer.writeAdditionalData(additionalData);
  }
}
