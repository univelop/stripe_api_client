// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_data_klarna_dob.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodDataKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The dob property
  PaymentIntentsPostRequestBodyPaymentMethodDataKlarnaDob? dob;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodDataKlarna] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodDataKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodDataKlarna
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodDataKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dob'] = (node) => dob = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataKlarnaDob>(
        PaymentIntentsPostRequestBodyPaymentMethodDataKlarnaDob
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodDataKlarnaDob>('dob', dob);
    writer.writeAdditionalData(additionalData);
  }
}
