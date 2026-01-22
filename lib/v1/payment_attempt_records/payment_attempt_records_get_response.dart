// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/payment_attempt_record.dart';
import './payment_attempt_records_get_response_object.dart';

/// auto generated
/// A list of PaymentAttemptRecords.
class PaymentAttemptRecordsGetResponse
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The data property
  Iterable<PaymentAttemptRecord>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  PaymentAttemptRecordsGetResponseObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [PaymentAttemptRecordsGetResponse] and sets the default values.
  PaymentAttemptRecordsGetResponse() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentAttemptRecordsGetResponse createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentAttemptRecordsGetResponse();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<PaymentAttemptRecord>(
            PaymentAttemptRecord.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentAttemptRecordsGetResponseObject>(
            (stringValue) => PaymentAttemptRecordsGetResponseObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<PaymentAttemptRecord>('data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<PaymentAttemptRecordsGetResponseObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
