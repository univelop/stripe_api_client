// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './refund_next_action_display_details.dart';

/// auto generated
class RefundNextAction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_details property
  RefundNextActionDisplayDetails? displayDetails;

  ///  Type of the next action to perform.
  String? type_;

  /// Instantiates a new [RefundNextAction] and sets the default values.
  RefundNextAction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundNextAction createFromDiscriminatorValue(ParseNode parseNode) {
    return RefundNextAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_details'] = (node) => displayDetails =
        node.getObjectValue<RefundNextActionDisplayDetails>(
            RefundNextActionDisplayDetails.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<RefundNextActionDisplayDetails>(
        'display_details', displayDetails);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
