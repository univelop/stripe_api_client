// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_invoice_settings_account_tax_ids.dart';
import './subscription_schedules_post_request_body_phases_invoice_settings_issuer.dart';

/// auto generated
class SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  The account_tax_ids property
  SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsAccountTaxIds?
      accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The days_until_due property
  int? daysUntilDue;

  ///  The issuer property
  SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsIssuer? issuer;

  /// Instantiates a new [SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings] and sets the default values.
  SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'account_tax_ids'] = (node) => accountTaxIds = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsAccountTaxIds>(
        SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsAccountTaxIds
            .createFromDiscriminatorValue);
    deserializerMap['days_until_due'] =
        (node) => daysUntilDue = node.getIntValue();
    deserializerMap['issuer'] = (node) => issuer = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsIssuer>(
        SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsIssuer
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeIntValue('days_until_due', daysUntilDue);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesInvoiceSettingsIssuer>(
        'issuer', issuer);
    writer.writeAdditionalData(additionalData);
  }
}
