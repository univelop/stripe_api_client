// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceCodeVerificationFlow implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The number of attempts remaining to authenticate the source object with a verification code.
  int? attemptsRemaining;

  ///  The status of the code verification, either `pending` (awaiting verification, `attempts_remaining` should be greater than 0), `succeeded` (successful verification) or `failed` (failed verification, cannot be verified anymore as `attempts_remaining` should be 0).
  String? status;

  /// Instantiates a new [SourceCodeVerificationFlow] and sets the default values.
  SourceCodeVerificationFlow() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceCodeVerificationFlow createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceCodeVerificationFlow();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['attempts_remaining'] =
        (node) => attemptsRemaining = node.getIntValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('attempts_remaining', attemptsRemaining);
    writer.writeStringValue('status', status);
    writer.writeAdditionalData(additionalData);
  }
}
