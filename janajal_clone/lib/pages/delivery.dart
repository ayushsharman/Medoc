import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:janajal_clone/utils/icons.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

void _handlePaymentSuccess(PaymentSuccessResponse response) {
  Fluttertoast.showToast(
    msg: 'SUCCESS PAYMENT: ${response.paymentId}',
    timeInSecForIosWeb: 4,
  );
}

void _handlePaymentError(PaymentFailureResponse response) {
  Fluttertoast.showToast(
    msg: 'ERROR HERE: ${response.code}-${response.message}',
    timeInSecForIosWeb: 4,
  );
}

void _handleExternalWallet(ExternalWalletResponse response) {
  Fluttertoast.showToast(
    msg: 'EXTERNAL WALLET: ${response.walletName}',
    timeInSecForIosWeb: 4,
  );
}

class MyDelivery extends StatefulWidget {
  const MyDelivery({Key? key}) : super(key: key);

  @override
  State<MyDelivery> createState() => _MyDeliveryState();
}

class _MyDeliveryState extends State<MyDelivery> {
  Razorpay? _razorpay;
  late SingleValueDropDownController _cnt;
  TextEditingController _dateInputController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  String selectedValue = "";

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    _dateInputController.text = "";
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void dispose() {
    _cnt.dispose();
    _razorpay?.clear();
    _dateInputController.clear();
    _quantityController.clear();
    super.dispose();
  }

  void makePayment() async {
    var options = {
      'key': '',
      'amount': 100,
      'name': 'Janadhara',
      'description': 'Water enterprises',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'}
    };

    try {
      _razorpay?.open(options);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueGrey[600],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Order",
          style: TextStyle(
            color: Colors.blueGrey[600],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: _quantityController,
              decoration: InputDecoration(
                  icon: Icon(Icons.water_drop),
                  labelText: 'Quantity',
                  hintText: 'Enter Water amount in litres'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: _dateInputController,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.calendar_today,
                ),
                labelText: "Enter Date",
              ),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100));

                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate);
                  setState(() {
                    _dateInputController.text = formattedDate;
                  });
                } else {}
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: DropDownTextField(
              textFieldDecoration: InputDecoration(
                icon: Icon(Icons.watch_later),
                hintText: "Select Delivery Window",
              ),
              controller: _cnt,
              clearOption: true,
              enableSearch: true,
              validator: (value) {
                if (value == null) {
                  return "Required field";
                } else {
                  return null;
                }
              },
              dropDownItemCount: 5,
              dropDownList: const [
                DropDownValueModel(
                  name: '7 AM - 9 AM',
                  value: "7-9",
                ),
                DropDownValueModel(
                  name: '9 AM - 11 AM',
                  value: "9-11",
                ),
                DropDownValueModel(
                  name: '11 AM - 2 PM',
                  value: "11-2",
                ),
                DropDownValueModel(
                  name: '2 PM - 5 PM',
                  value: "2-5",
                ),
                DropDownValueModel(
                  name: '5 PM - 7 PM',
                  value: "5-7",
                ),
              ],
              onChanged: (value) {
                setState(
                  () {
                    selectedValue = value;
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconButton(
                onpressed: 'gps',
                icon: Icons.location_on_rounded,
                heading: "Add GPS",
                subheading: "location",
                color: Colors.blueGrey,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    elevation: 5.0,
                    shadowColor: Colors.black,
                    backgroundColor: Colors.blue[800],
                  ),
                  onPressed: () {
                    makePayment();
                  },
                  child: Text(
                    'Place Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
