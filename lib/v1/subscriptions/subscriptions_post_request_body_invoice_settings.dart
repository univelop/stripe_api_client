// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_invoice_settings_account_tax_ids.dart';
import './subscriptions_post_request_body_invoice_settings_issuer.dart';

/// auto generated
/// All invoices will be billed using the specified settings.
class SubscriptionsPostRequestBodyInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  The account_tax_ids property
  SubscriptionsPostRequestBodyInvoiceSettingsAccountTaxIds? accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The issuer property
  SubscriptionsPostRequestBodyInvoiceSettingsIssuer? issuer;

  /// Instantiates a new [SubscriptionsPostRequestBodyInvoiceSettings] and sets the default values.
  SubscriptionsPostRequestBodyInvoiceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_tax_ids'] = (node) => accountTaxIds =
        node.getObjectValue<
                SubscriptionsPostRequestBodyInvoiceSettingsAccountTaxIds>(
            SubscriptionsPostRequestBodyInvoiceSettingsAccountTaxIds
                .createFromDiscriminatorValue);
    deserializerMap['issuer'] = (node) => issuer =
        node.getObjectValue<SubscriptionsPostRequestBodyInvoiceSettingsIssuer>(
            SubscriptionsPostRequestBodyInvoiceSettingsIssuer
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyInvoiceSettingsAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeObjectValue<SubscriptionsPostRequestBodyInvoiceSettingsIssuer>(
        'issuer', issuer);
    writer.writeAdditionalData(additionalData);
  }
}
