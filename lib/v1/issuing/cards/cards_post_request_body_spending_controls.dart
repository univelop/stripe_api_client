// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_spending_controls_allowed_categories.dart';
import './cards_post_request_body_spending_controls_blocked_categories.dart';
import './cards_post_request_body_spending_controls_spending_limits.dart';

/// auto generated
/// Rules that control spending for this card. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
class CardsPostRequestBodySpendingControls
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The allowed_categories property
  Iterable<CardsPostRequestBodySpendingControlsAllowedCategories>?
      allowedCategories;

  ///  The allowed_merchant_countries property
  Iterable<String>? allowedMerchantCountries;

  ///  The blocked_categories property
  Iterable<CardsPostRequestBodySpendingControlsBlockedCategories>?
      blockedCategories;

  ///  The blocked_merchant_countries property
  Iterable<String>? blockedMerchantCountries;

  ///  The spending_limits property
  Iterable<CardsPostRequestBodySpendingControlsSpendingLimits>? spendingLimits;

  /// Instantiates a new [CardsPostRequestBodySpendingControls] and sets the default values.
  CardsPostRequestBodySpendingControls() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBodySpendingControls createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardsPostRequestBodySpendingControls();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allowed_categories'] = (node) => allowedCategories =
        node.getCollectionOfEnumValues<
                CardsPostRequestBodySpendingControlsAllowedCategories>(
            (stringValue) =>
                CardsPostRequestBodySpendingControlsAllowedCategories.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['allowed_merchant_countries'] = (node) =>
        allowedMerchantCountries =
            node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['blocked_categories'] = (node) => blockedCategories =
        node.getCollectionOfEnumValues<
                CardsPostRequestBodySpendingControlsBlockedCategories>(
            (stringValue) =>
                CardsPostRequestBodySpendingControlsBlockedCategories.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['blocked_merchant_countries'] = (node) =>
        blockedMerchantCountries =
            node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['spending_limits'] = (node) => spendingLimits =
        node.getCollectionOfObjectValues<
                CardsPostRequestBodySpendingControlsSpendingLimits>(
            CardsPostRequestBodySpendingControlsSpendingLimits
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            CardsPostRequestBodySpendingControlsAllowedCategories>(
        'allowed_categories', allowedCategories, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'allowed_merchant_countries', allowedMerchantCountries);
    writer.writeCollectionOfEnumValues<
            CardsPostRequestBodySpendingControlsBlockedCategories>(
        'blocked_categories', blockedCategories, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'blocked_merchant_countries', blockedMerchantCountries);
    writer.writeCollectionOfObjectValues<
            CardsPostRequestBodySpendingControlsSpendingLimits>(
        'spending_limits', spendingLimits);
    writer.writeAdditionalData(additionalData);
  }
}
