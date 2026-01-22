// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_bancontact_member1.dart';

/// auto generated
/// Composed type wrapper for classes [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1], [String?]
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact
    implements Parsable {
  ///  Composed type representation for type [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1]
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1?
      invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1 =
          InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1 !=
        null) {
      invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1!
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
              InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1>(
          null,
          invoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontactMember1);
    }
  }
}
