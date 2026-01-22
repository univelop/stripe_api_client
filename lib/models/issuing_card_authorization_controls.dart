// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_card_authorization_controls_allowed_categories.dart';
import './issuing_card_authorization_controls_blocked_categories.dart';
import './issuing_card_spending_limit.dart';

/// auto generated
class IssuingCardAuthorizationControls
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Array of strings containing [categories](https://docs.stripe.com/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
  Iterable<IssuingCardAuthorizationControlsAllowedCategories>?
      allowedCategories;

  ///  Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
  Iterable<String>? allowedMerchantCountries;

  ///  Array of strings containing [categories](https://docs.stripe.com/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
  Iterable<IssuingCardAuthorizationControlsBlockedCategories>?
      blockedCategories;

  ///  Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
  Iterable<String>? blockedMerchantCountries;

  ///  Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
  Iterable<IssuingCardSpendingLimit>? spendingLimits;

  ///  Currency of the amounts within `spending_limits`. Always the same as the currency of the card.
  String? spendingLimitsCurrency;

  /// Instantiates a new [IssuingCardAuthorizationControls] and sets the default values.
  IssuingCardAuthorizationControls() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardAuthorizationControls createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardAuthorizationControls();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allowed_categories'] = (node) => allowedCategories =
        node.getCollectionOfEnumValues<
                IssuingCardAuthorizationControlsAllowedCategories>(
            (stringValue) => IssuingCardAuthorizationControlsAllowedCategories
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['allowed_merchant_countries'] = (node) =>
        allowedMerchantCountries =
            node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['blocked_categories'] = (node) => blockedCategories =
        node.getCollectionOfEnumValues<
                IssuingCardAuthorizationControlsBlockedCategories>(
            (stringValue) => IssuingCardAuthorizationControlsBlockedCategories
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['blocked_merchant_countries'] = (node) =>
        blockedMerchantCountries =
            node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['spending_limits'] = (node) => spendingLimits =
        node.getCollectionOfObjectValues<IssuingCardSpendingLimit>(
            IssuingCardSpendingLimit.createFromDiscriminatorValue);
    deserializerMap['spending_limits_currency'] =
        (node) => spendingLimitsCurrency = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            IssuingCardAuthorizationControlsAllowedCategories>(
        'allowed_categories', allowedCategories, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'allowed_merchant_countries', allowedMerchantCountries);
    writer.writeCollectionOfEnumValues<
            IssuingCardAuthorizationControlsBlockedCategories>(
        'blocked_categories', blockedCategories, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'blocked_merchant_countries', blockedMerchantCountries);
    writer.writeCollectionOfObjectValues<IssuingCardSpendingLimit>(
        'spending_limits', spendingLimits);
    writer.writeStringValue('spending_limits_currency', spendingLimitsCurrency);
    writer.writeAdditionalData(additionalData);
  }
}
