// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_subscription_data_invoice_settings_issuer.dart';

/// auto generated
class PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The issuer property
  PaymentLinksPostRequestBodySubscriptionDataInvoiceSettingsIssuer? issuer;

  /// Instantiates a new [PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings] and sets the default values.
  PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodySubscriptionDataInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['issuer'] = (node) => issuer = node.getObjectValue<
            PaymentLinksPostRequestBodySubscriptionDataInvoiceSettingsIssuer>(
        PaymentLinksPostRequestBodySubscriptionDataInvoiceSettingsIssuer
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentLinksPostRequestBodySubscriptionDataInvoiceSettingsIssuer>(
        'issuer', issuer);
    writer.writeAdditionalData(additionalData);
  }
}
