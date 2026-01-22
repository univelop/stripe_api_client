// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_us_bank_account_financial_connections_filters_account_subcategories.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
    implements AdditionalDataHolder, Parsable {
  ///  The account_subcategories property
  Iterable<
          SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>?
      accountSubcategories;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_subcategories'] = (node) => accountSubcategories =
        node.getCollectionOfEnumValues<
                SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>(
            (stringValue) =>
                SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories
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
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>(
        'account_subcategories', accountSubcategories, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
