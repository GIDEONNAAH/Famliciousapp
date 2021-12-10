import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class timelIneview extends StatelessWidget {
  const timelIneview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timeline"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(UniconsLine.plus_square),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://picsum.photos/200/300?random=${index + 200}"),
                          ),
                        ),
                      );
                    });
              },
              child: Card(
                elevation: 5,
                shadowColor: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://picsum.photos/200/300?random=${index + 20}"),
                        ),
                        title: Text("Gibson Anderson"),
                        subtitle: Text("1 minute ago"),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      Text(
                          "That was the first time i flew out of Singapore in three years"),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://picsum.photos/200/300?random=${index + 200}",
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(UniconsLine.thumbs_up),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(UniconsLine.comment_message)
                            ],
                          ),
                          Icon(UniconsLine.telegram_alt)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 20),
    );
  }
}
