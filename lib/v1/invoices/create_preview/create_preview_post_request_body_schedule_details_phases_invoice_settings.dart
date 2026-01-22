// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_invoice_settings_account_tax_ids.dart';
import './create_preview_post_request_body_schedule_details_phases_invoice_settings_issuer.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  The account_tax_ids property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsAccountTaxIds?
      accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The days_until_due property
  int? daysUntilDue;

  ///  The issuer property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsIssuer?
      issuer;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'account_tax_ids'] = (node) => accountTaxIds = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsAccountTaxIds>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsAccountTaxIds
            .createFromDiscriminatorValue);
    deserializerMap['days_until_due'] =
        (node) => daysUntilDue = node.getIntValue();
    deserializerMap['issuer'] = (node) => issuer = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsIssuer>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsIssuer
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeIntValue('days_until_due', daysUntilDue);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesInvoiceSettingsIssuer>(
        'issuer', issuer);
    writer.writeAdditionalData(additionalData);
  }
}
