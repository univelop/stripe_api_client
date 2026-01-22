// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_data_klarna_dob.dart';

/// auto generated
class ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The dob property
  ConfirmationTokensPostRequestBodyPaymentMethodDataKlarnaDob? dob;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dob'] = (node) => dob = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKlarnaDob>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataKlarnaDob
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKlarnaDob>(
        'dob', dob);
    writer.writeAdditionalData(additionalData);
  }
}
