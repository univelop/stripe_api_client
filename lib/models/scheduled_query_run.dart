// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './file.dart';
import './scheduled_query_run_object.dart';
import './sigma_scheduled_query_run_error.dart';

/// auto generated
/// If you have [scheduled a Sigma query](https://docs.stripe.com/sigma/scheduled-queries), you'llreceive a `sigma.scheduled_query_run.created` webhook each time the queryruns. The webhook contains a `ScheduledQueryRun` object, which you can use toretrieve the query results.
class ScheduledQueryRun implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  When the query was run, Sigma contained a snapshot of your Stripe data at this time.
  int? dataLoadTime;

  ///  The error property
  SigmaScheduledQueryRunError? error;

  ///  The file object representing the results of the query.
  File? file;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  ScheduledQueryRunObject? object;

  ///  Time at which the result expires and is no longer available for download.
  int? resultAvailableUntil;

  ///  SQL for the query.
  String? sql;

  ///  The query's execution status, which will be `completed` for successful runs, and `canceled`, `failed`, or `timed_out` otherwise.
  String? status;

  ///  Title of the query.
  String? title;

  /// Instantiates a new [ScheduledQueryRun] and sets the default values.
  ScheduledQueryRun() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ScheduledQueryRun createFromDiscriminatorValue(ParseNode parseNode) {
    return ScheduledQueryRun();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['data_load_time'] =
        (node) => dataLoadTime = node.getIntValue();
    deserializerMap['error'] = (node) => error =
        node.getObjectValue<SigmaScheduledQueryRunError>(
            SigmaScheduledQueryRunError.createFromDiscriminatorValue);
    deserializerMap['file'] = (node) =>
        file = node.getObjectValue<File>(File.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ScheduledQueryRunObject>((stringValue) =>
            ScheduledQueryRunObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['result_available_until'] =
        (node) => resultAvailableUntil = node.getIntValue();
    deserializerMap['sql'] = (node) => sql = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['title'] = (node) => title = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeIntValue('data_load_time', dataLoadTime);
    writer.writeObjectValue<SigmaScheduledQueryRunError>('error', error);
    writer.writeObjectValue<File>('file', file);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ScheduledQueryRunObject>(
        'object', object, (e) => e?.value);
    writer.writeIntValue('result_available_until', resultAvailableUntil);
    writer.writeStringValue('sql', sql);
    writer.writeStringValue('status', status);
    writer.writeStringValue('title', title);
    writer.writeAdditionalData(additionalData);
  }
}
