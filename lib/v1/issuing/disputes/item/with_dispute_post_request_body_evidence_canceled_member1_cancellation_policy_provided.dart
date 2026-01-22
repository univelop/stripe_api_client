// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Composed type wrapper for classes [bool?], [String?]
class WithDisputePostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided
    implements Parsable {
  ///  Composed type representation for type [bool?]
  bool? boolean;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithDisputePostRequestBodyEvidenceCanceledMember1CancellationPolicyProvided();
    if (parseNode.getBoolValue() != null) {
      result.boolean = parseNode.getBoolValue();
    } else if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (boolean != null) {
      writer.writeBoolValue(null, value: boolean);
    } else if (string_ != null) {
      writer.writeStringValue(null, string_);
    }
  }
}
