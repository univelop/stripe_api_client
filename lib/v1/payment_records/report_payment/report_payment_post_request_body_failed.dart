// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Information about the payment attempt failure.
class ReportPaymentPostRequestBodyFailed
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The failed_at property
  int? failedAt;

  /// Instantiates a new [ReportPaymentPostRequestBodyFailed] and sets the default values.
  ReportPaymentPostRequestBodyFailed() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentPostRequestBodyFailed createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportPaymentPostRequestBodyFailed();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['failed_at'] = (node) => failedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('failed_at', failedAt);
    writer.writeAdditionalData(additionalData);
  }
}
