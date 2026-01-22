// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedule_application.dart';
import './subscription_schedule_current_phase.dart';
import './subscription_schedule_customer.dart';
import './subscription_schedule_end_behavior.dart';
import './subscription_schedule_metadata.dart';
import './subscription_schedule_object.dart';
import './subscription_schedule_phase_configuration.dart';
import './subscription_schedule_status.dart';
import './subscription_schedule_subscription.dart';
import './subscription_schedule_test_clock.dart';
import './subscription_schedules_resource_default_settings.dart';
import './subscriptions_resource_billing_mode.dart';

/// auto generated
/// A subscription schedule allows you to create and manage the lifecycle of a subscription by predefining expected changes.Related guide: [Subscription schedules](https://docs.stripe.com/billing/subscriptions/subscription-schedules)
class SubscriptionSchedule implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the Connect Application that created the schedule.
  SubscriptionScheduleApplication? application;

  ///  The billing mode of the subscription.
  SubscriptionsResourceBillingMode? billingMode;

  ///  Time at which the subscription schedule was canceled. Measured in seconds since the Unix epoch.
  int? canceledAt;

  ///  Time at which the subscription schedule was completed. Measured in seconds since the Unix epoch.
  int? completedAt;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Object representing the start and end dates for the current phase of the subscription schedule, if it is `active`.
  SubscriptionScheduleCurrentPhase? currentPhase;

  ///  ID of the customer who owns the subscription schedule.
  SubscriptionScheduleCustomer? customer;

  ///  ID of the account who owns the subscription schedule.
  String? customerAccount;

  ///  The default_settings property
  SubscriptionSchedulesResourceDefaultSettings? defaultSettings;

  ///  Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
  SubscriptionScheduleEndBehavior? endBehavior;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  SubscriptionScheduleMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  SubscriptionScheduleObject? object;

  ///  Configuration for the subscription schedule's phases.
  Iterable<SubscriptionSchedulePhaseConfiguration>? phases;

  ///  Time at which the subscription schedule was released. Measured in seconds since the Unix epoch.
  int? releasedAt;

  ///  ID of the subscription once managed by the subscription schedule (if it is released).
  String? releasedSubscription;

  ///  The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://docs.stripe.com/billing/subscriptions/subscription-schedules).
  SubscriptionScheduleStatus? status;

  ///  ID of the subscription managed by the subscription schedule.
  SubscriptionScheduleSubscription? subscription;

  ///  ID of the test clock this subscription schedule belongs to.
  SubscriptionScheduleTestClock? testClock;

  /// Instantiates a new [SubscriptionSchedule] and sets the default values.
  SubscriptionSchedule() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedule createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionSchedule();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<SubscriptionScheduleApplication>(
            SubscriptionScheduleApplication.createFromDiscriminatorValue);
    deserializerMap['billing_mode'] = (node) => billingMode =
        node.getObjectValue<SubscriptionsResourceBillingMode>(
            SubscriptionsResourceBillingMode.createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['completed_at'] =
        (node) => completedAt = node.getIntValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['current_phase'] = (node) => currentPhase =
        node.getObjectValue<SubscriptionScheduleCurrentPhase>(
            SubscriptionScheduleCurrentPhase.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<SubscriptionScheduleCustomer>(
            SubscriptionScheduleCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['default_settings'] = (node) => defaultSettings =
        node.getObjectValue<SubscriptionSchedulesResourceDefaultSettings>(
            SubscriptionSchedulesResourceDefaultSettings
                .createFromDiscriminatorValue);
    deserializerMap['end_behavior'] = (node) => endBehavior =
        node.getEnumValue<SubscriptionScheduleEndBehavior>((stringValue) =>
            SubscriptionScheduleEndBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SubscriptionScheduleMetadata>(
            SubscriptionScheduleMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SubscriptionScheduleObject>((stringValue) =>
            SubscriptionScheduleObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['phases'] = (node) => phases = node
        .getCollectionOfObjectValues<SubscriptionSchedulePhaseConfiguration>(
            SubscriptionSchedulePhaseConfiguration
                .createFromDiscriminatorValue);
    deserializerMap['released_at'] = (node) => releasedAt = node.getIntValue();
    deserializerMap['released_subscription'] =
        (node) => releasedSubscription = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<SubscriptionScheduleStatus>((stringValue) =>
            SubscriptionScheduleStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscription'] = (node) => subscription =
        node.getObjectValue<SubscriptionScheduleSubscription>(
            SubscriptionScheduleSubscription.createFromDiscriminatorValue);
    deserializerMap['test_clock'] = (node) => testClock =
        node.getObjectValue<SubscriptionScheduleTestClock>(
            SubscriptionScheduleTestClock.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionScheduleApplication>(
        'application', application);
    writer.writeObjectValue<SubscriptionsResourceBillingMode>(
        'billing_mode', billingMode);
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeIntValue('completed_at', completedAt);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<SubscriptionScheduleCurrentPhase>(
        'current_phase', currentPhase);
    writer.writeObjectValue<SubscriptionScheduleCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<SubscriptionSchedulesResourceDefaultSettings>(
        'default_settings', defaultSettings);
    writer.writeEnumValue<SubscriptionScheduleEndBehavior>(
        'end_behavior', endBehavior, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<SubscriptionScheduleMetadata>('metadata', metadata);
    writer.writeEnumValue<SubscriptionScheduleObject>(
        'object', object, (e) => e?.value);
    writer
        .writeCollectionOfObjectValues<SubscriptionSchedulePhaseConfiguration>(
            'phases', phases);
    writer.writeIntValue('released_at', releasedAt);
    writer.writeStringValue('released_subscription', releasedSubscription);
    writer.writeEnumValue<SubscriptionScheduleStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<SubscriptionScheduleSubscription>(
        'subscription', subscription);
    writer.writeObjectValue<SubscriptionScheduleTestClock>(
        'test_clock', testClock);
    writer.writeAdditionalData(additionalData);
  }
}
