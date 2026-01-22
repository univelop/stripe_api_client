// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_data_p24_bank.dart';

/// auto generated
class ConfirmationTokensPostRequestBodyPaymentMethodDataP24
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank property
  ConfirmationTokensPostRequestBodyPaymentMethodDataP24Bank? bank;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodDataP24] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodDataP24() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodDataP24
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodDataP24();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank'] = (node) => bank = node.getEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataP24Bank>(
        (stringValue) =>
            ConfirmationTokensPostRequestBodyPaymentMethodDataP24Bank.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataP24Bank>(
        'bank', bank, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
