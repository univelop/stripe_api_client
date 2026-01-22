// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_three_d_secure_authentication_flow.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_three_d_secure_result.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_three_d_secure_result_reason.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_three_d_secure_version.dart';

/// auto generated
class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The authentication_flow property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureAuthenticationFlow?
      authenticationFlow;

  ///  The result property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResult?
      result;

  ///  The result_reason property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResultReason?
      resultReason;

  ///  The version property
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureVersion?
      version;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'authentication_flow'] = (node) => authenticationFlow = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureAuthenticationFlow>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureAuthenticationFlow
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['result'] = (node) => result = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResult>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResult
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'result_reason'] = (node) => resultReason = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResultReason>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResultReason
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['version'] = (node) => version = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureVersion>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureVersion
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
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureAuthenticationFlow>(
        'authentication_flow', authenticationFlow, (e) => e?.value);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResult>(
        'result', result, (e) => e?.value);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureResultReason>(
        'result_reason', resultReason, (e) => e?.value);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecureVersion>(
        'version', version, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
