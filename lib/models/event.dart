// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './event_object.dart';
import './notification_event_data.dart';
import './notification_event_request.dart';

/// auto generated
/// Snapshot events allow you to track and react to activity in your Stripe integration. Whenthe state of another API resource changes, Stripe creates an `Event` object that containsall the relevant information associated with that action, including the affected APIresource. For example, a successful payment triggers a `charge.succeeded` event, whichcontains the `Charge` in the event's data property. Some actions trigger multiple events.For example, if you create a new subscription for a customer, it triggers both a`customer.subscription.created` event and a `charge.succeeded` event.Configure an event destination in your account to listen for events that represent actionsyour integration needs to respond to. Additionally, you can retrieve an individual event ora list of events from the API.[Connect](https://docs.stripe.com/connect) platforms can also receive event notificationsthat occur in their connected accounts. These events include an account attribute thatidentifies the relevant connected account.You can access events through the [Retrieve Event API](https://docs.stripe.com/api/events#retrieve_event)for 30 days.
class Event implements AdditionalDataHolder, Parsable {
  ///  The connected account that originates the event.
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Stripe API version used to render `data` when the event was created. The contents of `data` never change, so this value remains static regardless of the API version currently in use. This property is populated only for events created on or after October 31, 2014.
  String? apiVersion;

  ///  Authentication context needed to fetch the event or related object.
  String? context;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The data property
  NotificationEventData? data;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  EventObject? object;

  ///  Number of webhooks that haven't been successfully delivered (for example, to return a 20x response) to the URLs you specify.
  int? pendingWebhooks;

  ///  Information on the API request that triggers the event.
  NotificationEventRequest? request;

  ///  Description of the event (for example, `invoice.created` or `charge.refunded`).
  String? type_;

  /// Instantiates a new [Event] and sets the default values.
  Event() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Event createFromDiscriminatorValue(ParseNode parseNode) {
    return Event();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['api_version'] =
        (node) => apiVersion = node.getStringValue();
    deserializerMap['context'] = (node) => context = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['data'] = (node) => data =
        node.getObjectValue<NotificationEventData>(
            NotificationEventData.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<EventObject>((stringValue) => EventObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['pending_webhooks'] =
        (node) => pendingWebhooks = node.getIntValue();
    deserializerMap['request'] = (node) => request =
        node.getObjectValue<NotificationEventRequest>(
            NotificationEventRequest.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeStringValue('api_version', apiVersion);
    writer.writeStringValue('context', context);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<NotificationEventData>('data', data);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<EventObject>('object', object, (e) => e?.value);
    writer.writeIntValue('pending_webhooks', pendingWebhooks);
    writer.writeObjectValue<NotificationEventRequest>('request', request);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
