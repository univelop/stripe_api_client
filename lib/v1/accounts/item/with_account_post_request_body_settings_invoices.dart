// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_settings_invoices_default_account_tax_ids.dart';
import './with_account_post_request_body_settings_invoices_hosted_payment_method_save.dart';

/// auto generated
class WithAccountPostRequestBodySettingsInvoices
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The default_account_tax_ids property
  WithAccountPostRequestBodySettingsInvoicesDefaultAccountTaxIds?
      defaultAccountTaxIds;

  ///  The hosted_payment_method_save property
  WithAccountPostRequestBodySettingsInvoicesHostedPaymentMethodSave?
      hostedPaymentMethodSave;

  /// Instantiates a new [WithAccountPostRequestBodySettingsInvoices] and sets the default values.
  WithAccountPostRequestBodySettingsInvoices() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsInvoices
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsInvoices();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_account_tax_ids'] = (node) =>
        defaultAccountTaxIds = node.getObjectValue<
                WithAccountPostRequestBodySettingsInvoicesDefaultAccountTaxIds>(
            WithAccountPostRequestBodySettingsInvoicesDefaultAccountTaxIds
                .createFromDiscriminatorValue);
    deserializerMap['hosted_payment_method_save'] = (node) =>
        hostedPaymentMethodSave = node.getEnumValue<
                WithAccountPostRequestBodySettingsInvoicesHostedPaymentMethodSave>(
            (stringValue) =>
                WithAccountPostRequestBodySettingsInvoicesHostedPaymentMethodSave
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithAccountPostRequestBodySettingsInvoicesDefaultAccountTaxIds>(
        'default_account_tax_ids', defaultAccountTaxIds);
    writer.writeEnumValue<
            WithAccountPostRequestBodySettingsInvoicesHostedPaymentMethodSave>(
        'hosted_payment_method_save', hostedPaymentMethodSave, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
