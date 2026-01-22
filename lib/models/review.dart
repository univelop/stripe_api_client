// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './radar_review_resource_location.dart';
import './radar_review_resource_session.dart';
import './review_charge.dart';
import './review_closed_reason.dart';
import './review_object.dart';
import './review_opened_reason.dart';
import './review_payment_intent.dart';

/// auto generated
/// Reviews can be used to supplement automated fraud detection with human expertise.Learn more about [Radar](/radar) and reviewing payments[here](https://docs.stripe.com/radar/reviews).
class Review implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ZIP or postal code of the card used, if applicable.
  String? billingZip;

  ///  The charge associated with this review.
  ReviewCharge? charge;

  ///  The reason the review was closed, or null if it has not yet been closed. One of `approved`, `refunded`, `refunded_as_fraud`, `disputed`, `redacted`, `canceled`, `payment_never_settled`, or `acknowledged`.
  ReviewClosedReason? closedReason;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  The IP address where the payment originated.
  String? ipAddress;

  ///  Information related to the location of the payment. Note that this information is an approximation and attempts to locate the nearest population center - it should not be used to determine a specific address.
  RadarReviewResourceLocation? ipAddressLocation;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  ReviewObject? object;

  ///  If `true`, the review needs action.
  bool? open;

  ///  The reason the review was opened. One of `rule` or `manual`.
  ReviewOpenedReason? openedReason;

  ///  The PaymentIntent ID associated with this review, if one exists.
  ReviewPaymentIntent? paymentIntent;

  ///  The reason the review is currently open or closed. One of `rule`, `manual`, `approved`, `refunded`, `refunded_as_fraud`, `disputed`, `redacted`, `canceled`, `payment_never_settled`, or `acknowledged`.
  String? reason;

  ///  Information related to the browsing session of the user who initiated the payment.
  RadarReviewResourceSession? session;

  /// Instantiates a new [Review] and sets the default values.
  Review() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Review createFromDiscriminatorValue(ParseNode parseNode) {
    return Review();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_zip'] =
        (node) => billingZip = node.getStringValue();
    deserializerMap['charge'] = (node) => charge =
        node.getObjectValue<ReviewCharge>(
            ReviewCharge.createFromDiscriminatorValue);
    deserializerMap['closed_reason'] = (node) => closedReason =
        node.getEnumValue<ReviewClosedReason>((stringValue) =>
            ReviewClosedReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['ip_address_location'] = (node) => ipAddressLocation =
        node.getObjectValue<RadarReviewResourceLocation>(
            RadarReviewResourceLocation.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ReviewObject>((stringValue) => ReviewObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['open'] = (node) => open = node.getBoolValue();
    deserializerMap['opened_reason'] = (node) => openedReason =
        node.getEnumValue<ReviewOpenedReason>((stringValue) =>
            ReviewOpenedReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<ReviewPaymentIntent>(
            ReviewPaymentIntent.createFromDiscriminatorValue);
    deserializerMap['reason'] = (node) => reason = node.getStringValue();
    deserializerMap['session'] = (node) => session =
        node.getObjectValue<RadarReviewResourceSession>(
            RadarReviewResourceSession.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('billing_zip', billingZip);
    writer.writeObjectValue<ReviewCharge>('charge', charge);
    writer.writeEnumValue<ReviewClosedReason>(
        'closed_reason', closedReason, (e) => e?.value);
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeObjectValue<RadarReviewResourceLocation>(
        'ip_address_location', ipAddressLocation);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ReviewObject>('object', object, (e) => e?.value);
    writer.writeBoolValue('open', value: open);
    writer.writeEnumValue<ReviewOpenedReason>(
        'opened_reason', openedReason, (e) => e?.value);
    writer.writeObjectValue<ReviewPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeStringValue('reason', reason);
    writer.writeObjectValue<RadarReviewResourceSession>('session', session);
    writer.writeAdditionalData(additionalData);
  }
}
