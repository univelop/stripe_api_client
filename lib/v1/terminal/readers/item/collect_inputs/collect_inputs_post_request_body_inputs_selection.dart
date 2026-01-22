// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './collect_inputs_post_request_body_inputs_selection_choices.dart';

/// auto generated
class CollectInputsPostRequestBodyInputsSelection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The choices property
  Iterable<CollectInputsPostRequestBodyInputsSelectionChoices>? choices;

  /// Instantiates a new [CollectInputsPostRequestBodyInputsSelection] and sets the default values.
  CollectInputsPostRequestBodyInputsSelection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CollectInputsPostRequestBodyInputsSelection
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CollectInputsPostRequestBodyInputsSelection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['choices'] = (node) => choices =
        node.getCollectionOfObjectValues<
                CollectInputsPostRequestBodyInputsSelectionChoices>(
            CollectInputsPostRequestBodyInputsSelectionChoices
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
        CollectInputsPostRequestBodyInputsSelectionChoices>('choices', choices);
    writer.writeAdditionalData(additionalData);
  }
}
