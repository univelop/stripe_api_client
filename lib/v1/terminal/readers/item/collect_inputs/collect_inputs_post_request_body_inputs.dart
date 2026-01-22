// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './collect_inputs_post_request_body_inputs_custom_text.dart';
import './collect_inputs_post_request_body_inputs_selection.dart';
import './collect_inputs_post_request_body_inputs_toggles.dart';
import './collect_inputs_post_request_body_inputs_type.dart';

/// auto generated
class CollectInputsPostRequestBodyInputs
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_text property
  CollectInputsPostRequestBodyInputsCustomText? customText;

  ///  The required property
  bool? required_;

  ///  The selection property
  CollectInputsPostRequestBodyInputsSelection? selection;

  ///  The toggles property
  Iterable<CollectInputsPostRequestBodyInputsToggles>? toggles;

  ///  The type property
  CollectInputsPostRequestBodyInputsType? type_;

  /// Instantiates a new [CollectInputsPostRequestBodyInputs] and sets the default values.
  CollectInputsPostRequestBodyInputs() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CollectInputsPostRequestBodyInputs createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CollectInputsPostRequestBodyInputs();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_text'] = (node) => customText =
        node.getObjectValue<CollectInputsPostRequestBodyInputsCustomText>(
            CollectInputsPostRequestBodyInputsCustomText
                .createFromDiscriminatorValue);
    deserializerMap['required'] = (node) => required_ = node.getBoolValue();
    deserializerMap['selection'] = (node) => selection =
        node.getObjectValue<CollectInputsPostRequestBodyInputsSelection>(
            CollectInputsPostRequestBodyInputsSelection
                .createFromDiscriminatorValue);
    deserializerMap['toggles'] = (node) => toggles = node
        .getCollectionOfObjectValues<CollectInputsPostRequestBodyInputsToggles>(
            CollectInputsPostRequestBodyInputsToggles
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CollectInputsPostRequestBodyInputsType>(
            (stringValue) => CollectInputsPostRequestBodyInputsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CollectInputsPostRequestBodyInputsCustomText>(
        'custom_text', customText);
    writer.writeBoolValue('required', value: required_);
    writer.writeObjectValue<CollectInputsPostRequestBodyInputsSelection>(
        'selection', selection);
    writer.writeCollectionOfObjectValues<
        CollectInputsPostRequestBodyInputsToggles>('toggles', toggles);
    writer.writeEnumValue<CollectInputsPostRequestBodyInputsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
