Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A165318902B
	for <lists+kexec@lfdr.de>; Tue, 17 Mar 2020 22:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDDY+N1qh0UMuoCDpE+/kZs3R2W2wRFBZqZvEdBJveY=; b=maMZXQTqFVtirY
	9c4L+RzuT98QcnSmtOnCb542aP/2jaThesN5RY6/QkWTW5q0GKptJdQWztTXWVJy+r6BlqOGDQemL
	ePk7ipNRpZZ8TtYegHn1o5eQ4d/9/oNa2M08ynlWS4AdWM+DB017OmjGfNVhih5CHP2UhgeGyPksJ
	qgmd/UMEpIiiiEoinoY0z3Z6jUqqF6XRuvpHz3nC8wM72J9sszQY2inYpGVsUcxgtazvbPVpgWKNY
	E5Dp/17kytKjh9bkeg08+SWviRi8RUHfmnIJsudllhLUsA2+70VuHsEE9+HnNQXYaUY379Uc04tme
	QQrfAt8ZMOd6hFr9ihyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJXS-0003ef-OS; Tue, 17 Mar 2020 21:14:14 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJXN-0003dO-8Z
 for kexec@lists.infradead.org; Tue, 17 Mar 2020 21:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584479648;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HqnGE3G/e/xekbibrJ3151rUvgal9o+0iVEsM9ScAAk=;
 b=WL/8INRBtjYFRKlmnfovwmd/jl5JqZmY4ex0jh3VCPNhB4WiI592Q8UA5lY1hR8JBKM+Q7
 CLH7ghOrM73IpA9QS0EPsiDeBNFHEQYnyA14ap8SCpP8VJ4ekC6DcJsShXE5bgwvIfDRSZ
 IssVnkeBNxK3Ys4baZww1ab/TxRlLQI=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-dp2-ATgYOVal-qKwiKMdUA-1; Tue, 17 Mar 2020 17:14:06 -0400
X-MC-Unique: dp2-ATgYOVal-qKwiKMdUA-1
Received: by mail-qk1-f199.google.com with SMTP id b82so23207361qkc.11
 for <kexec@lists.infradead.org>; Tue, 17 Mar 2020 14:14:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HqnGE3G/e/xekbibrJ3151rUvgal9o+0iVEsM9ScAAk=;
 b=cJX6EFEKqyzQIhewtKjQZOkHFMCvGd7M+mirQJna8n9qw1xa82TKSbKaIbFYhxY+2n
 ffwMkFGmR8ZILqXsVmXPkjZhVRgsaWmdhrnCgnPzazEwg7e7kTV6KMsf19b8MFAeIm0o
 Y8dMAXWmNWoAUPLCLvlKampPVq3Ckx8ImYzhF3ACyN0JlBjtWQ1NLh1nCMqpRJ63fpDH
 VCdTF+fFKXR8GDfnueh3v/KmEJ662IU7w975X1FoJpULTUb9248tS8sMe7Ivrirmtocy
 5iP+0yUfdPBmpf+xBc6ERvFUEgIbFPuu/XbJ7JXYvcr5uVwXKfI3ONod1HmQywphA6eq
 kSWg==
X-Gm-Message-State: ANhLgQ3T8w9yvX7V141SDZe+jQ6C5VdpxtO1PUHef6cZlwrUXsAFFLF+
 K5mfTcgo+3dFiQtLBdoNd7wtZsrvi5OG0mw5sU0d6C0ImMxTLVX/qqju1Hwt7ZC2CdXlSNn9rUH
 L/2UJHk/qPyxXmlKi0Au1GZd/iYv+L5bIIfbI
X-Received: by 2002:a37:6811:: with SMTP id d17mr891160qkc.29.1584479645876;
 Tue, 17 Mar 2020 14:14:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtz1E5CnT0I/o39SIHv9/FhdHYSQstMlOadtR1U7EZ4uHwQMoiTCBpazogvWXh3Ehk1PW3VWC0yWGhr2KG2IMY=
X-Received: by 2002:a37:6811:: with SMTP id d17mr891127qkc.29.1584479645532;
 Tue, 17 Mar 2020 14:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200316183958.20984-1-msuchanek@suse.de>
 <TY2PR01MB5210FA587A093D3E59694CCDDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200317193507.GB25468@kitsune.suse.cz>
 <CACi5LpOiUpr1RE2Af7WnXHwRpmg5zWE35MkppcxitDTdir58Wg@mail.gmail.com>
 <20200317210451.GC25468@kitsune.suse.cz>
In-Reply-To: <20200317210451.GC25468@kitsune.suse.cz>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 18 Mar 2020 02:43:52 +0530
Message-ID: <CACi5LpNN+z7gtpRMMDKTJ_sR0xtONMw-mUmMtbBPnsTauuN0Xg@mail.gmail.com>
Subject: Re: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
To: =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_141409_395432_959C7471 
X-CRM114-Status: GOOD (  31.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?B?UGV0ciBUZXNhxZnDrWs=?= <ptesarik@suse.de>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+IOS4gOS7gSk=?= <k-hagio-ab@nec.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMjozNSBBTSBNaWNoYWwgU3VjaMOhbmVrIDxtc3VjaGFu
ZWtAc3VzZS5kZT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1hciAxOCwgMjAyMCBhdCAwMTo0OTowNUFN
ICswNTMwLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPiA+IE9uIFdlZCwgTWFyIDE4LCAyMDIwIGF0
IDE6MDUgQU0gTWljaGFsIFN1Y2jDoW5layA8bXN1Y2hhbmVrQHN1c2UuZGU+IHdyb3RlOgo+ID4g
Pgo+ID4gPiBPbiBUdWUsIE1hciAxNywgMjAyMCBhdCAwMjoxNDoyMlBNICswMDAwLCBIQUdJTyBL
QVpVSElUTyjokKnlsL4g5LiA5LuBKSB3cm90ZToKPiA+ID4gPiBIaSBNaWNoYWwsCj4gPiA+ID4K
PiA+ID4gPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiA+ID4gPgo+ID4gPiA+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiA+IFJlcG9ydGVkbHkgb24gc29tZSBhcm02NCBz
eXN0ZW1zIG1ha2VkdW1wZmlsZSBsb29wcyBmb3JldmVyIGV4aGF1c3RpbmcKPiA+ID4gPiA+IGFs
bCBtZW1vcnkgd2hlbiBmaWx0ZXJpbmcga2VybmVsIGNvcmUuIEl0IHR1cm5zIG91dCB0aGUgcmVh
c29uIGlzIGl0Cj4gPiA+ID4gPiBjYW5ub3QgcmVzb2x2ZSBzb21lIGFkZHJlc3NlcyBiZWNhdXNl
IHRoZSBQTUQgbWFzayBpcyB3cm9uZy4gV2hlbgo+ID4gPiA+ID4gcGh5c2ljYWwgYWRkcmVzcyBt
YXNrIGFsbG93cyB1cCB0byA0OGJpdHMgcG1kIG1hc2sgc2hvdWxkIGFsbG93IHRoZQo+ID4gPiA+
ID4gc2FtZS4KPiA+ID4gPiA+IEkgc3VwcG9zZSB5b3Ugd291bGQgbmVlZCBhIHN5c3RlbSB0aGF0
IG5lZWRzIHBoeXNpY2FsIGFkZHJlc3NlcyBvdmVyIDFUQgo+ID4gPiA+ID4gdG8gYmUgYWJsZSB0
byByZXByb2R1Y2UgdGhpcy4gVGhpcyBtYXkgYmUgZWl0aGVyIGJlY2F1c2UgeW91IGhhdmUgYSBs
b3QKPiA+ID4gPiA+IG9mIG1lbW9yeSBvciBiZWNhdXNlIHRoZSBmaXJtd2FyZSBtYXBwZWQgc29t
ZSBtZW1vcnkgYWJvdmUgMVRCIGZvciBzb21lCj4gPiA+ID4gPiByZWFzb24uCj4gPiA+ID4gPgo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFN1Y2hhbmVrIDxtc3VjaGFuZWtAc3VzZS5k
ZT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIGFyY2gvYXJtNjQuYyB8IDIgKy0KPiA+ID4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC5jIGIvYXJjaC9hcm02NC5jCj4gPiA+
ID4gPiBpbmRleCA0MzE2NGNjYzMyZDQuLjU0ZDYwYjQ0MDg1MCAxMDA2NDQKPiA+ID4gPiA+IC0t
LSBhL2FyY2gvYXJtNjQuYwo+ID4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC5jCj4gPiA+ID4gPiBA
QCAtODEsNyArODEsNyBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBraW1hZ2Vfdm9mZnNldDsKPiA+
ID4gPiA+ICAgKiBSZW1vdmUgdGhlIGhpZ2hlc3Qgb3JkZXIgYml0cyB0aGF0IGFyZSBub3QgYSBw
YXJ0IG9mIHRoZQo+ID4gPiA+ID4gICAqIHBoeXNpY2FsIGFkZHJlc3MgaW4gYSBzZWN0aW9uCj4g
PiA+ID4gPiAgICovCj4gPiA+ID4gPiAtI2RlZmluZSBQTURfU0VDVElPTl9NQVNLICAgKCgxVUwg
PDwgNDApIC0gMSkKPiA+ID4gPiA+ICsjZGVmaW5lIFBNRF9TRUNUSU9OX01BU0sgICAoKDFVTCA8
PCBQSFlTX01BU0tfU0hJRlQpIC0gMSkKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgI2RlZmluZSBQTURf
VFlQRV9NQVNLICAgICAgICAgICAgICAzCj4gPiA+ID4gPiAgI2RlZmluZSBQTURfVFlQRV9TRUNU
ICAgICAgICAgICAgICAxCj4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gMi4yMy4wCj4gPiA+ID4gPgo+
ID4gPiA+Cj4gPiA+ID4gVGhlbiBJJ2QgcHJlZmVyIHRvIHJlbW92ZSBQTURfU0VDVElPTl9NQVNL
IGFuZCB1c2UgUEhZU19NQVNLIGluc3RlYWQuCj4gPiA+ID4gSXMgaXQgT0s/ICBLZWVwaW5nIFBN
RF9TRUNUSU9OX01BU0sgbG9va3MgYSBsaXR0bGUgY29uZnVzaW5nIHRvIG1lLgo+ID4gPgo+ID4g
PiBUaGlzIGNvZGUgd2lsbCBuZWVkIHRvIGJlIGNoYW5nZWQgZm9yIDUyYml0IHN1cHBvcnQuIEl0
IHJlbWFpbnMgdG8gYmUKPiA+ID4gc2VlbiBpZiB0aGUgbWFzayB3aWxsIGJlIHN0aWxsIHRoZSBz
YW1lIGFmdGVyIHRoYXQuIEkgd291bGQgZ28gd2l0aCBqdXN0Cj4gPiA+IHRoZSBtaW5pbWFsIGZp
eCBmb3Igbm93IHRvIG5vdCBjb21wbGljYXRlIHRoaW5ncy4KPiA+Cj4gPiBFeGFjdGx5LiBJIGFt
IHBsYW5uaW5nIHRvIHNlbmQgb3V0IHRoZSBsYXRlc3QgcmVmcmVzaCBvZiB0aGUga2VybmVsCj4g
PiBhbmQgbWFrZWR1bXBmaWxlIGNoYW5nZXMgZm9yIDUyLWJpdCBtYWtlZHVtcGZpbGUvY3Jhc2gg
c3VwcG9ydCB0aGlzCj4gPiB3ZWVrLgo+ID4KPiA+IElmIHdlIGNhbiB3YWl0IGZvciB0aGUgc2Ft
ZSwgSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgYXMgdGhlIGNvZGUKPiA+IGNoYW5nZXMvbmFt
ZXMgd291bGQgYmUgbW9yZSBzdHJlYW1saW5lZCBhbmQgc2ltaWxhciB0byBMaW51eAo+ID4gY29u
dmVudGlvbnMuCj4gPgo+ID4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHRoYXQgbWFrZXMgc2Vuc2Uu
Cj4KPiBJIHRoaW5rIGJvdGggaXMgdXNlZnVsLiBUaGlzIGlzIGEgbWluaW1hbCBwYXRjaCB0aGF0
IGNhbiBiZSBhcHBsaWVkIHRvCj4gaGlzdG9yaWNhbCB2ZXJzaW9ucyBvZiBtYWtlZHVtcGZpbGUg
aW4gZGlzdHJpYnV0aW9ucy4gVGhpcyBzZWVtcyB0byBoYXZlCj4gYmVlbiBicm9rZW4gZm9yIHF1
aXRlIGEgd2hpbGUgYWxyZWFkeS4KPgo+IEFuZCB3aGlsZSA1MmJpdCBzdXBwb3J0IGlzIG5pY2Ug
SSBkb24ndCBoYXZlIHRoZSBoYXJkd2FyZSB0byB0ZXN0IGl0IHNvCj4gaXQgaXMgb2J2aW91c2x5
IG5vdCB0aGF0IHVzZWZ1bCBmb3IgbWUgYW5kIG1hbnkgb3RoZXIgbWFrZWR1bXBmaWxlCj4gdXNl
cnMuCgpXZWxsIHRoZSA1Mi1iaXQgY2hhbmdlcyB3aWxsIHN0aWxsIHN1cHBvcnQgb2xkZXIgQ1BV
cyB3aGljaCBkb24ndApzdXBwb3J0IHRoZSA1Mi1iaXQgQVJNdjguMiBleHRlbnNpb25zLgpBbHNv
IGFzIHdlIGRpc2N1c3NlZCBpbiB0aGUgcmV2aWV3IG9mIHRoZSBsYXN0IHZlcnNpb24sIHRoZXkg
d2lsbApzdXBwb3J0IG9sZGVyIGtlcm5lbCArIG1ha2VkdW1wZmlsZSBjb21iaW5hdGlvbnMgYXMg
d2UgbmVlZCB0byBzdXBwb3J0CnRoZW0gYXMgd2VsbC4KCkluLWZhY3QgdGhhdCB3b3VsZCBiZSBv
bmUgb2YgdGhlIG1ham9yIGNoYW5nZXMgaW4gdGhlIGxhdGVzdCByZXNwaW4uCgpIb3dldmVyIGlm
IEthenUgaXMgT2sgd2l0aCB0YWtpbmcgdGhpcyBmaXgsIEkgaGF2ZSBubyBpc3N1ZXMgd2l0aCB0
aGUKc2FtZSBhcyB3ZWxsLgoKVGhhbmtzLApCaHVwZXNoCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9rZXhlYwo=
