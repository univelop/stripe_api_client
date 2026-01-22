// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './link_account_sessions_post_request_body_filters_account_subcategories.dart';

/// auto generated
/// Filters to restrict the kinds of accounts to collect.
class LinkAccountSessionsPostRequestBodyFilters
    implements AdditionalDataHolder, Parsable {
  ///  The account_subcategories property
  Iterable<LinkAccountSessionsPostRequestBodyFiltersAccountSubcategories>?
      accountSubcategories;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The countries property
  Iterable<String>? countries;

  /// Instantiates a new [LinkAccountSessionsPostRequestBodyFilters] and sets the default values.
  LinkAccountSessionsPostRequestBodyFilters() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LinkAccountSessionsPostRequestBodyFilters createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LinkAccountSessionsPostRequestBodyFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_subcategories'] = (node) => accountSubcategories =
        node.getCollectionOfEnumValues<
                LinkAccountSessionsPostRequestBodyFiltersAccountSubcategories>(
            (stringValue) =>
                LinkAccountSessionsPostRequestBodyFiltersAccountSubcategories
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
            LinkAccountSessionsPostRequestBodyFiltersAccountSubcategories>(
        'account_subcategories', accountSubcategories, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('countries', countries);
    writer.writeAdditionalData(additionalData);
  }
}
