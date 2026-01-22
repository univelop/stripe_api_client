// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_subscription_data_invoice_settings_issuer.dart';

/// auto generated
class WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The issuer property
  WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettingsIssuer? issuer;

  /// Instantiates a new [WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings] and sets the default values.
  WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['issuer'] = (node) => issuer = node.getObjectValue<
            WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettingsIssuer>(
        WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettingsIssuer
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodySubscriptionDataInvoiceSettingsIssuer>(
        'issuer', issuer);
    writer.writeAdditionalData(additionalData);
  }
}
