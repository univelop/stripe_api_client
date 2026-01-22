// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_data_sofort_country.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodDataSofort
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The country property
  PaymentIntentsPostRequestBodyPaymentMethodDataSofortCountry? country;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodDataSofort] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodDataSofort() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodDataSofort
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodDataSofort();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataSofortCountry>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodDataSofortCountry.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataSofortCountry>(
        'country', country, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
