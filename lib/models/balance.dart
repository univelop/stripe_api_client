// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_amount.dart';
import './balance_amount_net.dart';
import './balance_detail.dart';
import './balance_detail_ungated.dart';
import './balance_object.dart';

/// auto generated
/// This is an object representing your Stripe balance. You can retrieve it to seethe balance currently on your Stripe account.The top-level `available` and `pending` comprise your "payments balance."Related guide: [Balances and settlement time](https://docs.stripe.com/payments/balances), [Understanding Connect account balances](https://docs.stripe.com/connect/account-balances)
class Balance implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Available funds that you can transfer or pay out automatically by Stripe or explicitly through the [Transfers API](https://api.stripe.com#transfers) or [Payouts API](https://api.stripe.com#payouts). You can find the available balance for each currency and payment type in the `source_types` property.
  Iterable<BalanceAmount>? available;

  ///  Funds held due to negative balances on connected accounts where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. You can find the connect reserve balance for each currency and payment type in the `source_types` property.
  Iterable<BalanceAmount>? connectReserved;

  ///  Funds that you can pay out using Instant Payouts.
  Iterable<BalanceAmountNet>? instantAvailable;

  ///  The issuing property
  BalanceDetail? issuing;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  BalanceObject? object;

  ///  Funds that aren't available in the balance yet. You can find the pending balance for each currency and each payment type in the `source_types` property.
  Iterable<BalanceAmount>? pending;

  ///  The refund_and_dispute_prefunding property
  BalanceDetailUngated? refundAndDisputePrefunding;

  /// Instantiates a new [Balance] and sets the default values.
  Balance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Balance createFromDiscriminatorValue(ParseNode parseNode) {
    return Balance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available'] = (node) => available =
        node.getCollectionOfObjectValues<BalanceAmount>(
            BalanceAmount.createFromDiscriminatorValue);
    deserializerMap['connect_reserved'] = (node) => connectReserved =
        node.getCollectionOfObjectValues<BalanceAmount>(
            BalanceAmount.createFromDiscriminatorValue);
    deserializerMap['instant_available'] = (node) => instantAvailable =
        node.getCollectionOfObjectValues<BalanceAmountNet>(
            BalanceAmountNet.createFromDiscriminatorValue);
    deserializerMap['issuing'] = (node) => issuing =
        node.getObjectValue<BalanceDetail>(
            BalanceDetail.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<BalanceObject>((stringValue) => BalanceObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['pending'] = (node) => pending =
        node.getCollectionOfObjectValues<BalanceAmount>(
            BalanceAmount.createFromDiscriminatorValue);
    deserializerMap['refund_and_dispute_prefunding'] = (node) =>
        refundAndDisputePrefunding = node.getObjectValue<BalanceDetailUngated>(
            BalanceDetailUngated.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<BalanceAmount>('available', available);
    writer.writeCollectionOfObjectValues<BalanceAmount>(
        'connect_reserved', connectReserved);
    writer.writeCollectionOfObjectValues<BalanceAmountNet>(
        'instant_available', instantAvailable);
    writer.writeObjectValue<BalanceDetail>('issuing', issuing);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<BalanceObject>('object', object, (e) => e?.value);
    writer.writeCollectionOfObjectValues<BalanceAmount>('pending', pending);
    writer.writeObjectValue<BalanceDetailUngated>(
        'refund_and_dispute_prefunding', refundAndDisputePrefunding);
    writer.writeAdditionalData(additionalData);
  }
}
