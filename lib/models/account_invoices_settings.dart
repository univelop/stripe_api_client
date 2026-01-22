// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_invoices_settings_hosted_payment_method_save.dart';

/// auto generated
class AccountInvoicesSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The list of default Account Tax IDs to automatically include on invoices. Account Tax IDs get added when an invoice is finalized.
  Iterable<String>? defaultAccountTaxIds;

  ///  Whether to save the payment method after a payment is completed for a one-time invoice or a subscription invoice when the customer already has a default payment method on the hosted invoice page.
  AccountInvoicesSettingsHostedPaymentMethodSave? hostedPaymentMethodSave;

  /// Instantiates a new [AccountInvoicesSettings] and sets the default values.
  AccountInvoicesSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountInvoicesSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountInvoicesSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_account_tax_ids'] = (node) =>
        defaultAccountTaxIds = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['hosted_payment_method_save'] = (node) =>
        hostedPaymentMethodSave =
            node.getEnumValue<AccountInvoicesSettingsHostedPaymentMethodSave>(
                (stringValue) => AccountInvoicesSettingsHostedPaymentMethodSave
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>(
        'default_account_tax_ids', defaultAccountTaxIds);
    writer.writeEnumValue<AccountInvoicesSettingsHostedPaymentMethodSave>(
        'hosted_payment_method_save', hostedPaymentMethodSave, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
