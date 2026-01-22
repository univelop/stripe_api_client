// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SetupAttemptPaymentMethodDetailsNaverPay
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Uniquely identifies this particular Naver Pay account. You can use this attribute to check whether two Naver Pay accounts are the same.
  String? buyerId;

  /// Instantiates a new [SetupAttemptPaymentMethodDetailsNaverPay] and sets the default values.
  SetupAttemptPaymentMethodDetailsNaverPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupAttemptPaymentMethodDetailsNaverPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupAttemptPaymentMethodDetailsNaverPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buyer_id'] = (node) => buyerId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('buyer_id', buyerId);
    writer.writeAdditionalData(additionalData);
  }
}
