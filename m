Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621A93A377
	for <lists+kexec@lfdr.de>; Sun,  9 Jun 2019 05:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHPYrLF5bET6kvRg/cE2cn3DTaF2MxiecGNrFK7Ryl4=; b=bNBS+M0ujVO2is
	7P3J5SNN9ZYDNW2ZFAq6mf1acOWBLfh3OqEqEOeuhwOJprCxb8lExVZNCMMm/vVKXl7B0b/P6++3h
	xdC9es6y2qQOIQO81FdpwtBV0vT/kMeqGIFeAjC30Trd5Ib4ej59n6D6zoibjVQaL5eEebCMVRV/o
	tf4hTDYK5C+f1v87PTgeHpdZ0ru9TqMBfNAF7ygIMSlRLKnR/Jpp8p33AE/X2VT8Fdg5SFAuMB29J
	tD0PFyriq3t8YEZKU1QuZWKHWbK4qELYZcvU+RcSWYK5ZtVl617DD0D6iazguLnLYJamu3UcN9lgG
	2fxWfAb31l3t2w6yOZyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZolm-0002Z2-LS; Sun, 09 Jun 2019 03:45:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZolk-0002Ya-0v
 for kexec@lists.infradead.org; Sun, 09 Jun 2019 03:45:21 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B24508830A;
 Sun,  9 Jun 2019 03:45:17 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-49.pek2.redhat.com [10.72.12.49])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A5CC67C8C;
 Sun,  9 Jun 2019 03:45:14 +0000 (UTC)
Subject: Re: The current SME implementation fails kexec/kdump kernel booting.
To: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>, Baoquan He <bhe@redhat.com>
References: <20190604134952.GC26891@MiWiFi-R3L-srv>
 <508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com>
 <20190605005600.GF26891@MiWiFi-R3L-srv>
 <0d9fba9d-7bbe-a7c7-dfe4-696da0dfecc4@amd.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <2fe0e56c-9286-b71d-3d6d-c2a6fbcfba89@redhat.com>
Date: Sun, 9 Jun 2019 11:45:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <0d9fba9d-7bbe-a7c7-dfe4-696da0dfecc4@amd.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Sun, 09 Jun 2019 03:45:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_204520_106934_55617A53 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwNuaciDA25pelIDAwOjA0LCBMZW5kYWNreSwgVGhvbWFzIOWGmemBkzoKPiBP
biA2LzQvMTkgNzo1NiBQTSwgQmFvcXVhbiBIZSB3cm90ZToKPj4gT24gMDYvMDQvMTkgYXQgMDM6
NTZwbSwgTGVuZGFja3ksIFRob21hcyB3cm90ZToKPj4+IE9uIDYvNC8xOSA4OjQ5IEFNLCBCYW9x
dWFuIEhlIHdyb3RlOgo+Pj4+IEhpIFRvbSwKPj4+Pgo+Pj4+IExpYW5ibyByZXBvcnRlZCBrZHVt
cCBrZXJuZWwgY2FuJ3QgYm9vdCB3ZWxsIHdpdGggJ25va2FzbHInIGFkZGVkLCBhbmQKPj4+PiBo
YXZlIHRvIGVuYWJsZSBLQVNMUiBpbiBrZHVtcCBrZXJuZWwgdG8gbWFrZSBpdCBib290IHN1Y2Nl
c3NmdWxseS4gVGhpcwo+Pj4+IGJsb2NrZWQgaGlzIHdvcmsgb24gZW5hYmxpbmcgc21lIGZvciBr
ZXhlYy9rZHVtcC4gQW5kIG9uIHNvbWUgbWFjaGluZXMKPj4+PiBTTUUga2VybmVsIGNhbid0IGJv
b3QgaW4gMXN0IGtlcm5lbC4KPj4+Pgo+Pj4+IEkgY2hlY2tlZCBjb2RlIG9mIFNNRSBpbXBsZW1l
bnRhdGlvbiwgYW5kIGZvdW5kIG91dCB0aGUgcm9vdCBjYXVzZS4gVGhlCj4+Pj4gYWJvdmUgZmFp
bHVyZXMgYXJlIGNhdXNlZCBieSBTTUUgY29kZSwgc21lX2VuY3J5cHRfa2VybmVsKCkuIEluCj4+
Pj4gc21lX2VuY3J5cHRfa2VybmVsKCksIHlvdSBnZXQgYSAyTSBvZiBlbmNyeXB0aW9uIHdvcmsg
YXJlYSBhcyBpbnRlcm1lZGlhdGUKPj4+PiBidWZmZXIgdG8gZW5jcnlwdCBrZXJuZWwgaW4tcGxh
Y2UuIEFuZCB0aGUgd29yayBhcmVhIGlzIGp1c3QgYWZ0ZXIgX2VuZCBvZgo+Pj4+IGtlcm5lbC4K
Pj4+Cj4+PiBJIHJlbWVtYmVyIHdvcnJ5aW5nIGFib3V0IHNvbWV0aGluZyBsaWtlIHRoaXMgYmFj
ayB3aGVuIEkgd2FzIHRlc3RpbmcgdGhlCj4+PiBrZXhlYyBzdXBwb3J0LiBJIGhhZCBjb21lIHVw
IHdpdGggYSBwYXRjaCB0byBhZGRyZXNzIGl0LCBidXQgbmV2ZXIgZ290IHRoZQo+Pj4gdGltZSB0
byB0ZXN0IGFuZCBzdWJtaXQgaXQuICBJJ3ZlIGluY2x1ZGVkIGl0IGhlcmUgaWYgeW91J2QgbGlr
ZSB0byB0ZXN0Cj4+PiBpdCAoSSBoYXZlbid0IGRvbmUgcnVuIHRoaXMgcGF0Y2ggaW4gcXVpdGUg
c29tZSB0aW1lKS4gSWYgaXQgd29ya3MsIHdlIGNhbgo+Pj4gdGhpbmsgYWJvdXQgc3VibWl0dGlu
ZyBpdC4KPj4KPj4gVGhhbmtzIGZvciB5b3VyIHF1aWNrIHJlc3BvbnNlIGFuZCBtYWtpbmcgdGhp
cyBwYXRjaCwgVG9tLgo+Pgo+PiBUZXN0ZWQgb24gYSBzcGVlZHdheSBtYWNoaW5lLCBpdCBlbnRl
cmVkIGludG8ga2VybmVsLCBidXQgZmFpbGVkIGluCj4+IGJlbG93IHN0YWdlLiBUZXN0ZWQgdHdv
IHRpbWVzLCBhbHdheXMgaGFwcGVuZWQuCj4gCj4gSXMgdGhpcyB0aGUgaW5pdGlhbCBrZXJuZWwg
Ym9vdCBvciB0aGUga2V4ZWMga2VybmVsIGJvb3Q/Cj4gCj4gSXQgbG9va3MgbGlrZSB0aGlzIGlz
IHJlbGF0ZWQgdG8gdGhlIGluaXRyZC9pbml0cmFtZnMgZGVjcnlwdGlvbi4gTm90Cj4gc3VyZSB3
aGF0IGNvdWxkIGJlIGhhcHBlbmluZyB0aGVyZS4gSSBqdXN0IHRyaWVkIHRoZSBwYXRjaCBvbiBt
eSBOYXBsZXMKPiBzeXN0ZW0gYW5kIGEgNS4yLjAtcmMzIGtlcm5lbCBhbmQgaGF2ZSBiZWVuIGFi
bGUgdG8gcmVwZWF0ZWRseSBrZXhlYyBib290Cj4gYSBudW1iZXIgb2YgdGltZXMgc28gZmFyLgo+
IAoKSSB1c2VkIHRoZSBoYWNrZWQga2V4ZWMtdG9vbHMoYnkgQmFvcXVhbikgdG8gdGVzdCBpdCwg
dGhlIGtleGVjLWQga2VybmVsIGFuZAprZHVtcCBrZXJuZWwgd29ya2VkIHdlbGwuIEJ1dCBUb20n
cyBwYXRjaCBvbmx5IHdvcmtlZCBmb3IgdGhlIGtleGVjLWQga2VybmVsLAphbmQgdGhlIGtkdW1w
IGtlcm5lbCBkaWQgbm90IHdvcmsoa2R1bXAga2VybmVsIGNvdWxkIG5vdCBzdWNjZXNzZnVsbHkg
Ym9vdCkuCldoYXQncyB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZW0/CgpUaGFua3MKTGlhbmJv
Cgo+IFRoYW5rcywKPiBUb20KPiAKPj4KPj4KPj4gWyAgICA0Ljk3ODUyMV0gRnJlZWluZyB1bnVz
ZWQgZGVjcnlwdGVkIG1lbW9yeTogMjA0MEsKPj4gWyAgICA0Ljk4MzgwMF0gRnJlZWluZyB1bnVz
ZWQga2VybmVsIGltYWdlIG1lbW9yeTogMjM0NEsKPj4gWyAgICA0Ljk4ODk0M10gV3JpdGUgcHJv
dGVjdGluZyB0aGUga2VybmVsIHJlYWQtb25seSBkYXRhOiAxODQzMmsKPj4gWyAgICA0Ljk5NTMw
Nl0gRnJlZWluZyB1bnVzZWQga2VybmVsIGltYWdlIG1lbW9yeTogMjAxMksKPj4gWyAgICA1LjAw
MDQ4OF0gRnJlZWluZyB1bnVzZWQga2VybmVsIGltYWdlIG1lbW9yeTogMjU2Swo+PiBbICAgIDUu
MDA1NTQwXSBSdW4gL2luaXQgYXMgaW5pdCBwcm9jZXNzCj4+IFsgICAgNS4wMDk0NDNdIEtlcm5l
bCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBBdHRlbXB0ZWQgdG8ga2lsbCBpbml0ISBleGl0Y29kZT0w
eDAwMDA3ZjAwCj4+IFsgICAgNS4wMTcyMzBdIENQVTogMCBQSUQ6IDEgQ29tbTogaW5pdCBOb3Qg
dGFpbnRlZCA1LjIuMC1yYzIrICMzOAo+PiBbICAgIDUuMDIzMjUxXSBIYXJkd2FyZSBuYW1lOiBB
TUQgQ29ycG9yYXRpb24gU3BlZWR3YXkvU3BlZWR3YXksIEJJT1MgUlNXMTAwNEIgMTAvMTgvMjAx
Nwo+PiBbICAgIDUuMDMxMjk5XSBDYWxsIFRyYWNlOgo+PiBbICAgIDUuMDMzNzkzXSAgZHVtcF9z
dGFjaysweDQ2LzB4NjAKPj4gWyAgICA1LjAzNzE2OV0gIHBhbmljKzB4ZmIvMHgyY2IKPj4gWyAg
ICA1LjA0MDE5MV0gIGRvX2V4aXQuY29sZC4yMSsweDU5LzB4ODEKPj4gWyAgICA1LjA0NDAwNF0g
IGRvX2dyb3VwX2V4aXQrMHgzYS8weGEwCj4+IFsgICAgNS4wNDc2NDBdICBfX3g2NF9zeXNfZXhp
dF9ncm91cCsweDE0LzB4MjAKPj4gWyAgICA1LjA1MTg5OV0gIGRvX3N5c2NhbGxfNjQrMHg1NS8w
eDFjMAo+PiBbICAgIDUuMDU1NjI3XSAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4
NDQvMHhhOQo+PiBbICAgIDUuMDYwNzY0XSBSSVA6IDAwMzM6MHg3ZmExYjFmYzllMmUKPj4gWyAg
ICA1LjA2NDQwNF0gQ29kZTogQmFkIFJJUCB2YWx1ZS4KPj4gWyAgICA1LjA2NzY4N10gUlNQOiAw
MDJiOjAwMDA3ZmZmYzVhYmI3NzggRUZMQUdTOiAwMDAwMDIwMiBPUklHX1JBWDogMDAwMDAwMDAw
MDAwMDBlNwo+PiBbICAgIDUuMDc1Mjk2XSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAw
N2ZhMWIxZmQyNTI4IFJDWDogMDAwMDdmYTFiMWZjOWUyZQo+PiBbICAgIDUuMDgyNjI1XSBSRFg6
IDAwMDAwMDAwMDAwMDAwN2YgUlNJOiAwMDAwMDAwMDAwMDAwMDNjIFJESTogMDAwMDAwMDAwMDAw
MDA3Zgo+PiBbICAgIDUuMDg5ODc5XSBSQlA6IDAwMDA3ZmExYjIxZDhkMDAgUjA4OiAwMDAwMDAw
MDAwMDAwMGU3IFIwOTogMDAwMDdmZmZjNWFiYjY4OAo+PiBbICAgIDUuMDk3MTM0XSBSMTA6IDAw
MDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMjAyIFIxMjogMDAwMDAwMDAwMDAwMDAw
Mgo+PiBbICAgIDUuMTA0Mzg2XSBSMTM6IDAwMDAwMDAwMDAwMDAwMDEgUjE0OiAwMDAwN2ZhMWIy
MWQ4ZDQwIFIxNTogMDAwMDdmYTFiMjFkOGQzMAo+PiBbICAgIDUuMTExNjQ1XSBLZXJuZWwgT2Zm
c2V0OiBkaXNhYmxlZAo+PiBbICAgIDUuNDIzMDAyXSBSZWJvb3RpbmcgaW4gMTAgc2Vjb25kcy4u
Cj4+IFsgICAxNS40Mjk2NDFdIEFDUEkgTUVNT1JZIG9yIEkvTyBSRVNFVF9SRUcuCj4+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5n
IGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
