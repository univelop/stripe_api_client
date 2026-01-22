// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ReportPaymentAttemptGuaranteedPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
  int? guaranteedAt;

  ///  The metadata property
  String? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptGuaranteedPostRequestBody
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentAttemptGuaranteedPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['guaranteed_at'] =
        (node) => guaranteedAt = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('guaranteed_at', guaranteedAt);
    writer.writeStringValue('metadata', metadata);
  }
}
