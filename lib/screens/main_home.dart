part of 'x_parts.dart';

/// createdby Daewu Bintara
/// Sunday, 20/06/21

class MainHome extends StatefulWidget {

  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  late PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(DocsAssets.resume),
      initialPage: 0,
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    debugLog("SIze width", Utils.size(context).width.toString());

    return Scaffold(
      backgroundColor: themeData().primaryColor,
      body: Container(
        color: themeData().backgroundColor,
        margin: EdgeInsets.all(
            Utils.size(context).width > 1300
            ? spaceXXL : (
                Utils.isMobileView(context)
                ? (spaceS-2) : spaceXL)
        ),
        child: Utils.isMobileView(context) ? ListView(
          children: [
            MainHeader(),
            MainNavigation(),
            MainBody()
          ],
        ) : Row(
          children: [
            MainSIde(),
            Expanded(
              child: Column(
                children: [
                  MainHeader(),
                  MainNavigation(),
                  Expanded(
                    child: ListView(
                      children: [
                        MainBody()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
