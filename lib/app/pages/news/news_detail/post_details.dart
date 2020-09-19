import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/html_parser.dart';
import 'package:flutter_html/style.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/post_entity.dart';
import 'package:cd_castellon/app/pages/widgets_general/cache_image.dart';
import 'package:cd_castellon/app/pages/news/widgets/post_card.dart';
import 'package:photo_view/photo_view.dart';
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';


class PostDetails extends StatelessWidget {
  PostEntity post;

  PostDetails(this.post);

  @override
  Widget build(BuildContext context) {
//    post.isDetailCard = true;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          Size size = MediaQuery.of(context).size;
          return <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.white),
              floating: true,
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: <Widget>[
                    Hero(
                      tag: post.image,
                      child: CachedImage(
                        post.image,
                        width: size.width,
                        height: size.height,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black, Colors.transparent],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Author(post: post),
                    ),
                    Positioned(
                      bottom: 35.0,
                      child: Container(
                          width: size.width,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  post.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CategoryPill(post: post),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Html(
            data: post.content,
            //Optional parameters:
            customRender: {
//              'div': _alignmentRender,
//              'span': _fontSizeRender,
//              'font': _fontColorRender,
//              'collapse': _collapseRender,
              'img': _imageRender,
//              'emoticon': _emoticonRender,
//              'blockquote': _blockquoteRender,
//              'album': _albumRender,
            },
            style: {
              "html": Style(
                backgroundColor: Colors.transparent,
                fontSize: FontSize(18),
              ),
              "body": Style(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 3),
                  padding: EdgeInsets.zero),
              "a": Style(
                  color: Colors.blueAccent,
                  textDecoration: TextDecoration.none),
              "blockquote": Style(
                  border:
                      Border(left: BorderSide(color: Colors.grey, width: 2.3)),
                  padding: EdgeInsets.only(left: 8),
                  margin:
                      EdgeInsets.only(left: 10, right: 0, bottom: 15, top: 0)),
              "div.quoteName": Style(
                  fontSize: FontSize.smaller,
                  color: Colors.grey,
                  margin: EdgeInsets.symmetric(vertical: 4)),
              "div.center": Style(alignment: Alignment.center),
              "div.right": Style(alignment: Alignment.centerRight),
              "h1, h2, h3": Style(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
              ),
              "p": Style(margin: EdgeInsets.symmetric(vertical: 0)),
            },
            onLinkTap: (url) => _launchUrl(url),
          ),
        ),
      ),
    );
  }

  Widget _imageRender(RenderContext context, Widget parsedChild,
      Map<String, String> attributes, dom.Element element) {
    return Builder(builder: (context) {
      String urlimg = attributes["src"];
      Uri uri = Uri.parse(urlimg);
      if (uri.host == "") urlimg = "http://www.cdcastellon.com" + urlimg;
      return CachedNetworkImage(
        imageUrl: urlimg,
        imageBuilder: (context, provider) {
          return InkWell(
            onTap: () {
              Get.to(PhotoView(
                imageProvider: provider,
              ));
            },
            child: Image(
              image: provider,
            ),
          );
        },
        placeholder: (ctx, url) => CircularProgressIndicator(),
        errorWidget: (ctx, str, obj) => Column(
          children: <Widget>[
//            Text("error loading : $str => $obj"),
            Icon(Icons.error)
          ],
        ),
      );
    });
  }

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
