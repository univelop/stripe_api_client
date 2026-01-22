// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ReportPaymentAttemptFailedPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  When the reported payment failed. Measured in seconds since the Unix epoch.
  int? failedAt;

  ///  The metadata property
  String? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptFailedPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReportPaymentAttemptFailedPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['failed_at'] = (node) => failedAt = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('failed_at', failedAt);
    writer.writeStringValue('metadata', metadata);
  }
}
