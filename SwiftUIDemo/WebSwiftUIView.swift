//
//  WebSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 06/01/2023.
//

import SwiftUI
import WebKit

struct WebSwiftUIView: UIViewRepresentable {
    
    var url = URL(string: "https://en.wikipedia.org/wiki/")!
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
//    var body: some View {
//        Link("Click Me", destination: URL(string: "https://en.wikipedia.org/wiki/Main_Page")!)
//    }
}

struct WebSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WebSwiftUIView()
    }
}
