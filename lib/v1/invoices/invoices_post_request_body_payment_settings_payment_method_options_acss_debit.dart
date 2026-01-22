// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_acss_debit_member1.dart';

/// auto generated
/// Composed type wrapper for classes [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1], [String?]
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
    implements Parsable {
  ///  Composed type representation for type [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1]
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1?
      invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1 =
          InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1 !=
        null) {
      invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1!
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
              InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1>(
          null,
          invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebitMember1);
    }
  }
}
