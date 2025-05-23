import 'package:flutter/material.dart';

var model = [
  "https://images-static.nykaa.com/uploads/f5a1d948-7947-4241-a08e-caac8d991c48.jpg?tr=w-300,cm-pad_resize",
  "https://images-static.nykaa.com/uploads/c622c7aa-7cdb-43ba-98b7-acb48df7f7c5.jpg?tr=w-300,cm-pad_resize",
  "https://images-static.nykaa.com/uploads/fea188e3-9067-4c1f-a3a3-07560f60d73d.jpg?tr=w-300,cm-pad_resize",
  "https://images-static.nykaa.com/uploads/2f2275d3-0b85-4189-8fb3-7318ca1c3bec.jpg?tr=w-300,cm-pad_resize",
  "https://images-static.nykaa.com/uploads/9a4d3606-9aeb-4285-8db1-4918428a1c76.jpg?tr=w-300,cm-pad_resize",
  "https://images-static.nykaa.com/uploads/455bf3cd-82d4-4b2c-ab5d-e56491edc0f1.jpg?tr=w-300,cm-pad_resize",
];

class PageViewItem extends StatelessWidget {
  final int index;
  final String url;
  final double width;
  static const String name = '';
  static const String price = '';

  const PageViewItem({
    Key? key,
    required this.index,
    required this.width,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(index),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
        child: Image.network(url, fit: BoxFit.cover, width: width),
      ),
    );
  }
}

class Nykaa extends StatefulWidget {
  const Nykaa({Key? key}) : super(key: key);

  @override
  State<Nykaa> createState() => _NykaaState();
}

class _NykaaState extends State<Nykaa> {
  /// The current page of the page view
  double _page = 0;

  /// The index of the leftmost element of the list to be displayed
  int get _firstItemIndex => _page.toInt();

  /// Controller to get the current position of the page view
  final _controller = PageController(viewportFraction: 0.5);

  /// The width of a single item
  late final _itemWidth =
      MediaQuery.of(context).size.width * _controller.viewportFraction;

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () => setState(() {
        _page = _controller.page!;
      }),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LV Scroll")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: _itemWidth,
                            child: FractionallySizedBox(
                              child: PageViewItem(
                                index: _firstItemIndex,
                                width: _itemWidth,
                                url: model[_firstItemIndex],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        child: PageView.builder(
                          padEnds: false,
                          controller: _controller,
                          itemBuilder: (context, index) {
                            return Opacity(
                              opacity: index <= _firstItemIndex ? 0 : 1,
                              child: PageViewItem(
                                index: index,
                                width: _itemWidth,
                                url: model[index],
                              ),
                            );
                          },
                          itemCount: model.length,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(color: Colors.blue, child: StarterPage()),
          ),
        ],
      ),
    );
  }
}

class StarterPage extends StatefulWidget {
  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  final List<String> _list = [
    'List Item 1',
    'List Item 2',
    'List Item 3',
    'List Item 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ReorderableListView Example')),
      body: ReorderableListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        onReorder: (int oldIndex, int newIndex) {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          setState(() {
            final String _item = _list.removeAt(oldIndex);
            _list.insert(newIndex, _item);
          });
        },
        children: List.generate(
          _list.length,
          (index) => Container(
            width: double.infinity,
            key: ValueKey(index),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.teal.withOpacity(0.2),
            child: Text(
              _list[index],
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
      ),
    );
  }
}
