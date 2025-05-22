import 'package:assignment_2/widgets/country_card.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  const CountryList({super.key});
  final List<Map<String, String>> flags = const [
    {
      'country': 'Bangladesh',
      'flag': 'https://flagcdn.com/w320/bd.png',
      'description': 'A South Asian country with a rich cultural heritage.',
      'area': '147,570 km²',
      'capital': 'Dhaka',
      'currency': 'Taka',
    },
    {
      'country': 'Saudi Arabia',
      'flag': 'https://flagcdn.com/w320/sa.png',
      'description': 'The birthplace of Islam and home to Mecca and Medina.',
      'area': '2,149,690 km²',
      'capital': 'Riyadh',
      'currency': 'Riyal',
    },
    {
      'country': 'Indonesia',
      'flag': 'https://flagcdn.com/w320/id.png',
      'description':
          'The world’s largest Muslim-majority country by population.',
      'area': '1,904,569 km²',
      'capital': 'Jakarta',
      'currency': 'Rupiah',
    },
    {
      'country': 'Pakistan',
      'flag': 'https://flagcdn.com/w320/pk.png',
      'description':
          'A South Asian country with a diverse culture and history.',
      'area': '881,913 km²',
      'capital': 'Islamabad',
      'currency': 'Rupee',
    },
    {
      'country': 'Turkey',
      'flag': 'https://flagcdn.com/w320/tr.png',
      'description': 'A transcontinental country bridging Europe and Asia.',
      'area': '783,356 km²',
      'capital': 'Ankara',
      'currency': 'Lira',
    },
    {
      'country': 'Iran',
      'flag': 'https://flagcdn.com/w320/ir.png',
      'description': 'Known for its ancient Persian civilization and culture.',
      'area': '1,648,195 km²',
      'capital': 'Tehran',
      'currency': 'Rial',
    },
    {
      'country': 'Iraq',
      'flag': 'https://flagcdn.com/w320/iq.png',
      'description': 'Home to Mesopotamia, one of the earliest civilizations.',
      'area': '438,317 km²',
      'capital': 'Baghdad',
      'currency': 'Dinar',
    },
    {
      'country': 'Egypt',
      'flag': 'https://flagcdn.com/w320/eg.png',
      'description': 'Famous for its ancient pyramids and Nile river.',
      'area': '1,001,450 km²',
      'capital': 'Cairo',
      'currency': 'Pound',
    },
    {
      'country': 'Afghanistan',
      'flag': 'https://flagcdn.com/w320/af.png',
      'description': 'A mountainous country with rich tribal culture.',
      'area': '652,230 km²',
      'capital': 'Kabul',
      'currency': 'Afghani',
    },
    {
      'country': 'Malaysia',
      'flag': 'https://flagcdn.com/w320/my.png',
      'description':
          'A Southeast Asian country known for its diverse population.',
      'area': '330,803 km²',
      'capital': 'Kuala Lumpur',
      'currency': 'Ringgit',
    },
    {
      'country': 'Morocco',
      'flag': 'https://flagcdn.com/w320/ma.png',
      'description':
          'A North African country with vibrant culture and history.',
      'area': '446,550 km²',
      'capital': 'Rabat',
      'currency': 'Dirham',
    },
    {
      'country': 'Algeria',
      'flag': 'https://flagcdn.com/w320/dz.png',
      'description': 'The largest country in Africa by land area.',
      'area': '2,381,741 km²',
      'capital': 'Algiers',
      'currency': 'Dinar',
    },
    {
      'country': 'United Arab Emirates',
      'flag': 'https://flagcdn.com/w320/ae.png',
      'description': 'Known for modern cities like Dubai and Abu Dhabi.',
      'area': '83,600 km²',
      'capital': 'Abu Dhabi',
      'currency': 'Dirham',
    },
    {
      'country': 'Sudan',
      'flag': 'https://flagcdn.com/w320/sd.png',
      'description': 'Located in Northeast Africa with a rich history.',
      'area': '1,861,484 km²',
      'capital': 'Khartoum',
      'currency': 'Pound',
    },
    {
      'country': 'Qatar',
      'flag': 'https://flagcdn.com/w320/qa.png',
      'description':
          'A wealthy Gulf country known for its natural gas reserves.',
      'area': '11,586 km²',
      'capital': 'Doha',
      'currency': 'Riyal',
    },
    {
      'country': 'Oman',
      'flag': 'https://flagcdn.com/w320/om.png',
      'description': 'Known for its desert landscape and historic forts.',
      'area': '309,500 km²',
      'capital': 'Muscat',
      'currency': 'Rial',
    },
    {
      'country': 'Jordan',
      'flag': 'https://flagcdn.com/w320/jo.png',
      'description': 'Home to the ancient city of Petra and the Dead Sea.',
      'area': '89,342 km²',
      'capital': 'Amman',
      'currency': 'Dinar',
    },
    {
      'country': 'Kuwait',
      'flag': 'https://flagcdn.com/w320/kw.png',
      'description': 'A small Gulf nation with rich oil reserves.',
      'area': '17,818 km²',
      'capital': 'Kuwait City',
      'currency': 'Dinar',
    },
    {
      'country': 'Yemen',
      'flag': 'https://flagcdn.com/w320/ye.png',
      'description':
          'A country on the Arabian Peninsula with ancient heritage.',
      'area': '555,000 km²',
      'capital': "Sana'a",
      'currency': 'Rial',
    },
    {
      'country': 'Libya',
      'flag': 'https://flagcdn.com/w320/ly.png',
      'description': 'Located in North Africa with vast desert regions.',
      'area': '1,759,541 km²',
      'capital': 'Tripoli',
      'currency': 'Dinar',
    },
  ];
  int getCrossAxisCount(double width) {
    if (width < 768) {
      return 2; // Mobile
    } else if (width >= 768 && width <= 1024) {
      return 3; // Tablet
    } else {
      return 4; // Desktop
    }
  }

  double getAspectRatio(double width) {
    if (width < 768) {
      return 0.67; // Mobile
    } else if (width >= 768 && width <= 1024) {
      return 0.8; // Tablet
    } else {
      return 1.0; // Desktop
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Responsive Country Flag')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: getAspectRatio(MediaQuery.sizeOf(context).width),
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: getCrossAxisCount(MediaQuery.sizeOf(context).width),
          ),
          itemCount: flags.length,
          itemBuilder: (context, index) {
            final flag = flags[index];
            return CountryCard(
              flag: flag['flag']!,
              name: flag['country']!,
              description: flag['description']!,
              capital: flag['capital'] ?? 'N/A',
              currency: flag['currency']!,
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
