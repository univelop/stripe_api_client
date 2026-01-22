// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_data_naver_pay_funding.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodDataNaverPay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The funding property
  ConfirmPostRequestBodyPaymentMethodDataNaverPayFunding? funding;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodDataNaverPay] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodDataNaverPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodDataNaverPay
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodDataNaverPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['funding'] = (node) => funding = node
        .getEnumValue<ConfirmPostRequestBodyPaymentMethodDataNaverPayFunding>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodDataNaverPayFunding.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<ConfirmPostRequestBodyPaymentMethodDataNaverPayFunding>(
            'funding', funding, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
