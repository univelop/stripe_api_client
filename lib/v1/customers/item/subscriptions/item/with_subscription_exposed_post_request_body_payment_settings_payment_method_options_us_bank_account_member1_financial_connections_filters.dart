// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections_filters_account_subcategories.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters
    implements AdditionalDataHolder, Parsable {
  ///  The account_subcategories property
  Iterable<
          WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFiltersAccountSubcategories>?
      accountSubcategories;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_subcategories'] = (node) => accountSubcategories =
        node.getCollectionOfEnumValues<
                WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFiltersAccountSubcategories>(
            (stringValue) =>
                WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFiltersAccountSubcategories
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFiltersAccountSubcategories>(
        'account_subcategories', accountSubcategories, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
