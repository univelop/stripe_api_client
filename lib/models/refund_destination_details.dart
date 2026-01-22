// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './destination_details_unimplemented.dart';
import './refund_destination_details_blik.dart';
import './refund_destination_details_br_bank_transfer.dart';
import './refund_destination_details_card.dart';
import './refund_destination_details_crypto.dart';
import './refund_destination_details_eu_bank_transfer.dart';
import './refund_destination_details_gb_bank_transfer.dart';
import './refund_destination_details_jp_bank_transfer.dart';
import './refund_destination_details_mb_way.dart';
import './refund_destination_details_multibanco.dart';
import './refund_destination_details_mx_bank_transfer.dart';
import './refund_destination_details_p24.dart';
import './refund_destination_details_paypal.dart';
import './refund_destination_details_swish.dart';
import './refund_destination_details_th_bank_transfer.dart';
import './refund_destination_details_us_bank_transfer.dart';

/// auto generated
class RefundDestinationDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  DestinationDetailsUnimplemented? affirm;

  ///  The afterpay_clearpay property
  DestinationDetailsUnimplemented? afterpayClearpay;

  ///  The alipay property
  DestinationDetailsUnimplemented? alipay;

  ///  The alma property
  DestinationDetailsUnimplemented? alma;

  ///  The amazon_pay property
  DestinationDetailsUnimplemented? amazonPay;

  ///  The au_bank_transfer property
  DestinationDetailsUnimplemented? auBankTransfer;

  ///  The blik property
  RefundDestinationDetailsBlik? blik;

  ///  The br_bank_transfer property
  RefundDestinationDetailsBrBankTransfer? brBankTransfer;

  ///  The card property
  RefundDestinationDetailsCard? card;

  ///  The cashapp property
  DestinationDetailsUnimplemented? cashapp;

  ///  The crypto property
  RefundDestinationDetailsCrypto? crypto;

  ///  The customer_cash_balance property
  DestinationDetailsUnimplemented? customerCashBalance;

  ///  The eps property
  DestinationDetailsUnimplemented? eps;

  ///  The eu_bank_transfer property
  RefundDestinationDetailsEuBankTransfer? euBankTransfer;

  ///  The gb_bank_transfer property
  RefundDestinationDetailsGbBankTransfer? gbBankTransfer;

  ///  The giropay property
  DestinationDetailsUnimplemented? giropay;

  ///  The grabpay property
  DestinationDetailsUnimplemented? grabpay;

  ///  The jp_bank_transfer property
  RefundDestinationDetailsJpBankTransfer? jpBankTransfer;

  ///  The klarna property
  DestinationDetailsUnimplemented? klarna;

  ///  The mb_way property
  RefundDestinationDetailsMbWay? mbWay;

  ///  The multibanco property
  RefundDestinationDetailsMultibanco? multibanco;

  ///  The mx_bank_transfer property
  RefundDestinationDetailsMxBankTransfer? mxBankTransfer;

  ///  The nz_bank_transfer property
  DestinationDetailsUnimplemented? nzBankTransfer;

  ///  The p24 property
  RefundDestinationDetailsP24? p24;

  ///  The paynow property
  DestinationDetailsUnimplemented? paynow;

  ///  The paypal property
  RefundDestinationDetailsPaypal? paypal;

  ///  The pix property
  DestinationDetailsUnimplemented? pix;

  ///  The revolut property
  DestinationDetailsUnimplemented? revolut;

  ///  The sofort property
  DestinationDetailsUnimplemented? sofort;

  ///  The swish property
  RefundDestinationDetailsSwish? swish;

  ///  The th_bank_transfer property
  RefundDestinationDetailsThBankTransfer? thBankTransfer;

  ///  The twint property
  DestinationDetailsUnimplemented? twint;

  ///  The type of transaction-specific details of the payment method used in the refund (e.g., `card`). An additional hash is included on `destination_details` with a name matching this value. It contains information specific to the refund transaction.
  String? type_;

  ///  The us_bank_transfer property
  RefundDestinationDetailsUsBankTransfer? usBankTransfer;

  ///  The wechat_pay property
  DestinationDetailsUnimplemented? wechatPay;

  ///  The zip property
  DestinationDetailsUnimplemented? zip;

  /// Instantiates a new [RefundDestinationDetails] and sets the default values.
  RefundDestinationDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundDestinationDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundDestinationDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['au_bank_transfer'] = (node) => auBankTransfer =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<RefundDestinationDetailsBlik>(
            RefundDestinationDetailsBlik.createFromDiscriminatorValue);
    deserializerMap['br_bank_transfer'] = (node) => brBankTransfer =
        node.getObjectValue<RefundDestinationDetailsBrBankTransfer>(
            RefundDestinationDetailsBrBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<RefundDestinationDetailsCard>(
            RefundDestinationDetailsCard.createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<RefundDestinationDetailsCrypto>(
            RefundDestinationDetailsCrypto.createFromDiscriminatorValue);
    deserializerMap['customer_cash_balance'] = (node) => customerCashBalance =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['eu_bank_transfer'] = (node) => euBankTransfer =
        node.getObjectValue<RefundDestinationDetailsEuBankTransfer>(
            RefundDestinationDetailsEuBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['gb_bank_transfer'] = (node) => gbBankTransfer =
        node.getObjectValue<RefundDestinationDetailsGbBankTransfer>(
            RefundDestinationDetailsGbBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['jp_bank_transfer'] = (node) => jpBankTransfer =
        node.getObjectValue<RefundDestinationDetailsJpBankTransfer>(
            RefundDestinationDetailsJpBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<RefundDestinationDetailsMbWay>(
            RefundDestinationDetailsMbWay.createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<RefundDestinationDetailsMultibanco>(
            RefundDestinationDetailsMultibanco.createFromDiscriminatorValue);
    deserializerMap['mx_bank_transfer'] = (node) => mxBankTransfer =
        node.getObjectValue<RefundDestinationDetailsMxBankTransfer>(
            RefundDestinationDetailsMxBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_transfer'] = (node) => nzBankTransfer =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<RefundDestinationDetailsP24>(
            RefundDestinationDetailsP24.createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<RefundDestinationDetailsPaypal>(
            RefundDestinationDetailsPaypal.createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['revolut'] = (node) => revolut =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<RefundDestinationDetailsSwish>(
            RefundDestinationDetailsSwish.createFromDiscriminatorValue);
    deserializerMap['th_bank_transfer'] = (node) => thBankTransfer =
        node.getObjectValue<RefundDestinationDetailsThBankTransfer>(
            RefundDestinationDetailsThBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['us_bank_transfer'] = (node) => usBankTransfer =
        node.getObjectValue<RefundDestinationDetailsUsBankTransfer>(
            RefundDestinationDetailsUsBankTransfer
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<DestinationDetailsUnimplemented>(
            DestinationDetailsUnimplemented.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<DestinationDetailsUnimplemented>('affirm', affirm);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('alipay', alipay);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('alma', alma);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'au_bank_transfer', auBankTransfer);
    writer.writeObjectValue<RefundDestinationDetailsBlik>('blik', blik);
    writer.writeObjectValue<RefundDestinationDetailsBrBankTransfer>(
        'br_bank_transfer', brBankTransfer);
    writer.writeObjectValue<RefundDestinationDetailsCard>('card', card);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'cashapp', cashapp);
    writer.writeObjectValue<RefundDestinationDetailsCrypto>('crypto', crypto);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'customer_cash_balance', customerCashBalance);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('eps', eps);
    writer.writeObjectValue<RefundDestinationDetailsEuBankTransfer>(
        'eu_bank_transfer', euBankTransfer);
    writer.writeObjectValue<RefundDestinationDetailsGbBankTransfer>(
        'gb_bank_transfer', gbBankTransfer);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'giropay', giropay);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'grabpay', grabpay);
    writer.writeObjectValue<RefundDestinationDetailsJpBankTransfer>(
        'jp_bank_transfer', jpBankTransfer);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('klarna', klarna);
    writer.writeObjectValue<RefundDestinationDetailsMbWay>('mb_way', mbWay);
    writer.writeObjectValue<RefundDestinationDetailsMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<RefundDestinationDetailsMxBankTransfer>(
        'mx_bank_transfer', mxBankTransfer);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'nz_bank_transfer', nzBankTransfer);
    writer.writeObjectValue<RefundDestinationDetailsP24>('p24', p24);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('paynow', paynow);
    writer.writeObjectValue<RefundDestinationDetailsPaypal>('paypal', paypal);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('pix', pix);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'revolut', revolut);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('sofort', sofort);
    writer.writeObjectValue<RefundDestinationDetailsSwish>('swish', swish);
    writer.writeObjectValue<RefundDestinationDetailsThBankTransfer>(
        'th_bank_transfer', thBankTransfer);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('twint', twint);
    writer.writeStringValue('type', type_);
    writer.writeObjectValue<RefundDestinationDetailsUsBankTransfer>(
        'us_bank_transfer', usBankTransfer);
    writer.writeObjectValue<DestinationDetailsUnimplemented>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<DestinationDetailsUnimplemented>('zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
