// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './fail_post_request_body_failure_details_code.dart';

/// auto generated
/// Details about a failed InboundTransfer.
class FailPostRequestBodyFailureDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The code property
  FailPostRequestBodyFailureDetailsCode? code;

  /// Instantiates a new [FailPostRequestBodyFailureDetails] and sets the default values.
  FailPostRequestBodyFailureDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FailPostRequestBodyFailureDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FailPostRequestBodyFailureDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code =
        node.getEnumValue<FailPostRequestBodyFailureDetailsCode>(
            (stringValue) => FailPostRequestBodyFailureDetailsCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<FailPostRequestBodyFailureDetailsCode>(
        'code', code, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
