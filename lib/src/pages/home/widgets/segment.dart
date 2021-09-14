import 'package:flutter/material.dart';

class SegmentTitle extends StatelessWidget {
  const SegmentTitle({Key key, this.page = 0, this.onTap}) : super(key: key);
  final int page;
  final Function onTap;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          InkWell(
            onTap: () => onTap(0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: page == 0
                        ? const Color(0xff6630DE)
                        : Colors.transparent,
                  ),
                ),
                Text(
                  "Descubrir",
                  style: TextStyle(
                    color: page == 0 ? Colors.white : const Color(0xff707070),
                    fontSize: page == 0 ? 24 : 16,
                    fontWeight: page == 0 ? FontWeight.bold : FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: () => onTap(1),
            child: Row(
              children: <Widget>[
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: page == 1
                        ? const Color(0xff6630DE)
                        : Colors.transparent,
                  ),
                ),
                Text(
                  "Siguiendo",
                  style: TextStyle(
                    color: page == 1 ? Colors.white : const Color(0xff707070),
                    fontSize: page == 1 ? 24 : 16,
                    fontWeight: page == 1 ? FontWeight.bold : FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      );
}
