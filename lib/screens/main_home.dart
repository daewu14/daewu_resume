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
                ? spaceM : spaceXL)
        ),
        child: Row(
          children: [
            MainSIde(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(spaceL),
                child: Column(
                  children: [
                    MainHeader(),
                    Expanded(
                      child: PdfView(
                        documentLoader: Center(child: CircularProgressIndicator()),
                        pageLoader: Center(child: CircularProgressIndicator()),
                        controller: _pdfController,
                      ),
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      childAspectRatio: 3.5,
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.arrowLeft),
                          onPressed: () {
                            _pdfController.previousPage(
                              curve: Curves.ease,
                              duration: Duration(milliseconds: 100),
                            );
                          },
                          tooltip: "Previous",
                        ),
                        IconButton(
                          tooltip: 'Download CV',
                          icon: Icon(FontAwesomeIcons.download),
                          onPressed: () {
                            Utils.intentOpenUrl(link: "https://drive.google.com/file/d/1f0DVjWluuAa_u-wN83VSJ1QWPZnRTCUR/view?usp=sharing");
                          },
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.arrowRight),
                          onPressed: () {
                            _pdfController.nextPage(
                              curve: Curves.ease,
                              duration: Duration(milliseconds: 100),
                            );
                          },
                          tooltip: "Next",
                        ),
                      ],
                    )
                    // Text(saya).tr(),
                    // SizedBox(height: spaceM),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       if (context.locale == Locale('id', 'ID')) {
                    //         context.setLocale(Locale('en', 'US'));
                    //       } else {
                    //         context.setLocale(Locale('id', 'ID'));
                    //       }
                    //     },
                    //     child: Text(change_lang).tr()
                    // ),
                    // SizedBox(height: spaceM),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       if (isDarkMode()) {
                    //         context.read<XThemeMode>().setThemeMode(ThemeMode.light);
                    //       } else {
                    //         context.read<XThemeMode>().setThemeMode(ThemeMode.dark);
                    //       }
                    //     },
                    //     child: Text(change_theme).tr()
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
