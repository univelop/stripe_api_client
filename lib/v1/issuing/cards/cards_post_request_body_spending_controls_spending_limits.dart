// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_spending_controls_spending_limits_categories.dart';
import './cards_post_request_body_spending_controls_spending_limits_interval.dart';

/// auto generated
class CardsPostRequestBodySpendingControlsSpendingLimits
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The categories property
  Iterable<CardsPostRequestBodySpendingControlsSpendingLimitsCategories>?
      categories;

  ///  The interval property
  CardsPostRequestBodySpendingControlsSpendingLimitsInterval? interval;

  /// Instantiates a new [CardsPostRequestBodySpendingControlsSpendingLimits] and sets the default values.
  CardsPostRequestBodySpendingControlsSpendingLimits() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBodySpendingControlsSpendingLimits
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CardsPostRequestBodySpendingControlsSpendingLimits();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['categories'] = (node) => categories =
        node.getCollectionOfEnumValues<
                CardsPostRequestBodySpendingControlsSpendingLimitsCategories>(
            (stringValue) =>
                CardsPostRequestBodySpendingControlsSpendingLimitsCategories
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['interval'] = (node) => interval = node.getEnumValue<
            CardsPostRequestBodySpendingControlsSpendingLimitsInterval>(
        (stringValue) =>
            CardsPostRequestBodySpendingControlsSpendingLimitsInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeCollectionOfEnumValues<
            CardsPostRequestBodySpendingControlsSpendingLimitsCategories>(
        'categories', categories, (e) => e?.value);
    writer.writeEnumValue<
            CardsPostRequestBodySpendingControlsSpendingLimitsInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
