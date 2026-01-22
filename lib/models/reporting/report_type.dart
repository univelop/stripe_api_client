// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_type_object.dart';

/// auto generated
/// The Report Type resource corresponds to a particular type of report, such asthe "Activity summary" or "Itemized payouts" reports. These objects areidentified by an ID belonging to a set of enumerated values. See[API Access to Reports documentation](https://docs.stripe.com/reporting/statements/api)for those Report Type IDs, along with required and optional parameters.Note that certain report types can only be run based on your live-mode data (not test-modedata), and will error when queried without a [live-mode API key](https://docs.stripe.com/keys#test-live-modes).
class ReportType implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Most recent time for which this Report Type is available. Measured in seconds since the Unix epoch.
  int? dataAvailableEnd;

  ///  Earliest time for which this Report Type is available. Measured in seconds since the Unix epoch.
  int? dataAvailableStart;

  ///  List of column names that are included by default when this Report Type gets run. (If the Report Type doesn't support the `columns` parameter, this will be null.)
  Iterable<String>? defaultColumns;

  ///  The [ID of the Report Type](https://docs.stripe.com/reporting/statements/api#available-report-types), such as `balance.summary.1`.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Human-readable name of the Report Type
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  ReportTypeObject? object;

  ///  When this Report Type was latest updated. Measured in seconds since the Unix epoch.
  int? updated;

  ///  Version of the Report Type. Different versions report with the same ID will have the same purpose, but may take different run parameters or have different result schemas.
  int? version;

  /// Instantiates a new [ReportType] and sets the default values.
  ReportType() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportType createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportType();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data_available_end'] =
        (node) => dataAvailableEnd = node.getIntValue();
    deserializerMap['data_available_start'] =
        (node) => dataAvailableStart = node.getIntValue();
    deserializerMap['default_columns'] = (node) =>
        defaultColumns = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<ReportTypeObject>((stringValue) => ReportTypeObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['updated'] = (node) => updated = node.getIntValue();
    deserializerMap['version'] = (node) => version = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('data_available_end', dataAvailableEnd);
    writer.writeIntValue('data_available_start', dataAvailableStart);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'default_columns', defaultColumns);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<ReportTypeObject>('object', object, (e) => e?.value);
    writer.writeIntValue('updated', updated);
    writer.writeIntValue('version', version);
    writer.writeAdditionalData(additionalData);
  }
}
