// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_data_ideal_bank.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodDataIdeal
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank property
  WithIntentPostRequestBodyPaymentMethodDataIdealBank? bank;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodDataIdeal] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodDataIdeal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodDataIdeal
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodDataIdeal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank'] = (node) => bank =
        node.getEnumValue<WithIntentPostRequestBodyPaymentMethodDataIdealBank>(
            (stringValue) => WithIntentPostRequestBodyPaymentMethodDataIdealBank
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<WithIntentPostRequestBodyPaymentMethodDataIdealBank>(
        'bank', bank, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
