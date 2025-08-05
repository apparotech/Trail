import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Trail extends StatelessWidget {
  const Trail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             width: MediaQuery.of(context).size.width,
             height: 250,
             decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage('assets/images/Intersect.png',

                   ),
                 fit: BoxFit.cover
               )
             ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
               child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Container(
                     width: 130,
                     height: 50,

                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30), // Pill shape
                     ),
                     child: Row(

                       children: [
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 5),
                           child: Container(
                             width: 40,
                             height: 40,
                            decoration: BoxDecoration(
                            color:  Color(0xFF004D4D),
                              borderRadius: BorderRadius.circular(30)
                            ),
                             child: Center(child: Text('1',
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold
                               ),
                             ),),
                           ),
                         ),

                         Column(
                           children: [
                             SizedBox(height: 5,),
                             Text('Trial Point',
                               style: TextStyle(
                                 fontSize: 12
                               ),
                             ),
                             Text('Available',
                               style: TextStyle(
                                 color: Colors.green,
                                 fontSize: 16
                               ),
                             )
                           ],
                         )
                       ],
                     )
                   ),

                   SizedBox(width: 200),
                  Icon(Icons.search, size: 20, color: Colors.white,),
                   SizedBox(width: 10,),

                   
                   


                 ],
               ),
             )

           ),
            // Heading
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Point Drop Party',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),

            // Subheading + See All
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trail Packs At Reduce Price',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {
                      print("See All clicked");
                    },
                    child: Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.teal[900]),
                        ),
                        const SizedBox(width: 6),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.teal[900],
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Two cards in one row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: buildProductCard(),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: buildProductCard(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Product Card Widget

  Widget buildProductCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/image1.png',
                height: 206,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Simple',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          // Subtitle
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Refreshing Face Wash',
              style: TextStyle(color: Colors.grey),
            ),
          ),

          // Rating, size & button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 1),
                      Text(
                        "4.3",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 1),
                      Container(
                        height: 20,
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(width: 1),
                      Text(
                        "25 ml",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 3),

                // Try Button
                Expanded(
                  child: ElevatedButton(
                     onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF004D4D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                    ),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max, // full space le
                      mainAxisAlignment: MainAxisAlignment.start, // center me rakho
                      children: [
                        Text('Try',
                          style: TextStyle(
                            color: Colors.white, fontSize: 10
                          ),
                          overflow: TextOverflow.ellipsis,
                          
                        ),
                         SizedBox(width: 4,),
                         Icon(Icons.add, color: Colors.white,)
                         // overflow kaat de
                      ],
                    ),
                  ),
                )


              ],
            ),
          )
        ],
      ),
    );
  }



// Product Card Widget


}
