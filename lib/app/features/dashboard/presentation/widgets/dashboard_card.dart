import 'package:flutter/material.dart';
import 'package:spinner/app/helpers/size.dart';
import 'package:spinner/app/styles/colors.dart';
import 'package:spinner/app/styles/fonts.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    Key? key,
    required this.status,
    required this.state,
    required this.name,
    required this.createdAt,
    required this.image,
    required this.portType,
    required this.port,
  }) : super(key: key);

  final String status;
  final String state;
  final String name;
  final String image;
  final int createdAt;
  final String portType;
  final int port;

  @override
  Widget build(BuildContext context) {
    SizeHelper sh = SizeHelper(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: secondaryBlue,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: nameFont,
              ),
              SizedBox(
                height: sh.hHelper(0.5),
              ),
              Text(
                state.toUpperCase(),
                style: stateFont,
              ),
              SizedBox(
                height: sh.hHelper(0.5),
              ),
              port != 0
                  ? RichText(
                      text: TextSpan(
                        style: portTextFont,
                        children: <TextSpan>[
                          TextSpan(text: '${portType.toUpperCase()} port at '),
                          TextSpan(text: '$port', style: portFont),
                        ],
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

/*
{
‘id’: '8fd025f4da42f0694ffcf2cbd3ba04f82df9e7b8fff4c6784e6588bb3dcf88cb',
’name’: 'frosty_tereshkova' ,
’image: 'redis',
’created’: 1658660078,
’port’: { PrivatePort: 6379, Type: 'tcp' },
’state’: 'running',
’status’: 'Up 12 minutes',
}
*/