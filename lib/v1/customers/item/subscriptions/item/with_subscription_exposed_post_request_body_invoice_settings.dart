// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_invoice_settings_account_tax_ids.dart';
import './with_subscription_exposed_post_request_body_invoice_settings_issuer.dart';

/// auto generated
/// All invoices will be billed using the specified settings.
class WithSubscriptionExposedPostRequestBodyInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  The account_tax_ids property
  WithSubscriptionExposedPostRequestBodyInvoiceSettingsAccountTaxIds?
      accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The issuer property
  WithSubscriptionExposedPostRequestBodyInvoiceSettingsIssuer? issuer;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyInvoiceSettings] and sets the default values.
  WithSubscriptionExposedPostRequestBodyInvoiceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'account_tax_ids'] = (node) => accountTaxIds = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyInvoiceSettingsAccountTaxIds>(
        WithSubscriptionExposedPostRequestBodyInvoiceSettingsAccountTaxIds
            .createFromDiscriminatorValue);
    deserializerMap['issuer'] = (node) => issuer = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyInvoiceSettingsIssuer>(
        WithSubscriptionExposedPostRequestBodyInvoiceSettingsIssuer
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyInvoiceSettingsAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyInvoiceSettingsIssuer>(
        'issuer', issuer);
    writer.writeAdditionalData(additionalData);
  }
}
