// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_options_card_installments_plan_interval.dart';
import './confirmation_tokens_post_request_body_payment_method_options_card_installments_plan_type.dart';

/// auto generated
class ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The count property
  int? count;

  ///  The interval property
  ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanInterval?
      interval;

  ///  The type property
  ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanType?
      type_;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlan();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['count'] = (node) => count = node.getIntValue();
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanInterval>(
        (stringValue) =>
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanInterval
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanType>(
        (stringValue) =>
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('count', count);
    writer.writeEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptionsCardInstallmentsPlanType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
