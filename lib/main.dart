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
        '/http3_abstract': (context) => Http3Abstract(),
        '/http3_introduction': (context) => Http3Introduction(),
        '/http3_prior_versions_of_http': (context) => Http3PriorVersionsOfHttp(),
        '/http3_delegation_to_quic': (context) => Http3DelegationToQuic(),
        // '/http3_http3_protocol_overview': (context) => Http3Http3ProtocolOverview()
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
            description: 'Abstract',
            indexLink: '/http3_abstract',
          ),
          DocumentList(
            documentTitle: 'Introduction',
            description: 'イントロダクション',
            indexLink: '/http3_introduction',
          ),
          DocumentList(
            documentTitle: 'HTTP/3 Protocol Overview',
            description: 'HTTP/3の概要文書（ドラフト）',
            indexLink: '/http3_http3_protocol_overview',
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

class Http3Abstract extends StatelessWidget {
  final double padding = 7.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Abstract'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(7.0, 9.0, 7.0, 9.0),
                child: Text(
                  'Abstract',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text(
                  "The QUIC transport protocol has several features that are desirable in a transport for HTTP, such as stream multiplexing, per-stream flow control, and low-latency connection establishment. This document describes a mapping of HTTP semantics over QUIC. This document also identifies HTTP/2 features that are subsumed by QUIC, and describes how HTTP/2 extensions can be ported to HTTP/3.",
                  style: TextStyle(
                    fontSize: 18.0
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(7.0, 9.0, 7.0, 9.0),
                child: Text(
                  'Note to Readers',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text("Discussion of this draft takes place on the QUIC working group mailing list (quic@ietf.org), which is archived at https://mailarchive.ietf.org/arch/search/?email_list=quic."),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text("Working Group information can be found at https://github.com/quicwg; source code and issues list for this draft can be found at https://github.com/quicwg/base-drafts/labels/-http."),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(7.0, 9.0, 7.0, 9.0),
                child: Text(
                  'Status of This Memo',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text("This Internet-Draft is submitted in full conformance with the provisions of BCP 78 and BCP 79."),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text("Internet-Drafts are working documents of the Internet Engineering Task Force (IETF). Note that other groups may also distribute working documents as Internet-Drafts. The list of current Internet-Drafts is at https://datatracker.ietf.org/drafts/current/."),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text('Internet-Drafts are draft documents valid for a maximum of six months and may be updated, replaced, or obsoleted by other documents at any time. It is inappropriate to use Internet-Drafts as reference material or to cite them other than as "work in progress."'),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("This Internet-Draft will expire on 16 October 2020."),
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(7.0, 9.0, 7.0, 9.0),
                child: Text(
                  'Copyright Notice',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text("Copyright (c) 2020 IETF Trust and the persons identified as the document authors. All rights reserved."),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text("This document is subject to BCP 78 and the IETF Trust's Legal Provisions Relating to IETF Documents (https://trustee.ietf.org/license-info) in effect on the date of publication of this document. Please review these documents carefully, as they describe your rights and restrictions with respect to this document. Code Components extracted from this document must include Simplified BSD License text as described in Section 4.e of the Trust Legal Provisions and are provided without warranty as described in the Simplified BSD License."),
              ),
            ],
          ),
        )
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
        itemExtent: 100.0,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Text('HTTP semantics [SEMANTICS] are used for a broad range of services on the Internet. These semantics have most commonly been used with two different TCP mappings, HTTP/1.1 and HTTP/2. HTTP/3 supports the same semantics over a new transport protocol, QUIC.')
          ),
          DocumentList(
            documentTitle: 'Prior versions of HTTP',
            description: 'Prior versions of HTTP',
            indexLink: '/http3_prior_versions_of_http',
          ),
          DocumentList(
            documentTitle: 'Delegation to QUIC',
            description: 'Delegation to QUIC',
            indexLink: '/http3_delegation_to_quic',
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
        title: Text('Prior versions of HTTP'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(7.0, 9.0, 7.0, 3.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Prior versions of HTTP',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
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

class Http3DelegationToQuic extends StatelessWidget {
  final double padding = 7.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Delegation to QUIC'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(7.0, 9.0, 7.0, 3.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Delegation to QUIC',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(padding),
              child: Text("The QUIC transport protocol incorporates stream multiplexing and per-stream flow control, similar to that provided by the HTTP/2 framing layer. By providing reliability at the stream level and congestion control across the entire connection, it has the capability to improve the performance of HTTP compared to a TCP mapping. QUIC also incorporates TLS 1.3 [TLS13] at the transport layer, offering comparable security to running TLS over TCP, with the improved connection setup latency of TCP Fast Open [TFO]."),
            ),
            Padding(
              padding: EdgeInsets.all(padding),
              child: Text("This document defines a mapping of HTTP semantics over the QUIC transport protocol, drawing heavily on the design of HTTP/2. While delegating stream lifetime and flow control issues to QUIC, a similar binary framing is used on each stream. Some HTTP/2 features are subsumed by QUIC, while other features are implemented atop QUIC."),
            ),
            Padding(
              padding: EdgeInsets.all(padding),
              child: Text("QUIC is described in [QUIC-TRANSPORT]. For a full description of HTTP/2, see [HTTP2]."),
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
