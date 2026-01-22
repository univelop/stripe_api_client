// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_customer_balance_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1]
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1]
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1?
      withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1 =
          WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1 !=
        null) {
      withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1!
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
              WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1>(
          null,
          withInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalanceMember1);
    }
  }
}
