// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_financial_connections_filters_account_subcategories.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
    implements AdditionalDataHolder, Parsable {
  ///  The account_subcategories property
  Iterable<
          ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>?
      accountSubcategories;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_subcategories'] = (node) => accountSubcategories =
        node.getCollectionOfEnumValues<
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories
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
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFiltersAccountSubcategories>(
        'account_subcategories', accountSubcategories, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
