Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C79C7C15A
	for <lists+kexec@lfdr.de>; Wed, 31 Jul 2019 14:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBn+lgW3+BGMjM71H8u9oFdpxF5tHYAIESAe3YctdHc=; b=GLvLT6BekyhvPa
	hawQYghMF7PknixeY185Woib1tY1/Kff+3RLbZ6VQlXlzt+im8GixUlxtnygEx4IcjUMb8bNqOQsm
	FkadUylnvrHU0fW+3hdauCn197IOI5cgFAv+xAbJsU+oeZqZUqCm8vDZNCIP7I1yST3Mkg0YhRB+P
	MLZH4PW15v4wWOoMUnNvU37ZeVhIrySM0hgCWsaHYpp/QRXugJ3FKCpjZOk6uuS2gpQHyHUUW4NMy
	qlyAyXNET7RLl5bzFABzagULr9kT2vUxAeAYiX2Po1DueORm1fKPzCe20IwyNN8VcdnOSBsLE3m26
	fhPFFb0E4b2NKHNx4XHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnkW-0003Cj-Or; Wed, 31 Jul 2019 12:30:32 +0000
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnkQ-0003B9-1p
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 12:30:27 +0000
Received: by mail-lf1-f67.google.com with SMTP id v85so47281084lfa.6
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 05:30:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GTuVsF1YKUSAZmjbikSi8Czzh3Vqw67AuhRU3x61d80=;
 b=N3O0tG5Ap86zxgOuGkUpGLE0cM6lJaRDLqHfQ9Z5prtWC7tGKZ0ksN8b0LU1VQ1PAf
 RwqAojFO9ph5acfqwZnn2clW/yiBLoLeJXdP7mjoRt5fsAkwo/C4+PyLgq9Eq7BjKJ7h
 +NiY4ZYEx9xubyzijN2KPHM58lmMWEwRHuv7Ms0yC65rM53SzI8vmqt/QJZVxGYBOjBE
 RTY1+NXi7TgQ3xNd3yyXXhe4kqw+RsyPDgqA2a9tdiRevKoAHgZIT6bONC0lANLa6RAI
 nzijTcQbOOTqti4mD+ae87b6SpbRRcfCXTVdEMnNIJCC0u5COvDCiS3Ov6edq9A8OMn6
 gvKQ==
X-Gm-Message-State: APjAAAX0HziKtks4GDMs9cKHzmhJxwFevKTeXZWCt8nfii5UetHG4SlY
 L1oazbWISGN27eTZ5s5A24w/v9djIZKxUx1VYjP95g==
X-Google-Smtp-Source: APXvYqwhieeT5LYN1RSs65DcgcixuLZ5BGUcfQEV70swHJU1dBcih/ogNR2VrKf0HFkL4HYFtl/WyZ4Y5VEAxz4O/hY=
X-Received: by 2002:ac2:495e:: with SMTP id o30mr13666850lfi.140.1564576223904; 
 Wed, 31 Jul 2019 05:30:23 -0700 (PDT)
MIME-Version: 1.0
References: <34E10BEF-BF40-4230-BA02-5C64EDC372D2@nedap.com>
 <FD58192C-90D7-462E-8869-80F71A86D4E1@nedap.com>
 <5088a9d0-5638-1c41-1968-fc973e773e52@redhat.com>
 <6AB2A445-6C9D-451A-8CEB-5F5AC8A15545@nedap.com>
In-Reply-To: <6AB2A445-6C9D-451A-8CEB-5F5AC8A15545@nedap.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 31 Jul 2019 18:00:12 +0530
Message-ID: <CACi5LpNKRCqnQz4WDEe6t0LPbELeepALnrgqcDEdf0GeSD8fcA@mail.gmail.com>
Subject: Re: No compression technique of zImage/uImage detected - ARM
To: Maikel Coenen <maikel.coenen@nedap.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053026_101406_56F1829B 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
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
Cc: Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMTozNiBQTSBNYWlrZWwgQ29lbmVuIDxtYWlrZWwuY29l
bmVuQG5lZGFwLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIDI5LzA3LzIwMTksIDA3OjAyLCAiQmh1cGVz
aCBTaGFybWEiIDxiaHNoYXJtYUByZWRoYXQuY29tPiB3cm90ZTo+Cj4KPiA+ICAgICBIaSBNYWlr
ZWwsCj4gPgo+ID4gICAgIEkgaGF2ZSBhIGNvdXBsZSBvZiBxdWVyaWVzIChzbyB0aGF0IEkgY2Fu
IGhlbHAgeW91IGJldHRlcikuIFBsZWFzZSBzZWUKPiA+ICAgICB0aGVtIGluLWxpbmU6Cj4gPgo+
ID4gICAgIE9uIDA3LzI0LzIwMTkgMDI6NDMgUE0sIE1haWtlbCBDb2VuZW4gd3JvdGU6Cj4gPiAg
ICAgPiBIaSwKPiA+ICAgICA+Cj4gPiAgICAgPiBJIGhhdmUgbWV0IGFuIGlzc3VlIGR1cmluZyBs
b2FkaW5nIGEgbmV3IGtlcm5lbCB3aXRoIEtleGVjIG9uIGFuIEFSTXY1IFNvQy4gVGhlIGtlcm5l
bCBpcyBhIDQuMTkgd2l0aCBHemlwIGNvbXByZXNzaW9uIGJ1dCBkdXJpbmcgbG9hZGluZyBLZXhl
YyBkb2VzIG5vdCByZWNvZ25pemUgdGhlIGNvbXByZXNzaW9uLgo+ID4gICAgID4KPiA+ICAgICA+
IElmIEkgbG9hZCB0aGUgbmV3IGtlcm5lbCBhbmQgZHRiIHdpdGg6Cj4gPiAgICAgPgo+ID4gICAg
ID4ga2V4ZWMgLWwgL2Jvb3QvekltYWdlIC1kIC0tZHRiPS9ib290L3UtYm9vdC5kdGIKPiA+Cj4g
PiAgICAgQ2FuIHlvdSBwbGVhc2Ugc2hvdyB0aGUgb3V0cHV0IG9mIHRoZSBmb2xsb3dpbmcgY29t
bWFuZDoKPiA+ICAgICAkIGZpbGUgL2Jvb3QvekltYWdlCj4KPiB6SW1hZ2U6IExpbnV4IGtlcm5l
bCBBUk0gYm9vdCBleGVjdXRhYmxlIHpJbWFnZSAobGl0dGxlLWVuZGlhbikKPgo+IEkgYWxzbyBw
ZXJmb3JtZWQgYSBiaW53YWxrIHdpdGggZm9sbG93aW5nIG91dHB1dDoKPiBERUNJTUFMICAgICAg
ICAgSEVYQURFQ0lNQUwgICAgIERFU0NSSVBUSU9OCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAwICAgICAgICAgICAgICAgMHgwICAgICAgICAgICAgIExpbnV4IGtlcm5lbCBBUk0gYm9vdCBl
eGVjdXRhYmxlIHpJbWFnZSAobGl0dGxlLWVuZGlhbikKPiAxNjQyNCAgICAgICAgICAgMHg0MDI4
ICAgICAgICAgIGd6aXAgY29tcHJlc3NlZCBkYXRhLCBtYXhpbXVtIGNvbXByZXNzaW9uLCBmcm9t
IFVuaXgsIGxhc3QgbW9kaWZpZWQ6IDE5NzAtMDEtMDEgMDA6MDA6MDAgKG51bGwgZGF0ZSkKPgo+
ID4gICAgIEFsc28gY2FuIHlvdSBwbGVhc2UgbWFrZSBzdXJlIHRoYXQgdGhlIHpJbWFnZSBoYXMg
dGhlIHJpZ2h0IGd6aXAgaGVhZGVyCj4gPiAgICAgOiBtYWdpYyBoZWFkZXIgIDB4MWYsIDB4OGIg
KFwwMzcgXDIxMykKPgo+IEFzIHlvdSBjYW4gc2VlIGluIHRoZSBiaW53YWxrIG91dHB1dCwgaXMg
dGhlIG1hZ2ljIGhlYWRlciBmb3VuZCBhdCAweDQwMjguIFRoaXMgYmVjYXVzZSBvZiB0aGUgeklt
YWdlIGhlYWRlci4KPiBXaGVuIEkgY2hlY2sgdGhlIHpJbWFnZSBtYW51YWxseSwgaXQgaXMgaW5k
ZWVkIGF0IHRoYXQgbG9jYXRpb24uCj4KPiA+ICAgICA+IFRoZSBvdXRwdXQgaXM6Cj4gPiAgICAg
Pgo+ID4gICAgID4gVHJ5IGd6aXAgZGVjb21wcmVzc2lvbi4KPiA+ICAgICA+IFRyeSBMWk1BIGRl
Y29tcHJlc3Npb24uCj4gPiAgICAgPiBsem1hX2RlY29tcHJlc3NfZmlsZTogcmVhZCBvbiAvYm9v
dC96SW1hZ2Ugb2YgNjU1MzYgYnl0ZXMgZmFpbGVkCj4gPiAgICAgPiBrZXJuZWw6IDB4YjZhNjgw
MDgga2VybmVsX3NpemU6IDB4NDk0ZDMwCj4gPiAgICAgPiBNRU1PUlkgUkFOR0VTCj4gPiAgICAg
PiAwMDAwMDAwMDAwMDAwMDAwLTAwMDAwMDAwMGZmZmZmZmYgKDApCj4gPiAgICAgPiB6SW1hZ2Ug
aGVhZGVyOiAweDAxNmYyODE4IDB4MDAwMDAwMDAgMHgwMDQ5NGQzMAo+ID4gICAgID4gekltYWdl
IHNpemUgMHg0OTRkMzAsIGZpbGUgc2l6ZSAweDQ5NGQzMAo+ID4gICAgID4ga2V4ZWNfbG9hZDog
ZW50cnkgPSAweDgwMDAgZmxhZ3MgPSAweDI4MDAwMAo+ID4gICAgID4gbnJfc2VnbWVudHMgPSAy
Cj4gPiAgICAgPiBzZWdtZW50WzBdLmJ1ZiAgID0gMHhiNmE2ODAwOAo+ID4gICAgID4gc2VnbWVu
dFswXS5idWZzeiA9IDB4NDk0ZDMwCj4gPiAgICAgPiBzZWdtZW50WzBdLm1lbSAgID0gMHg4MDAw
Cj4gPiAgICAgPiBzZWdtZW50WzBdLm1lbXN6ID0gMHg0OTUwMDAKPiA+ICAgICA+IHNlZ21lbnRb
MV0uYnVmICAgPSAweDFmY2YwNjAKPiA+ICAgICA+IHNlZ21lbnRbMV0uYnVmc3ogPSAweDI0NWIK
PiA+ICAgICA+IHNlZ21lbnRbMV0ubWVtICAgPSAweDE2ZjIwMDAKPiA+ICAgICA+IHNlZ21lbnRb
MV0ubWVtc3ogPSAweDMwMDAKPiA+ICAgICA+Cj4gPiAgICAgPiBMb29raW5nIGF0IHRoZSBkZWJ1
ZywgdGhlIGZ1bmN0aW9uIGd6ZGlyZWN0IHJldHVybnMg4oCcMeKAnSB3aGljaCBpbmRpY2F0ZXMg
dGhlIGtlcm5lbCBjb21wcmVzc2lvbiBpcyBub3Qgb2YgZ3ppcCBidXQgSSBkZWZpbml0ZWx5IHVz
ZSBnemlwLgo+ID4gICAgID4gSSBhbHNvIHRlc3RlZCBpdCB3aXRoIExaTUEgY29tcHJlc3Npb24g
YW5kIHVJbWFnZSBpbnN0ZWFkIG9mIHpJbWFnZSBidXQgYWxsIHdpdGggdGhlIHNhbWUgb3V0Y29t
ZS4KPiA+ICAgICA+Cj4gPiAgICAgPiBUbyBiZSBjb21wbGV0ZSwgSSB1c2UgS2V4ZWMtdG9vbHMg
Mi4wLjE5IGFuZCB6bGliIDEuMi4xMS4KPiA+ICAgICA+Cj4gPiAgICAgPiBEaWQgSSBpbXBsZW1l
bnQgc29tZXRoaW5nIHdyb25nIG9yIGhvdyBjYW4gSSBkZWJ1ZyB0aGlzIGZ1cnRoZXI/Cj4gPgo+
ID4gICAgIEkgZG9uJ3QgaGF2ZSBhIGFybXY1IGhhcmR3YXJlIGFuZCBteSBhdHRlbXB0IHRvIHNl
dHVwIGEgcWVtdSArIGJ1aWxkcm9vdAo+ID4gICAgIHNldHVwIGZvciBBUk12NSAoOTI2dCkgbGVh
ZCB0byBhIGZhaWx1cmUgdG8gYm9vdCB0aGUgbGF0ZXN0IHVwc3RyZWFtIGtlcm5lbC4KPiA+Cj4g
PiAgICAgSSB3aWxsIHRyeSB0byBmaXggdXAgdGhlIHNldHVwIGFuZCBjb21lIGJhY2sgd2l0aCBt
b3JlIGRldGFpbHMuCj4gPiAgICAgSW4gdGhlIG1lYW53aGlsZSBpZiB5b3UgY2FuIHNoYXJlIHRo
ZSBhYm92ZSwgSSBjYW4gaGF2ZSBmdXJ0aGVyIGxvb2sgYXQKPiA+ICAgICB0aGUgc2FtZS4KCldl
bGwsIEkgY2FuJ3QgcmVwcm9kdWNlIHRoZSBpc3N1ZSB5b3UgcmVwb3J0ZWQgYXQgbXkgZW5kLgpI
ZXJlIGlzIG15IGVudmlyb25tZW50OgoKJCBxZW11LXN5c3RlbS1hcm0gLS12ZXJzaW9uClFFTVUg
ZW11bGF0b3IgdmVyc2lvbiAyLjExLjIocWVtdS0yLjExLjItNS5mYzI4KQpDb3B5cmlnaHQgKGMp
IDIwMDMtMjAxNyBGYWJyaWNlIEJlbGxhcmQgYW5kIHRoZSBRRU1VIFByb2plY3QgZGV2ZWxvcGVy
cwoKIyB1bmFtZSAtcm4KYnVpbGRyb290IDQuMTkuMTYKCiMga2V4ZWMgLXYKa2V4ZWMtdG9vbHMg
Mi4wLjE4CgojIGtleGVjIC1sIHpJbWFnZSAtZCAtLWR0Yj12ZXJzYXRpbGUtcGIuZHRiClRyeSBn
emlwIGRlY29tcHJlc3Npb24uCmtlcm5lbDogMHhiNmM0NjAwOCBrZXJuZWxfc2l6ZTogMHgyOWNi
NDgKTUVNT1JZIFJBTkdFUwowMDAwMDAwMDAwMDAwMDAwLTAwMDAwMDAwMDdmZmZmZmYgKDApCnpJ
bWFnZSBoZWFkZXI6IDB4MDE2ZjI4MTggMHgwMDAwMDAwMCAweDAwMjljYjQ4CnpJbWFnZSBzaXpl
IDB4MjljYjQ4LCBmaWxlIHNpemUgMHgyOWNiNDgKekltYWdlIHJlcXVpcmVzIDB4MDAyYWRiNDgg
Ynl0ZXMKICBvZmZzZXQgMHgwMDAwMzkzNCB0YWcgMHg1YTUzNGM0YiBzaXplIDgKRGVjb21wcmVz
c2VkIGtlcm5lbCBzaXplczoKIHRleHQrZGF0YSAweDAwNTBmZTMwIGJzcyAweDAwMDMxZGU0IHRv
dGFsIDB4MDA1NDFjMTQKUmVzdWx0aW5nIGtlcm5lbCBzcGFjZTogMHgwMDdiZDk3OApLZXJuZWw6
IGFkZHJlc3M9MHgwMDAwODAwMCBzaXplPTB4MDA3YmQ5NzgKRFQgICAgOiBhZGRyZXNzPTB4MDA3
YzcwMDAgc2l6ZT0weDAwMDAyMjc4CmtleGVjX2xvYWQ6IGVudHJ5ID0gMHg4MDAwIGZsYWdzID0g
MHgyODAwMDAKbnJfc2VnbWVudHMgPSAyCnNlZ21lbnRbMF0uYnVmICAgPSAweGI2YzQ2MDA4CnNl
Z21lbnRbMF0uYnVmc3ogPSAweDI5Y2I0YwpzZWdtZW50WzBdLm1lbSAgID0gMHg4MDAwCnNlZ21l
bnRbMF0ubWVtc3ogPSAweDI5ZDAwMApzZWdtZW50WzFdLmJ1ZiAgID0gMHg0N2NhOApzZWdtZW50
WzFdLmJ1ZnN6ID0gMHgyMjc4CnNlZ21lbnRbMV0ubWVtICAgPSAweDdjNzAwMApzZWdtZW50WzFd
Lm1lbXN6ID0gMHgzMDAwCgpBcyB5b3UgY2FuIHNlZSBmcm9tIHRoZSBsb2dzIGFib3ZlIHRoZSB6
SW1hZ2UgZm9ybWF0IGlzIGNvcnJlY3RseQpyZWNvZ25pemVkIGFuZCBkZWNvbXByZXNzZWQuCgpX
aGVuIEkgcnVuICdrZXhlYyAtZScsIEkgY2FuIGxhdW5jaCB0aGUgbmV3IGtlcm5lbCBqdXN0IGZp
bmUuCgpJIGRvbid0IHNlZSBhbnkgbmV3IHBhdGNoZXMgaW4gJ2tleGVjL2FyY2gvYXJtJyBmb2xk
ZXIgYmV0d2VlbgprZXhlYy10b29scyAyLjAuMTggKGF0IG15IGVuZCkgYW5kIGtleGVjLXRvb2xz
IDIuMC4xOSAod2hpY2ggeW91IHVzZSksCnNvIEkgYW0gb2YgdGhlIHZpZXcgdGhhdCB0aGUgaXNz
dWUgaXMgb2YgdGhlIHpJbWFnZSBpbWFnZSBnZW5lcmF0aW9uCnByb2JhYmx5LgoKU2luY2UsICdr
ZXhlYy9hcmNoL2FybS9rZXhlYy16SW1hZ2UtYXJtLmMnIGFsc28gc3VwcG9ydHMgdW5jb21wcmVz
c2VkCmtlcm5lbCBJbWFnZSwgeW91IGNhbiB0cnkgbG9hZGluZyB0aGUgSW1hZ2UgZmlsZSBkaXJl
Y3RseSBhbmQgc2VlIGlmCnRoYXQgbWFrZXMgYSBkaWZmZXJlbmNlICh5b3UgY2FuIGZpbmQgaXQg
aGVyZSBpbiB0aGUga2VybmVsIHRyZWU6CmFyY2gvYXJtL2Jvb3QvSW1hZ2UpOgoKIyBrZXhlYyAt
bCBJbWFnZSAtZCAtLWR0Yj12ZXJzYXRpbGUtcGIuZHRiClRyeSBnemlwIGRlY29tcHJlc3Npb24u
Cmtlcm5lbDogMHhiNWYzYTAwOCBrZXJuZWxfc2l6ZTogMHhmYzRmMjAKTUVNT1JZIFJBTkdFUwow
MDAwMDAwMDAwMDAwMDAwLTAwMDAwMDAwMDdmZmZmZmYgKDApCnpJbWFnZSBoZWFkZXI6IDB4ZWIw
MDAwNWEgMHhlYjAwMDA0NCAweGViMDAwMDA5CnpJbWFnZSByZXF1aXJlcyAweDAwZmQ1ZjIwIGJ5
dGVzCktlcm5lbDogYWRkcmVzcz0weDAwMDA4MDAwIHNpemU9MHgwNGYyZGJhMApEVCAgICA6IGFk
ZHJlc3M9MHgwNGYzNzAwMCBzaXplPTB4MDAwMDIyNzgKa2V4ZWNfbG9hZDogZW50cnkgPSAweDgw
MDAgZmxhZ3MgPSAweDI4MDAwMApucl9zZWdtZW50cyA9IDIKc2VnbWVudFswXS5idWYgICA9IDB4
YjVmM2EwMDgKc2VnbWVudFswXS5idWZzeiA9IDB4ZmM0ZjI0CnNlZ21lbnRbMF0ubWVtICAgPSAw
eDgwMDAKc2VnbWVudFswXS5tZW1zeiA9IDB4ZmM1MDAwCnNlZ21lbnRbMV0uYnVmICAgPSAweDQ3
Y2E4CnNlZ21lbnRbMV0uYnVmc3ogPSAweDIyNzgKc2VnbWVudFsxXS5tZW0gICA9IDB4NGYzNzAw
MApzZWdtZW50WzFdLm1lbXN6ID0gMHgzMDAwCgpUaGFua3MsCkJodXBlc2gKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdApr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8va2V4ZWMK
