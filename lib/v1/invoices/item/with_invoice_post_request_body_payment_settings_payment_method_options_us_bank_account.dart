// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_us_bank_account_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1]
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1]
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1?
      withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1 =
          WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1 !=
        null) {
      withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1>(
          null,
          withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1);
    }
  }
}
