// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Composed type wrapper for classes [int?], [String?]
class WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod
    implements Parsable {
  ///  Composed type representation for type [int?]
  int? integer;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithIntentPostRequestBodyPaymentMethodOptionsPaytoMember1MandateOptionsPaymentsPerPeriod();
    if (parseNode.getIntValue() != null) {
      result.integer = parseNode.getIntValue();
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
    if (integer != null) {
      writer.writeIntValue(null, integer);
    } else if (string_ != null) {
      writer.writeStringValue(null, string_);
    }
  }
}
