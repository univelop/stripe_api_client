// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './application_fee.dart';

/// auto generated
/// Composed type wrapper for classes [ApplicationFee], [String?]
class FeeRefundFee implements Parsable {
  ///  Composed type representation for type [ApplicationFee]
  ApplicationFee? applicationFee;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeeRefundFee createFromDiscriminatorValue(ParseNode parseNode) {
    var result = FeeRefundFee();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.applicationFee = ApplicationFee();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (applicationFee != null) {
      applicationFee!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<ApplicationFee>(null, applicationFee);
    }
  }
}
