// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedule.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionSchedule]
class QuoteSubscriptionSchedule implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionSchedule]
  SubscriptionSchedule? subscriptionSchedule;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuoteSubscriptionSchedule createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = QuoteSubscriptionSchedule();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionSchedule = SubscriptionSchedule();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionSchedule != null) {
      subscriptionSchedule!
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
      writer.writeObjectValue<SubscriptionSchedule>(null, subscriptionSchedule);
    }
  }
}
