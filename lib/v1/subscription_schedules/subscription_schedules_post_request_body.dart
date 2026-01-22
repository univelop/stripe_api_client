// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_billing_mode.dart';
import './subscription_schedules_post_request_body_default_settings.dart';
import './subscription_schedules_post_request_body_end_behavior.dart';
import './subscription_schedules_post_request_body_phases.dart';
import './subscription_schedules_post_request_body_start_date.dart';

/// auto generated
class SubscriptionSchedulesPostRequestBody implements Parsable {
  ///  Controls how prorations and invoices for subscriptions are calculated and orchestrated.
  SubscriptionSchedulesPostRequestBodyBillingMode? billingMode;

  ///  The identifier of the customer to create the subscription schedule for.
  String? customer;

  ///  The identifier of the account to create the subscription schedule for.
  String? customerAccount;

  ///  Object representing the subscription schedule's default settings.
  SubscriptionSchedulesPostRequestBodyDefaultSettings? defaultSettings;

  ///  Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
  SubscriptionSchedulesPostRequestBodyEndBehavior? endBehavior;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription's item(s), set to auto-renew using the subscription's interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
  String? fromSubscription;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
  Iterable<SubscriptionSchedulesPostRequestBodyPhases>? phases;

  ///  When the subscription schedule starts. We recommend using `now` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on.
  SubscriptionSchedulesPostRequestBodyStartDate? startDate;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionSchedulesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_mode'] = (node) => billingMode =
        node.getObjectValue<SubscriptionSchedulesPostRequestBodyBillingMode>(
            SubscriptionSchedulesPostRequestBodyBillingMode
                .createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['default_settings'] = (node) => defaultSettings = node
        .getObjectValue<SubscriptionSchedulesPostRequestBodyDefaultSettings>(
            SubscriptionSchedulesPostRequestBodyDefaultSettings
                .createFromDiscriminatorValue);
    deserializerMap['end_behavior'] = (node) => endBehavior =
        node.getEnumValue<SubscriptionSchedulesPostRequestBodyEndBehavior>(
            (stringValue) => SubscriptionSchedulesPostRequestBodyEndBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['from_subscription'] =
        (node) => fromSubscription = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['phases'] = (node) => phases =
        node.getCollectionOfObjectValues<
                SubscriptionSchedulesPostRequestBodyPhases>(
            SubscriptionSchedulesPostRequestBodyPhases
                .createFromDiscriminatorValue);
    deserializerMap['start_date'] = (node) => startDate =
        node.getObjectValue<SubscriptionSchedulesPostRequestBodyStartDate>(
            SubscriptionSchedulesPostRequestBodyStartDate
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionSchedulesPostRequestBodyBillingMode>(
        'billing_mode', billingMode);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer
        .writeObjectValue<SubscriptionSchedulesPostRequestBodyDefaultSettings>(
            'default_settings', defaultSettings);
    writer.writeEnumValue<SubscriptionSchedulesPostRequestBodyEndBehavior>(
        'end_behavior', endBehavior, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('from_subscription', fromSubscription);
    writer.writeStringValue('metadata', metadata);
    writer.writeCollectionOfObjectValues<
        SubscriptionSchedulesPostRequestBodyPhases>('phases', phases);
    writer.writeObjectValue<SubscriptionSchedulesPostRequestBodyStartDate>(
        'start_date', startDate);
  }
}
