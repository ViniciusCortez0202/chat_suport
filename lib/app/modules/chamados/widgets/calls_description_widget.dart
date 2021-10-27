import 'package:flutter/material.dart';
import 'package:projeto_chat_suporte/app/modules/model/enums/status_enum.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

class CallsDescription extends StatelessWidget {
  final CallModel call;
  const CallsDescription({required this.call});

  @override
  Widget build(BuildContext context) {
  
    return Container(
        child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          backgroundImage:
              NetworkImage(call.suport.profilePicture),
          radius: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.70,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  call.title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF977f7d)),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  call.job,
                  style: TextStyle(color: Colors.blueGrey[500]),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  call.dateOpen,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
        Icon(
          Icons.circle,
          color: call.status.types,
        )
      ],
    ));
  }
}
