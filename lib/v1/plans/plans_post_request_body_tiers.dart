// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './plans_post_request_body_tiers_up_to.dart';

/// auto generated
class PlansPostRequestBodyTiers implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The flat_amount property
  int? flatAmount;

  ///  The flat_amount_decimal property
  String? flatAmountDecimal;

  ///  The unit_amount property
  int? unitAmount;

  ///  The unit_amount_decimal property
  String? unitAmountDecimal;

  ///  The up_to property
  PlansPostRequestBodyTiersUpTo? upTo;

  /// Instantiates a new [PlansPostRequestBodyTiers] and sets the default values.
  PlansPostRequestBodyTiers() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PlansPostRequestBodyTiers createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PlansPostRequestBodyTiers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flat_amount'] = (node) => flatAmount = node.getIntValue();
    deserializerMap['flat_amount_decimal'] =
        (node) => flatAmountDecimal = node.getStringValue();
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    deserializerMap['up_to'] = (node) => upTo =
        node.getObjectValue<PlansPostRequestBodyTiersUpTo>(
            PlansPostRequestBodyTiersUpTo.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('flat_amount', flatAmount);
    writer.writeStringValue('flat_amount_decimal', flatAmountDecimal);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeObjectValue<PlansPostRequestBodyTiersUpTo>('up_to', upTo);
    writer.writeAdditionalData(additionalData);
  }
}
