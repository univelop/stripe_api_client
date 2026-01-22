// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_payto_member1_mandate_options_purpose.dart';

/// auto generated
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The purpose property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptionsPurpose?
      purpose;

  /// Instantiates a new [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions] and sets the default values.
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['purpose'] = (node) => purpose = node.getEnumValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        (stringValue) =>
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptionsPurpose
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptionsPurpose>(
        'purpose', purpose, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
