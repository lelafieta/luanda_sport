import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FanGamePage extends StatefulWidget {
  const FanGamePage({super.key});

  @override
  State<FanGamePage> createState() => _FanGamePageState();
}

class _FanGamePageState extends State<FanGamePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EasyDateTimeLine(
          initialDate: DateTime.now(),
          locale: "pt_BR",
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                  width: 2, color: Colors.grey.shade200),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(children: [
                                      ClipOval(
                                        child: CachedNetworkImage(
                                            width: 30,
                                            height: 30,
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                "https://template.canva.com/EAF1_XF3BJ4/2/0/1600w-dbetIJWoTcY.jpg"),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        "Dourada FC",
                                        style: TextStyle(),
                                      ),
                                    ]),
                                  ),
                                  Text("4")
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(children: [
                                      ClipOval(
                                        child: CachedNetworkImage(
                                            width: 30,
                                            height: 30,
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                "https://template.canva.com/EAGVBjukC4Q/1/0/1600w-2noOBANFgDY.jpg"),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        "Ell Fantasma",
                                        style: TextStyle(),
                                      ),
                                    ]),
                                  ),
                                  const Text("1")
                                ],
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "Fim",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemCount: 8,
            ),
          ),
        )
      ],
    );
  }
}
