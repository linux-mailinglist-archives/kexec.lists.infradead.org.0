Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD0C3C7AA
	for <lists+kexec@lfdr.de>; Tue, 11 Jun 2019 11:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOiH0b4sbN7NcmyOhJvdSm75ULGQgKeoRjMWq6LBO9Y=; b=b2eAjSz3adZqFE
	9Iq2tNzkbmSfnJvPIK8u1s3SDrdppYIzBkUmBcPL32Vi79iTUBOCBjF7AVltP8xy53v0mtloHv0tr
	UX4DmkAX0T11dYxzuyYCOxsIRTdQRaJvF2gChLC4zpuh5goFzoELWnwkSs8vVhwibsHipRdYVjYsY
	QyhfuSgUkw2CazgWOId8HWsdJQlb/uaduN4SKsIIaAJsVlGXX4/Qf2qt5qjb0UwJbN5RBMLKJZHHD
	JEsVYEM7/c/k1eS5H+0aA4df4UsuKS5UegPHxAy4IY7Fm/m0UFw9eUlZvBx8e6h4M7kO40/IzdFA6
	Z4Acp1yirR7sFc26ln1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadSs-0002KS-Q5; Tue, 11 Jun 2019 09:53:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadSk-0002Jz-67
 for kexec@lists.infradead.org; Tue, 11 Jun 2019 09:53:07 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1F107883BA;
 Tue, 11 Jun 2019 09:53:05 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-17.pek2.redhat.com [10.72.12.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D6E5B60143;
 Tue, 11 Jun 2019 09:53:00 +0000 (UTC)
Subject: Re: The current SME implementation fails kexec/kdump kernel booting.
From: lijiang <lijiang@redhat.com>
To: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>, Baoquan He <bhe@redhat.com>
References: <20190604134952.GC26891@MiWiFi-R3L-srv>
 <508c2853-dc4f-70a6-6fa8-97c950dc31c6@amd.com>
 <20190605005600.GF26891@MiWiFi-R3L-srv>
 <0d9fba9d-7bbe-a7c7-dfe4-696da0dfecc4@amd.com>
 <2fe0e56c-9286-b71d-3d6d-c2a6fbcfba89@redhat.com>
Message-ID: <33b9237f-5e8c-fe49-4f55-220ce9a492fb@redhat.com>
Date: Tue, 11 Jun 2019 17:52:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2fe0e56c-9286-b71d-3d6d-c2a6fbcfba89@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 11 Jun 2019 09:53:05 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025306_270424_B71FBD39 
X-CRM114-Status: GOOD (  26.46  )
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

5ZyoIDIwMTnlubQwNuaciDA55pelIDExOjQ1LCBsaWppYW5nIOWGmemBkzoKPiDlnKggMjAxOeW5
tDA25pyIMDbml6UgMDA6MDQsIExlbmRhY2t5LCBUaG9tYXMg5YaZ6YGTOgo+PiBPbiA2LzQvMTkg
Nzo1NiBQTSwgQmFvcXVhbiBIZSB3cm90ZToKPj4+IE9uIDA2LzA0LzE5IGF0IDAzOjU2cG0sIExl
bmRhY2t5LCBUaG9tYXMgd3JvdGU6Cj4+Pj4gT24gNi80LzE5IDg6NDkgQU0sIEJhb3F1YW4gSGUg
d3JvdGU6Cj4+Pj4+IEhpIFRvbSwKPj4+Pj4KPj4+Pj4gTGlhbmJvIHJlcG9ydGVkIGtkdW1wIGtl
cm5lbCBjYW4ndCBib290IHdlbGwgd2l0aCAnbm9rYXNscicgYWRkZWQsIGFuZAo+Pj4+PiBoYXZl
IHRvIGVuYWJsZSBLQVNMUiBpbiBrZHVtcCBrZXJuZWwgdG8gbWFrZSBpdCBib290IHN1Y2Nlc3Nm
dWxseS4gVGhpcwo+Pj4+PiBibG9ja2VkIGhpcyB3b3JrIG9uIGVuYWJsaW5nIHNtZSBmb3Iga2V4
ZWMva2R1bXAuIEFuZCBvbiBzb21lIG1hY2hpbmVzCj4+Pj4+IFNNRSBrZXJuZWwgY2FuJ3QgYm9v
dCBpbiAxc3Qga2VybmVsLgo+Pj4+Pgo+Pj4+PiBJIGNoZWNrZWQgY29kZSBvZiBTTUUgaW1wbGVt
ZW50YXRpb24sIGFuZCBmb3VuZCBvdXQgdGhlIHJvb3QgY2F1c2UuIFRoZQo+Pj4+PiBhYm92ZSBm
YWlsdXJlcyBhcmUgY2F1c2VkIGJ5IFNNRSBjb2RlLCBzbWVfZW5jcnlwdF9rZXJuZWwoKS4gSW4K
Pj4+Pj4gc21lX2VuY3J5cHRfa2VybmVsKCksIHlvdSBnZXQgYSAyTSBvZiBlbmNyeXB0aW9uIHdv
cmsgYXJlYSBhcyBpbnRlcm1lZGlhdGUKPj4+Pj4gYnVmZmVyIHRvIGVuY3J5cHQga2VybmVsIGlu
LXBsYWNlLiBBbmQgdGhlIHdvcmsgYXJlYSBpcyBqdXN0IGFmdGVyIF9lbmQgb2YKPj4+Pj4ga2Vy
bmVsLgo+Pj4+Cj4+Pj4gSSByZW1lbWJlciB3b3JyeWluZyBhYm91dCBzb21ldGhpbmcgbGlrZSB0
aGlzIGJhY2sgd2hlbiBJIHdhcyB0ZXN0aW5nIHRoZQo+Pj4+IGtleGVjIHN1cHBvcnQuIEkgaGFk
IGNvbWUgdXAgd2l0aCBhIHBhdGNoIHRvIGFkZHJlc3MgaXQsIGJ1dCBuZXZlciBnb3QgdGhlCj4+
Pj4gdGltZSB0byB0ZXN0IGFuZCBzdWJtaXQgaXQuICBJJ3ZlIGluY2x1ZGVkIGl0IGhlcmUgaWYg
eW91J2QgbGlrZSB0byB0ZXN0Cj4+Pj4gaXQgKEkgaGF2ZW4ndCBkb25lIHJ1biB0aGlzIHBhdGNo
IGluIHF1aXRlIHNvbWUgdGltZSkuIElmIGl0IHdvcmtzLCB3ZSBjYW4KPj4+PiB0aGluayBhYm91
dCBzdWJtaXR0aW5nIGl0Lgo+Pj4KPj4+IFRoYW5rcyBmb3IgeW91ciBxdWljayByZXNwb25zZSBh
bmQgbWFraW5nIHRoaXMgcGF0Y2gsIFRvbS4KPj4+Cj4+PiBUZXN0ZWQgb24gYSBzcGVlZHdheSBt
YWNoaW5lLCBpdCBlbnRlcmVkIGludG8ga2VybmVsLCBidXQgZmFpbGVkIGluCj4+PiBiZWxvdyBz
dGFnZS4gVGVzdGVkIHR3byB0aW1lcywgYWx3YXlzIGhhcHBlbmVkLgo+Pgo+PiBJcyB0aGlzIHRo
ZSBpbml0aWFsIGtlcm5lbCBib290IG9yIHRoZSBrZXhlYyBrZXJuZWwgYm9vdD8KPj4KPj4gSXQg
bG9va3MgbGlrZSB0aGlzIGlzIHJlbGF0ZWQgdG8gdGhlIGluaXRyZC9pbml0cmFtZnMgZGVjcnlw
dGlvbi4gTm90Cj4+IHN1cmUgd2hhdCBjb3VsZCBiZSBoYXBwZW5pbmcgdGhlcmUuIEkganVzdCB0
cmllZCB0aGUgcGF0Y2ggb24gbXkgTmFwbGVzCj4+IHN5c3RlbSBhbmQgYSA1LjIuMC1yYzMga2Vy
bmVsIGFuZCBoYXZlIGJlZW4gYWJsZSB0byByZXBlYXRlZGx5IGtleGVjIGJvb3QKPj4gYSBudW1i
ZXIgb2YgdGltZXMgc28gZmFyLgo+Pgo+IAo+IEkgdXNlZCB0aGUgaGFja2VkIGtleGVjLXRvb2xz
KGJ5IEJhb3F1YW4pIHRvIHRlc3QgaXQsIHRoZSBrZXhlYy1kIGtlcm5lbCBhbmQKPiBrZHVtcCBr
ZXJuZWwgd29ya2VkIHdlbGwuIEJ1dCBUb20ncyBwYXRjaCBvbmx5IHdvcmtlZCBmb3IgdGhlIGtl
eGVjLWQga2VybmVsLAo+IGFuZCB0aGUga2R1bXAga2VybmVsIGRpZCBub3Qgd29yayhrZHVtcCBr
ZXJuZWwgY291bGQgbm90IHN1Y2Nlc3NmdWxseSBib290KS4KPiBXaGF0J3MgdGhlIGRpZmZlcmVu
Y2UgYmV0d2VlbiB0aGVtPwo+IAoKQWZ0ZXIgYXBwbGllZCBUb20ncyBwYXRjaCwgaSBjaGFuZ2Vk
IHRoZSByZXNlcnZlZCBtZW1vcnkoZm9yIGNyYXNoIGtlcm5lbCkgdG8gdGhlCmFib3ZlIDI1Nk0o
PjI1Nk0pLCBzdWNoIGFzIGNyYXNoa2VybmVsPTMyME0gb3IgMzg0TSw1MTJNLi4uLCB0aGUga2R1
bXAga2VybmVsIGNhbgp3b3JrIGFuZCBzdWNjZXNzZnVsbHkgZHVtcCB0aGUgdm1jb3JlLgoKQnV0
IHRoZSBrZHVtcCBrZXJuZWwgYWx3YXlzIGhhcHBlbmVkIHRoZSBwYW5pYyBvciBjb3VsZCBub3Qg
Ym9vdCBzdWNjZXNzZnVsbHkgaW4KdGhlIDI1Nk0oPD0gMjU2TSkgY2FzZSwgYW5kIG9uIEhQIG1h
Y2hpbmUsIGkgbm90aWNlZCB0aGF0IGl0IHByaW50ZWQgT09NLCB0aGUga2R1bXAKa2VybmVsIHdh
cyB0b28gc21hbGxlciBtZW1vcnkuIEJ1dCBpIG5ldmVyIHNlZSB0aGUgT09NIG9uIHNwZWVkd2F5
IG1hY2hpbmUocHJvYmFibHkKcmVsYXRlZCB0byB0aGUgZWFybHlwcmludGssIGl0IGRvZXNuJ3Qg
d29yayBhbmQgaXQgbG9zZXMgbWFueSBsb2dzKS4KCkFmdGVyIHJlbW92aW5nIHRoZSBvcHRpb24g
J0NPTkZJR19ERUJVR19JTkZPJyBmcm9tIC5jb25maWcsIGkgdGVzdGVkIGFnYWluLCB0aGUga2R1
bXAKa2VybmVsIGRpZCBub3QgaGFwcGVuIHRoZSBwYW5pYyBpbiB0aGUgMjU2TShjcmFzaGtlcm5l
bD0yNTZNKSwgdGhlIGtkdW1wIGtlcm5lbCBjYW4Kd29yayBhbmQgc3VjY2VlZCB0byBkdW1wIHRo
ZSB2bWNvcmUgb24gSFAgbWFjaGluZSBvciBzcGVlZHdheSBtYWNoaW5lLgoKSXQgc2VlbXMgdGhh
dCB0aGUgc21hbGwgbWVtb3J5IGNhdXNlZCB0aGUgcHJldmlvdXMgZmFpbHVyZSBpbiBrZHVtcCBr
ZXJuZWwuIEkgd291bGQKc3VnZ2VzdCB0byBwb3N0IHRoaXMgcGF0Y2ggdG8gdXBzdHJlYW0uIFdo
YXQncyB5b3VyIG9waW5pb24/IFRvbSwgQmFvcXVhbiBhbmQgb3RoZXIKcGVvcGxlLiBPciBkbyB5
b3UgaGF2ZSBhbnkgY29tbWVudD8KClRoYW5rcy4KTGlhbmJvCgo+IFRoYW5rcwo+IExpYW5ibwo+
IAo+PiBUaGFua3MsCj4+IFRvbQo+Pgo+Pj4KPj4+Cj4+PiBbICAgIDQuOTc4NTIxXSBGcmVlaW5n
IHVudXNlZCBkZWNyeXB0ZWQgbWVtb3J5OiAyMDQwSwo+Pj4gWyAgICA0Ljk4MzgwMF0gRnJlZWlu
ZyB1bnVzZWQga2VybmVsIGltYWdlIG1lbW9yeTogMjM0NEsKPj4+IFsgICAgNC45ODg5NDNdIFdy
aXRlIHByb3RlY3RpbmcgdGhlIGtlcm5lbCByZWFkLW9ubHkgZGF0YTogMTg0MzJrCj4+PiBbICAg
IDQuOTk1MzA2XSBGcmVlaW5nIHVudXNlZCBrZXJuZWwgaW1hZ2UgbWVtb3J5OiAyMDEySwo+Pj4g
WyAgICA1LjAwMDQ4OF0gRnJlZWluZyB1bnVzZWQga2VybmVsIGltYWdlIG1lbW9yeTogMjU2Swo+
Pj4gWyAgICA1LjAwNTU0MF0gUnVuIC9pbml0IGFzIGluaXQgcHJvY2Vzcwo+Pj4gWyAgICA1LjAw
OTQ0M10gS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IEF0dGVtcHRlZCB0byBraWxsIGluaXQh
IGV4aXRjb2RlPTB4MDAwMDdmMDAKPj4+IFsgICAgNS4wMTcyMzBdIENQVTogMCBQSUQ6IDEgQ29t
bTogaW5pdCBOb3QgdGFpbnRlZCA1LjIuMC1yYzIrICMzOAo+Pj4gWyAgICA1LjAyMzI1MV0gSGFy
ZHdhcmUgbmFtZTogQU1EIENvcnBvcmF0aW9uIFNwZWVkd2F5L1NwZWVkd2F5LCBCSU9TIFJTVzEw
MDRCIDEwLzE4LzIwMTcKPj4+IFsgICAgNS4wMzEyOTldIENhbGwgVHJhY2U6Cj4+PiBbICAgIDUu
MDMzNzkzXSAgZHVtcF9zdGFjaysweDQ2LzB4NjAKPj4+IFsgICAgNS4wMzcxNjldICBwYW5pYysw
eGZiLzB4MmNiCj4+PiBbICAgIDUuMDQwMTkxXSAgZG9fZXhpdC5jb2xkLjIxKzB4NTkvMHg4MQo+
Pj4gWyAgICA1LjA0NDAwNF0gIGRvX2dyb3VwX2V4aXQrMHgzYS8weGEwCj4+PiBbICAgIDUuMDQ3
NjQwXSAgX194NjRfc3lzX2V4aXRfZ3JvdXArMHgxNC8weDIwCj4+PiBbICAgIDUuMDUxODk5XSAg
ZG9fc3lzY2FsbF82NCsweDU1LzB4MWMwCj4+PiBbICAgIDUuMDU1NjI3XSAgZW50cnlfU1lTQ0FM
TF82NF9hZnRlcl9od2ZyYW1lKzB4NDQvMHhhOQo+Pj4gWyAgICA1LjA2MDc2NF0gUklQOiAwMDMz
OjB4N2ZhMWIxZmM5ZTJlCj4+PiBbICAgIDUuMDY0NDA0XSBDb2RlOiBCYWQgUklQIHZhbHVlLgo+
Pj4gWyAgICA1LjA2NzY4N10gUlNQOiAwMDJiOjAwMDA3ZmZmYzVhYmI3NzggRUZMQUdTOiAwMDAw
MDIwMiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDBlNwo+Pj4gWyAgICA1LjA3NTI5Nl0gUkFYOiBm
ZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDdmYTFiMWZkMjUyOCBSQ1g6IDAwMDA3ZmExYjFmYzll
MmUKPj4+IFsgICAgNS4wODI2MjVdIFJEWDogMDAwMDAwMDAwMDAwMDA3ZiBSU0k6IDAwMDAwMDAw
MDAwMDAwM2MgUkRJOiAwMDAwMDAwMDAwMDAwMDdmCj4+PiBbICAgIDUuMDg5ODc5XSBSQlA6IDAw
MDA3ZmExYjIxZDhkMDAgUjA4OiAwMDAwMDAwMDAwMDAwMGU3IFIwOTogMDAwMDdmZmZjNWFiYjY4
OAo+Pj4gWyAgICA1LjA5NzEzNF0gUjEwOiAwMDAwMDAwMDAwMDAwMDAwIFIxMTogMDAwMDAwMDAw
MDAwMDIwMiBSMTI6IDAwMDAwMDAwMDAwMDAwMDIKPj4+IFsgICAgNS4xMDQzODZdIFIxMzogMDAw
MDAwMDAwMDAwMDAwMSBSMTQ6IDAwMDA3ZmExYjIxZDhkNDAgUjE1OiAwMDAwN2ZhMWIyMWQ4ZDMw
Cj4+PiBbICAgIDUuMTExNjQ1XSBLZXJuZWwgT2Zmc2V0OiBkaXNhYmxlZAo+Pj4gWyAgICA1LjQy
MzAwMl0gUmVib290aW5nIGluIDEwIHNlY29uZHMuLgo+Pj4gWyAgIDE1LjQyOTY0MV0gQUNQSSBN
RU1PUlkgb3IgSS9PIFJFU0VUX1JFRy4KPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVj
Cg==
