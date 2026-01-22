// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../billing_clocks_resource_status_details_status_details.dart';
import './test_clock_object.dart';
import './test_clock_status.dart';

/// auto generated
/// A test clock enables deterministic control over objects in testmode. With a test clock, you can createobjects at a frozen time in the past or future, and advance to a specific future time to observe webhooks and state changes. After the clock advances,you can either validate the current state of your scenario (and test your assumptions), change the current state of your scenario (and test more complex scenarios), or keep advancing forward in time.
class TestClock implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Time at which this clock is scheduled to auto delete.
  int? deletesAfter;

  ///  Time at which all objects belonging to this clock are frozen.
  int? frozenTime;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The custom name supplied at creation.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  TestClockObject? object;

  ///  The status of the Test Clock.
  TestClockStatus? status;

  ///  The status_details property
  BillingClocksResourceStatusDetailsStatusDetails? statusDetails;

  /// Instantiates a new [TestClock] and sets the default values.
  TestClock() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TestClock createFromDiscriminatorValue(ParseNode parseNode) {
    return TestClock();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['deletes_after'] =
        (node) => deletesAfter = node.getIntValue();
    deserializerMap['frozen_time'] = (node) => frozenTime = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<TestClockObject>((stringValue) => TestClockObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status'] = (node) => status = node
        .getEnumValue<TestClockStatus>((stringValue) => TestClockStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status_details'] = (node) => statusDetails =
        node.getObjectValue<BillingClocksResourceStatusDetailsStatusDetails>(
            BillingClocksResourceStatusDetailsStatusDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeIntValue('deletes_after', deletesAfter);
    writer.writeIntValue('frozen_time', frozenTime);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<TestClockObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<TestClockStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<BillingClocksResourceStatusDetailsStatusDetails>(
        'status_details', statusDetails);
    writer.writeAdditionalData(additionalData);
  }
}
