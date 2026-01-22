// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_card_spending_limit_categories.dart';
import './issuing_card_spending_limit_interval.dart';

/// auto generated
class IssuingCardSpendingLimit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Maximum amount allowed to spend per interval. This amount is in the card's currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  Array of strings containing [categories](https://docs.stripe.com/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
  Iterable<IssuingCardSpendingLimitCategories>? categories;

  ///  Interval (or event) to which the amount applies.
  IssuingCardSpendingLimitInterval? interval;

  /// Instantiates a new [IssuingCardSpendingLimit] and sets the default values.
  IssuingCardSpendingLimit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardSpendingLimit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardSpendingLimit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['categories'] = (node) => categories =
        node.getCollectionOfEnumValues<IssuingCardSpendingLimitCategories>(
            (stringValue) => IssuingCardSpendingLimitCategories.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<IssuingCardSpendingLimitInterval>((stringValue) =>
            IssuingCardSpendingLimitInterval.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeCollectionOfEnumValues<IssuingCardSpendingLimitCategories>(
        'categories', categories, (e) => e?.value);
    writer.writeEnumValue<IssuingCardSpendingLimitInterval>(
        'interval', interval, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
