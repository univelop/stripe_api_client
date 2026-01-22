// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_mandate_data_member1_customer_acceptance.dart';

/// auto generated
class PaymentIntentsPostRequestBodyMandateDataMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_acceptance property
  PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptance?
      customerAcceptance;

  /// Instantiates a new [PaymentIntentsPostRequestBodyMandateDataMember1] and sets the default values.
  PaymentIntentsPostRequestBodyMandateDataMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyMandateDataMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyMandateDataMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_acceptance'] = (node) => customerAcceptance =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptance>(
            PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptance>(
        'customer_acceptance', customerAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
