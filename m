Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1116E9E7B
	for <lists+kexec@lfdr.de>; Wed, 30 Oct 2019 16:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMrsFh4Vll3K+YlTQTIeW8FNRYzwCaAwYyQjzeVNdmU=; b=cZlXhrZjGALU8O
	4PEuAlEapoXPV7FtFo49wdQOxWYmQq/ubzddvZfpFOEaSsGIm0nqxW74hCa+966oox2XJdv5tyI4a
	+WDnfqNhS4qY8acVj6VqK01GP/0VxjEWAvM9v67WQf1hlfzXwzhLCK6fh5X929jP5vetS4K1h5Jgd
	fLzC0gNu1E91uC4tNI9eo7VcH8JUzmQkwUCdpsvtcZswHJ3UilfwYsB/dARblAYFe8w2IQQB16vEL
	NgwoiGJ7P4GNJO4A97uWEf69/6BuUWhZdxETvxAktdr3N4B5ZqDa84WYk3Ur3JZb6d4v3TJTO8A0X
	X7IK3bpR5RzTT1c5GjNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpb6-0005fR-9j; Wed, 30 Oct 2019 15:09:20 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpb2-0005eS-Lh
 for kexec@lists.infradead.org; Wed, 30 Oct 2019 15:09:18 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x9UF99W7026395
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 31 Oct 2019 00:09:09 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9UF99JE019119;
 Thu, 31 Oct 2019 00:09:09 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x9UF7rpV001696;
 Thu, 31 Oct 2019 00:09:09 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.140] [10.38.151.140]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-9960174;
 Thu, 31 Oct 2019 00:08:12 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC12GP.gisp.nec.co.jp ([10.38.151.140]) with mapi id 14.03.0439.000; Thu,
 31 Oct 2019 00:08:12 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Bhupesh Sharma <bhsharma@redhat.com>,
 John Donnelly <john.p.donnelly@oracle.com>
Subject: RE: Makedumpfile help for 5.4.0.rc3 : Arm
Thread-Topic: Makedumpfile help for 5.4.0.rc3 : Arm
Thread-Index: AQHViEDZSq812Kxm4UCQ/dmdPZPK46dk4M2AgADTPwCACtv74IAA4YUAgAHlemA=
Date: Wed, 30 Oct 2019 15:08:11 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03594125@BPXM09GP.gisp.nec.co.jp>
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
 <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
 <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
 <CACi5LpOexc5ss6DRHOSWJeSAwwGPQ55z1XiFqenGzY1rLkzeqA@mail.gmail.com>
In-Reply-To: <CACi5LpOexc5ss6DRHOSWJeSAwwGPQ55z1XiFqenGzY1rLkzeqA@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.133.238]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_080916_939519_7DEA2DD5 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaCwNCg0KT0ssIHRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93IHRoYXQgaW4geW91
ciBob2xpZGF5cy4gSGF2ZSBnb29kIG9uZXMuDQpJIGp1c3QgdGhvdWdodCB0aGF0IGl0IG1pZ2h0
IGJlIGdvb2QgdG8gc2hhcmUgb3VyIHVuZGVyc3RhbmRpbmcgYmVmb3JlDQpwb3N0aW5nIGEga2Vy
bmVsIHBhdGNoIHNvIHRoYXQgSSBjYW4gZG8gc29tZXRoaW5nIHRvIHN1cHBvcnQgeW91IGlmDQpu
ZWVkIGJlLg0KDQoNCkhpIEpvaG4sDQoNCllvdSBzZWUgdGhhdCBlcnJvciB3aXRoIG15IHRlc3Qg
cGF0Y2gsIHdoaWNoIGlzIG9ubHkgZm9yIHRlc3RpbmcgdGhvdWdoLA0KYXMgSSB3cm90ZSBiZWxv
dw0KDQo+ID4gQW5kIHdyb3RlIGEgdmVyeSBkcmFmdCBwYXRjaCwgd2hpY2ggd29ya3Mgb24gYSA1
LjQtcmM0IGtlcm5lbCB0aGF0DQo+ID4gSSBtb2RpZmllZCB0byBoYXZlIE5VTUJFUih2YWJpdHNf
YWN0dWFsKSBhbmQgTlVNQkVSKE1BWF9QSFlTTUVNX0JJVFMpLA0KDQp0aGF0IHBhdGNoIHJlcXVp
cmVzIGEga2VybmVsIGZpeCB0byBoYXZlIHRoZXNlIGluIHZtY29yZWluZm8uDQpEaWQgeW91IHRy
eSBpdD8NCg0KVGhhbmtzLA0KS2F6dQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IEhpIEthenUsDQo+IA0KPiBTb3JyeSBmb3IgdG9wIHBvc3RpbmcsIGJ1dCBJIGFtIG9uIGxlYXZl
IGZvciBEaXdhbGkgSG9saWRheXMgYW5kIHdpbGwNCj4gcmV0dXJuIHRvIHRoZSBvZmZpY2UgaW4g
YSBjb3VwbGUgb2YgZGF5cy4NCj4gDQo+IEkgaGF2ZSB0aGUgc29sdXRpb24vcGF0Y2hzZXQgcmVh
ZHkgYW5kIEkganVzdCBuZWVkIHRvIGZpbmlzaCB0aGUNCj4gY29tbWl0IG1lc3NhZ2VzIHRvIG1h
a2Ugc3VyZSB0aGV5IGFyZSBzZWxmLWV4cGxhbmF0b3J5IGZvciB1cHN0cmVhbQ0KPiBhY2NlcHRh
bmNlLg0KPiANCj4gSSB3aWxsIHRyeSB0byBwb3N0IHRoZW0gYW5kIGFsc28gYW5zd2VyIHlvdXIg
ZW1haWwgaW4gZGV0YWlsIHdoZW4gSQ0KPiByZXR1cm4gYmFjayBmcm9tIGhvbGlkYXlzLg0KPiAN
Cj4gVGhhbmtzIGZvciB5b3VyIHBhdGllbmNlLg0KPiANCj4gUmVnYXJkcywNCj4gQmh1cGVzaA0K
PiANCj4gKFNlbnQgZnJvbSBteSBBbmRyb2lkIFBob25lKQ0KPiANCj4gT24gVHVlLCBPY3QgMjks
IDIwMTkgYXQgMjoyMyBBTSBLYXp1aGl0byBIYWdpbyA8ay1oYWdpb0BhYi5qcC5uZWMuY29tPiB3
cm90ZToNCj4gPg0KPiA+IEhpIEJodXBlc2gsDQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+ID4gPiA+ID4gSSBhbSB3b3JraW5nIG9uIHRoZSBjaGFuZ2VzIGluIHRoZSB2
bWNvcmVpbmZvIGFmdGVyIHRoZSA1Mi1iaXQgVkENCj4gPiA+ID4gPiBjaGFuZ2VzIGZyb20gU3Rl
dmUgd2VyZSBhY2NlcHRlZCBpbiBMaW51eCA1LjQtcmMxICgiU3VwcG9ydCBmb3IgNTItYml0DQo+
ID4gPiA+ID4gdmlydHVhbCBhZGRyZXNzaW5nIGluIGtlcm5lbCBzcGFjZeKAnSkuDQo+ID4gPiA+
DQo+ID4gPiA+DQo+ID4gPiA+ICAgIEkgZG9u4oCZdCBzZWUgYSBjb21taXQgd2l0aCB0aGlzIHRp
dGxlIGluIGxpbnV4LXN0YWJsZSAgOyAgQ291bGQgeW91IGJlIGEgbGl0dGxlIG1vcmUgc3BlY2lm
aWMgd2hhdA0KPiA+ID4gZmlsZSAgdGhhdCB3YXMgYXBwbGllZCB0byA/DQo+ID4gPg0KPiA+ID4g
WW91IGNhbiBoYXZlIGEgbG9vayBhdCB0aGUgZm9sbG93aW5nIGNvbW1pdCAoYW5kIGRlcGVuZGVu
Y2llcykgaW4NCj4gPiA+IExpbnVzJ3MgdHJlZSAoZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdCkNCj4gPiA+IHdoaWNoIGludHJv
ZHVjZWQgNTItYml0IGtlcm5lbCBWQXMgZm9yIGFybTY0IGFyY2hpdGVjdHVyZToNCj4gPiA+DQo+
ID4gPiBjb21taXQgYjZkMDBkNDdlODFhNDlmNmNmNDYyNTE4YzEwNDA4ZjM3YTNlNjc4NQ0KPiA+
ID4gQXV0aG9yOiBTdGV2ZSBDYXBwZXIgPHN0ZXZlLmNhcHBlckBhcm0uY29tPg0KPiA+ID4gRGF0
ZTogICBXZWQgQXVnIDcgMTY6NTU6MjIgMjAxOSArMDEwMA0KPiA+ID4NCj4gPiA+ICAgICBhcm02
NDogbW06IEludHJvZHVjZSA1Mi1iaXQgS2VybmVsIFZBcw0KPiA+DQo+ID4gVGhhbmsgeW91IGZv
ciB3b3JraW5nIG9uIHRoaXMuDQo+ID4NCj4gPiBJJ3ZlIGFsc28gaGFkIGEgbG9vayBhdCB0aGVt
LCBhbmQgbXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHdlIG5lZWQNCj4gPiBpbiB2bWNvcmVpbmZv
IGF0IGxlYXN0Og0KPiA+DQo+ID4gLSBUQ1JfRUwxLlQxU1ogKGFsbW9zdCBlcXVhbHMgdG8gdmFi
aXRzX2FjdHVhbCkgdG8gZGV0ZXJtaW5lOg0KPiA+ICAgbyBQQUdFX09GRlNFVA0KPiA+ICAgbyB3
aGV0aGVyIHRoZSBrZXJuZWwgaGFzIHRoZSAiZmxpcHBlZCIgbGluZWFyIG1hcCBhbmQgdGhlIG90
aGVycy4NCj4gPiAgICAgV2UgbmVlZCBhIGZpeCB0byBfX3BhKCkgd2l0aCBpdC4gKHNlZSB0aGUg
cGF0Y2ggYmVsb3cpDQo+ID4NCj4gPiAtIFBBX0JJVFMgb3IgTUFYX1BIWVNNRU1fQklUUyB0byBk
ZXRlcm1pbmU6DQo+ID4gICBvIHdoZXRoZXIgU1BBUlNFTUVNX0VYVFJFTUUgb3Igbm90LCBpbiBp
c19zcGFyc2VtZW1fZXh0cmVtZSgpDQo+ID4gICBvIHdoZXRoZXIgdGhlIGtlcm5lbCBoYXMgNDgt
Yml0IG9yIDUyLWJpdCBQQSB0byBzd2l0Y2gNCj4gPiAgICAgdGhlIGNhbGN1bGF0aW9uIG9mIHB0
ZS10by1wYWRkci4gKHRoaXMgbWlnaHQgYmUgdW5uZWNlc3Nhcnk/KQ0KPiA+DQo+ID4gSXMgdGhp
cyByaWdodD8NCj4gPg0KPiA+IEFuZCB3cm90ZSBhIHZlcnkgZHJhZnQgcGF0Y2gsIHdoaWNoIHdv
cmtzIG9uIGEgNS40LXJjNCBrZXJuZWwgdGhhdA0KPiA+IEkgbW9kaWZpZWQgdG8gaGF2ZSBOVU1C
RVIodmFiaXRzX2FjdHVhbCkgYW5kIE5VTUJFUihNQVhfUEhZU01FTV9CSVRTKSwNCj4gPiB3aXRo
IFZBX0JJVFM9NDggY29uZmlnIG9yIFZBX0JJVFM9NTIgY29uZmlnIHJ1bm5pbmcgaW4gNDgtYml0
IG1vZGUuDQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL2staGFnaW8vbWFrZWR1bXBmaWxlL2NvbW1p
dC9mZDlkODZlYTA1YjM4ZTllZGJiOGMwYWMzZWJkNjEyZDVkNDg1ZGYzDQo+ID4NCj4gPiAoSSBk
b24ndCBpbnRlbmQgdG8gZXhwb3J0IHRoZW0gYXMgdGhleSBhcmUsIGl0J3MganVzdCBmb3IgYW4g
ZXhwZXJpbWVudC4NCj4gPiBBbmQgbm8gc3VwcG9ydCBmb3IgLS1tZW0tdXNhZ2Ugb3B0aW9uLCAi
cmVhbCIgNTItYml0IFBBLCBhbmQgc28gb24uKQ0KPiA+DQo+ID4gQXMgZm9yIE1BWF9QSFlTTUVN
X0JJVFMsIEkgZG9uJ3Qgc3RpY2sgdG8gZXhwb3J0IGl0IGZvciBhbGwgYXJjaGl0ZWN0dXJlcywN
Cj4gPiBhbHRob3VnaCBJIHRvbGQgeW91IHRoYXQgaXQgd291bGQgYmUgYmV0dGVyIHRvIGRvIHNv
IGluIHRoZSBwYXN0Lg0KPiA+IElmIGl0J3MgaGFyZCB0byBkbyBzbywgaXQncyBmaW5lIHdpdGgg
bWUgdG8gZXhwb3J0IGl0IG9yIHNvbWV0aGluZyBzaW1pbGFyDQo+ID4gb25seSBmb3IgYXJtNjQg
Zm9yIG5vdy4uDQo+ID4NCj4gPiBZb3VyIHRob3VnaHRzPw0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+
IEthenUNCj4gPg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
