// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_checks_address_line1_check.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_checks_address_postal_code_check.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_checks_cvc_check.dart';

/// auto generated
class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address_line1_check property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressLine1Check?
      addressLine1Check;

  ///  The address_postal_code_check property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressPostalCodeCheck?
      addressPostalCodeCheck;

  ///  The cvc_check property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksCvcCheck?
      cvcCheck;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'address_line1_check'] = (node) => addressLine1Check = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressLine1Check>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressLine1Check
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['address_postal_code_check'] = (node) =>
        addressPostalCodeCheck = node.getEnumValue<
                PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressPostalCodeCheck>(
            (stringValue) =>
                PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressPostalCodeCheck
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['cvc_check'] = (node) => cvcCheck = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksCvcCheck>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksCvcCheck
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressLine1Check>(
        'address_line1_check', addressLine1Check, (e) => e?.value);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksAddressPostalCodeCheck>(
        'address_postal_code_check', addressPostalCodeCheck, (e) => e?.value);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecksCvcCheck>(
        'cvc_check', cvcCheck, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
