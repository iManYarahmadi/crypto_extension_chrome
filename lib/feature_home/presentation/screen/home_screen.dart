
import 'package:cryptoextention/feature_home/presentation/screen/widgets/balance_card.dart';
import 'package:cryptoextention/feature_home/presentation/screen/widgets/live_prices.dart';
import 'package:flutter/material.dart';

class CryptoStatsPage extends StatelessWidget {
  const CryptoStatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return  SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 25),
            LivePrices(),

          ],
        ),
      ),
    );
  }
}
