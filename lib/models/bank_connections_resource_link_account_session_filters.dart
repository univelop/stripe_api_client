// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_connections_resource_link_account_session_filters_account_subcategories.dart';

/// auto generated
class BankConnectionsResourceLinkAccountSessionFilters
    implements AdditionalDataHolder, Parsable {
  ///  Restricts the Session to subcategories of accounts that can be linked. Valid subcategories are: `checking`, `savings`, `mortgage`, `line_of_credit`, `credit_card`.
  Iterable<
          BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories>?
      accountSubcategories;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  List of countries from which to filter accounts.
  Iterable<String>? countries;

  /// Instantiates a new [BankConnectionsResourceLinkAccountSessionFilters] and sets the default values.
  BankConnectionsResourceLinkAccountSessionFilters() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankConnectionsResourceLinkAccountSessionFilters
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BankConnectionsResourceLinkAccountSessionFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_subcategories'] = (node) => accountSubcategories =
        node.getCollectionOfEnumValues<
                BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories>(
            (stringValue) =>
                BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['countries'] =
        (node) => countries = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            BankConnectionsResourceLinkAccountSessionFiltersAccountSubcategories>(
        'account_subcategories', accountSubcategories, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('countries', countries);
    writer.writeAdditionalData(additionalData);
  }
}
