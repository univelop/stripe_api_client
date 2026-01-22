// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_filters_account_subcategories.dart';

/// auto generated
/// Filters to restrict the kinds of accounts to collect.
class SessionsPostRequestBodyFilters implements AdditionalDataHolder, Parsable {
  ///  The account_subcategories property
  Iterable<SessionsPostRequestBodyFiltersAccountSubcategories>?
      accountSubcategories;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The countries property
  Iterable<String>? countries;

  /// Instantiates a new [SessionsPostRequestBodyFilters] and sets the default values.
  SessionsPostRequestBodyFilters() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyFilters createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_subcategories'] = (node) => accountSubcategories =
        node.getCollectionOfEnumValues<
                SessionsPostRequestBodyFiltersAccountSubcategories>(
            (stringValue) => SessionsPostRequestBodyFiltersAccountSubcategories
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
            SessionsPostRequestBodyFiltersAccountSubcategories>(
        'account_subcategories', accountSubcategories, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('countries', countries);
    writer.writeAdditionalData(additionalData);
  }
}
