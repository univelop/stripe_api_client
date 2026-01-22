// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ip_address property
  String? ipAddress;

  ///  The user_agent property
  String? userAgent;

  /// Instantiates a new [PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline] and sets the default values.
  PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyMandateDataMember1CustomerAcceptanceOnline();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['user_agent'] = (node) => userAgent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeStringValue('user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
