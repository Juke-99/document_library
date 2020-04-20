import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Document Library',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/http3_index': (context) => Http3Overview(),
        '/http3_introduction': (context) => Http3Introduction(),
        '/http3_prior_versions_of_http': (context) => Http3PriorVersionsOfHttp(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView(
        itemExtent: 90.0,
        children: <Widget>[
          DocumentList(
            documentTitle: 'Hypertext Transfer Protocol Version 3 (HTTP/3)',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Mechanics',
            description: 'l.D. Landau and E.M. Lifshitzの力学 第3版'
          )
        ],
      ),
    );
  }
}

class Http3Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hypertext Transfer Protocol Version 3 (HTTP/3)'),
      ),
      body: ListView(
        itemExtent: 120.0,
        children: <Widget>[
          DocumentList(
            documentTitle: 'First HTTP/3',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Introduction',
            description: 'HTTP semantics [SEMANTICS] are used for a broad range of services on the Internet. These semantics have most commonly been used with two different TCP mappings, HTTP/1.1 and HTTP/2. HTTP/3 supports the same semantics over a new transport protocol, QUIC.',
            indexLink: '/http3_introduction',
          ),
          DocumentList(
            documentTitle: 'HTTP/3 Protocol Overview',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Connection Setup and Management',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'HTTP Request Lifecycle',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Connection Closure',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),DocumentList(
            documentTitle: 'Stream Mapping and Usage',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'HTTP Framing Layer',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Error Handling',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Extensions to HTTP/3',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Security Considerations',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'IANA Considerations',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'References',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Appendix A.  Considerations for Transitioning from HTTP/2',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
          DocumentList(
            documentTitle: 'Appendix B.  Change Log',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_index',
          ),
        ],
      ),
    );
  }
}

class Http3Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction'),
      ),
      body: ListView(
        itemExtent: 90.0,
        children: <Widget>[
          DocumentList(
            documentTitle: 'Prior versions of HTTP',
            description: 'Prior versions of HTTP',
            indexLink: '/http3_prior_versions_of_http',
          ),
          DocumentList(
            documentTitle: 'Delegation to QUIC',
            description: 'Delegation to QUIC',
            indexLink: '/http3_introduction',
          )
        ],
      ),
    );
  }
}

class Http3PriorVersionsOfHttp extends StatelessWidget {
  final double padding = 7.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
            child: Text("HTTP/1.1 [HTTP11] is a TCP mapping which uses whitespace-delimited text fields to convey HTTP messages. While these exchanges are human-readable, using whitespace for message formatting leads to parsing complexity and motivates tolerance of variant behavior. Because each connection can transfer only a single HTTP request or response at a time in each direction, multiple parallel TCP connections are often used, reducing the ability of the congestion controller to effectively manage traffic between endpoints."),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: Text("HTTP/2 [HTTP2] introduced a binary framing and multiplexing layer to improve latency without modifying the transport layer. However, because the parallel nature of HTTP/2's multiplexing is not visible to TCP's loss recovery mechanisms, a lost or reordered packet causes all active transactions to experience a stall regardless of whether that transaction was directly impacted by the lost packet."),
          )
        ],
      )
    );
  }
}

class DocumentList extends StatelessWidget {
  const DocumentList({
    Key key,
    @required this.documentTitle,
    @required this.description,
    this.indexLink = '/'
  }) : super(key: key);

  final String documentTitle;
  final String description;
  final String indexLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        title: Text(
          documentTitle,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(fontSize: 14.0),
        ),
        onTap: () {
          Navigator.pushNamed(context, indexLink);
        },
      )
    );
  }
}
