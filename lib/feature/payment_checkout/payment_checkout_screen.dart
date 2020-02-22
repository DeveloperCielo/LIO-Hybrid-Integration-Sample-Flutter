import 'package:flutter/material.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/model/payment_type.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/payment_checkout_presenter.dart';
import 'package:flutter_lio_integration/feature/payment_checkout/payment_checkout_view.dart';
import 'package:flutter_lio_integration/feature/products/model/product.dart';

class PaymentCheckoutScreen extends StatefulWidget {
  final Product product;

  const PaymentCheckoutScreen({Key key, this.product}) : super(key: key);

  @override
  _PaymentCheckoutScreenState createState() => _PaymentCheckoutScreenState();
}

class _PaymentCheckoutScreenState extends State<PaymentCheckoutScreen>
    implements PaymentCheckoutView {
  PaymentCheckoutPresenter presenter;
  String message = "";

  @override
  void initState() {
    super.initState();
    presenter = PaymentCheckoutPresenter(this.widget.product);
    presenter.setView(this);
    presenter.startListener();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter-LIO"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              widget.product.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Quantidade: ${widget.product.quantity}"),
            SizedBox(
              height: 10,
            ),
            Text("Preço: R\$ ${widget.product.unitPrice.roundToDouble()}"),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                height: 50.0,
                minWidth: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "Crédito Avista",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    presenter.checkout(
                        PaymentType.CREDITO_AVISTA, widget.product);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                height: 50.0,
                minWidth: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    "Débito Avista",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    presenter.checkout(
                        PaymentType.DEBITO_AVISTA, widget.product);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                  child: Text(
                    message,
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void showMessage(String message) {
    setState(() {
      this.message = message;
    });
  }
}
