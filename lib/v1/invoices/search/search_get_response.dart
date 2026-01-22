// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/invoice.dart';
import './search_get_response_object.dart';

/// auto generated
class SearchGetResponse implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The data property
  Iterable<Invoice>? data;

  ///  The has_more property
  bool? hasMore;

  ///  The next_page property
  String? nextPage;

  ///  String representing the object's type. Objects of the same type share the same value.
  SearchGetResponseObject? object;

  ///  The total number of objects that match the query, only accurate up to 10,000.
  int? totalCount;

  ///  The url property
  String? url;

  /// Instantiates a new [SearchGetResponse] and sets the default values.
  SearchGetResponse() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SearchGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
    return SearchGetResponse();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<Invoice>(
            Invoice.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['next_page'] = (node) => nextPage = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SearchGetResponseObject>((stringValue) =>
            SearchGetResponseObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['total_count'] = (node) => totalCount = node.getIntValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<Invoice>('data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeStringValue('next_page', nextPage);
    writer.writeEnumValue<SearchGetResponseObject>(
        'object', object, (e) => e?.value);
    writer.writeIntValue('total_count', totalCount);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
