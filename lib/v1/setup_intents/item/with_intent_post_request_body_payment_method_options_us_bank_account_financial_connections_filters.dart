// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_financial_connections_filters_account_subcategories.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
    implements AdditionalDataHolder, Parsable {
  ///  The account_subcategories property
  Iterable<
          WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>?
      accountSubcategories;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_subcategories'] = (node) => accountSubcategories =
        node.getCollectionOfEnumValues<
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories
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
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>(
        'account_subcategories', accountSubcategories, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
