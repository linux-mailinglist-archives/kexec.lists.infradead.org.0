Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4A2188EDA
	for <lists+kexec@lfdr.de>; Tue, 17 Mar 2020 21:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FV0+Tj/g7ioFRSm5/j0c8yBjsW4fHmpMm6P4askCr/A=; b=YgGMghzJ66eDcp
	IHZp2O3ve8FYtghIB4zWJVM+/Tn4d0ldajC6bhb8ieZoEOTOqbDdR6tu9qOyeUxCKtQ2xsv7O5C6K
	NHn3Ic160RVlYUycIk/IHAYEmV7Zl2W8juRZhVbX6n4L+0FJUUr/VEZdU/Rns23vPYBEC6dNM5Ys5
	+0g6yUpgji1TaFVIQZxALaAAMwRKztrDdRYEhZCCG5oORkaSd5Jr2ASXT2eb6s53M6suiOezv7OHf
	eDkL9i30Ain7Tpcototx7STPz0LAjUX6H6ojQDLbPnH7Tjtr5EWgrMIeyH6dCstMEBWKG5VxJFr6O
	WPeaU+holK6g2gb4aL/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEIgT-0004kf-Bx; Tue, 17 Mar 2020 20:19:29 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEIgP-0004jr-9B
 for kexec@lists.infradead.org; Tue, 17 Mar 2020 20:19:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584476362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EzDafs8FVzBF/K2HnXFtLJuRo/ozfZMZ7wGAhZ8iS6M=;
 b=M7qPmwx/PonGVuFIsaa9uSLUZvYujOGqHfM2kCEsEW1ebVqNhRxJ2jD9KPepP23PB6wcbJ
 sSddSNWAvnKeovVzVzglseFPB8p86EqUHjMhO44waFywEbdcvlORyDM8DQnOs/RpXcpgGh
 6bOT6Tz0DLGTBpwd+Lqc5dcCbXMd7ME=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-7YKBM976NoOeB93fr3cflg-1; Tue, 17 Mar 2020 16:19:18 -0400
X-MC-Unique: 7YKBM976NoOeB93fr3cflg-1
Received: by mail-qk1-f197.google.com with SMTP id m1so523354qkg.5
 for <kexec@lists.infradead.org>; Tue, 17 Mar 2020 13:19:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EzDafs8FVzBF/K2HnXFtLJuRo/ozfZMZ7wGAhZ8iS6M=;
 b=jhUaiALOoMK3qr2DNZnK/WSLhvCel2qh2esv1ilZp5dUY18kwnGpNG6UfFWdbOjLNX
 DqHnDZ8VhPGzeah6P5o+H4edR/dibfUvKYPmFISGbFF/gOdba+Vp3N2mPXZpwz5zZucq
 sl2Cg3+mc8TabTwvkF+72L2IOK69sIh/lADEQv3/Es5Ir0l7dSNLp1R27F4qCAkn9I9X
 koZaCZnqMvB+hB2UUHUmaKqeHVTglmlbr2kXWYfKNoBUFKwm+VLYKFHteBHYWUv9lWIO
 auExZ/wUOhxg06GGZExg8RbxAONgWnzarOnUmMJ3dBZjvWgWsUdS9Ypv3rc0yotcoolt
 S2Cg==
X-Gm-Message-State: ANhLgQ2maTBSsS2xpUUzkTYY08/ZDzv9jEKOo+p2bjaqu3IxFmpEZa2F
 MvucFP/w86GHmco54gmjtpMIzqaBLKvEaSC9359TaTqxq0vfUdNwXZIo2kM8o3cGayi1KxPyspK
 LGMOEE5+cJzWySpl+KsQOdxJjXnKxegOD4rov
X-Received: by 2002:ad4:46d4:: with SMTP id g20mr916479qvw.179.1584476358319; 
 Tue, 17 Mar 2020 13:19:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsUE/FJjniggMigNgmtVhZkn7/njBXvNEefJwruiZFBmHcT90ep9WtXadeSqPbhr87ul7tNkexOqU51oX2SW8o=
X-Received: by 2002:ad4:46d4:: with SMTP id g20mr916398qvw.179.1584476357180; 
 Tue, 17 Mar 2020 13:19:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200316183958.20984-1-msuchanek@suse.de>
 <TY2PR01MB5210FA587A093D3E59694CCDDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200317193507.GB25468@kitsune.suse.cz>
In-Reply-To: <20200317193507.GB25468@kitsune.suse.cz>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 18 Mar 2020 01:49:05 +0530
Message-ID: <CACi5LpOiUpr1RE2Af7WnXHwRpmg5zWE35MkppcxitDTdir58Wg@mail.gmail.com>
Subject: Re: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
To: =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_131925_406369_24C5B3A2 
X-CRM114-Status: GOOD (  24.22  )
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

T24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMTowNSBBTSBNaWNoYWwgU3VjaMOhbmVrIDxtc3VjaGFu
ZWtAc3VzZS5kZT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1hciAxNywgMjAyMCBhdCAwMjoxNDoyMlBN
ICswMDAwLCBIQUdJTyBLQVpVSElUTyjokKnlsL4g5LiA5LuBKSB3cm90ZToKPiA+IEhpIE1pY2hh
bCwKPiA+Cj4gPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiA+Cj4gPiA+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCj4gPiA+IFJlcG9ydGVkbHkgb24gc29tZSBhcm02NCBzeXN0ZW1zIG1h
a2VkdW1wZmlsZSBsb29wcyBmb3JldmVyIGV4aGF1c3RpbmcKPiA+ID4gYWxsIG1lbW9yeSB3aGVu
IGZpbHRlcmluZyBrZXJuZWwgY29yZS4gSXQgdHVybnMgb3V0IHRoZSByZWFzb24gaXMgaXQKPiA+
ID4gY2Fubm90IHJlc29sdmUgc29tZSBhZGRyZXNzZXMgYmVjYXVzZSB0aGUgUE1EIG1hc2sgaXMg
d3JvbmcuIFdoZW4KPiA+ID4gcGh5c2ljYWwgYWRkcmVzcyBtYXNrIGFsbG93cyB1cCB0byA0OGJp
dHMgcG1kIG1hc2sgc2hvdWxkIGFsbG93IHRoZQo+ID4gPiBzYW1lLgo+ID4gPiBJIHN1cHBvc2Ug
eW91IHdvdWxkIG5lZWQgYSBzeXN0ZW0gdGhhdCBuZWVkcyBwaHlzaWNhbCBhZGRyZXNzZXMgb3Zl
ciAxVEIKPiA+ID4gdG8gYmUgYWJsZSB0byByZXByb2R1Y2UgdGhpcy4gVGhpcyBtYXkgYmUgZWl0
aGVyIGJlY2F1c2UgeW91IGhhdmUgYSBsb3QKPiA+ID4gb2YgbWVtb3J5IG9yIGJlY2F1c2UgdGhl
IGZpcm13YXJlIG1hcHBlZCBzb21lIG1lbW9yeSBhYm92ZSAxVEIgZm9yIHNvbWUKPiA+ID4gcmVh
c29uLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU3VjaGFuZWsgPG1zdWNoYW5l
a0BzdXNlLmRlPgo+ID4gPiAtLS0KPiA+ID4gIGFyY2gvYXJtNjQuYyB8IDIgKy0KPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPgo+ID4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC5jIGIvYXJjaC9hcm02NC5jCj4gPiA+IGluZGV4IDQzMTY0
Y2NjMzJkNC4uNTRkNjBiNDQwODUwIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0LmMKPiA+
ID4gKysrIGIvYXJjaC9hcm02NC5jCj4gPiA+IEBAIC04MSw3ICs4MSw3IEBAIHN0YXRpYyB1bnNp
Z25lZCBsb25nIGtpbWFnZV92b2Zmc2V0Owo+ID4gPiAgICogUmVtb3ZlIHRoZSBoaWdoZXN0IG9y
ZGVyIGJpdHMgdGhhdCBhcmUgbm90IGEgcGFydCBvZiB0aGUKPiA+ID4gICAqIHBoeXNpY2FsIGFk
ZHJlc3MgaW4gYSBzZWN0aW9uCj4gPiA+ICAgKi8KPiA+ID4gLSNkZWZpbmUgUE1EX1NFQ1RJT05f
TUFTSyAgICgoMVVMIDw8IDQwKSAtIDEpCj4gPiA+ICsjZGVmaW5lIFBNRF9TRUNUSU9OX01BU0sg
ICAoKDFVTCA8PCBQSFlTX01BU0tfU0hJRlQpIC0gMSkKPiA+ID4KPiA+ID4gICNkZWZpbmUgUE1E
X1RZUEVfTUFTSyAgICAgICAgICAgICAgMwo+ID4gPiAgI2RlZmluZSBQTURfVFlQRV9TRUNUICAg
ICAgICAgICAgICAxCj4gPiA+IC0tCj4gPiA+IDIuMjMuMAo+ID4gPgo+ID4KPiA+IFRoZW4gSSdk
IHByZWZlciB0byByZW1vdmUgUE1EX1NFQ1RJT05fTUFTSyBhbmQgdXNlIFBIWVNfTUFTSyBpbnN0
ZWFkLgo+ID4gSXMgaXQgT0s/ICBLZWVwaW5nIFBNRF9TRUNUSU9OX01BU0sgbG9va3MgYSBsaXR0
bGUgY29uZnVzaW5nIHRvIG1lLgo+Cj4gVGhpcyBjb2RlIHdpbGwgbmVlZCB0byBiZSBjaGFuZ2Vk
IGZvciA1MmJpdCBzdXBwb3J0LiBJdCByZW1haW5zIHRvIGJlCj4gc2VlbiBpZiB0aGUgbWFzayB3
aWxsIGJlIHN0aWxsIHRoZSBzYW1lIGFmdGVyIHRoYXQuIEkgd291bGQgZ28gd2l0aCBqdXN0Cj4g
dGhlIG1pbmltYWwgZml4IGZvciBub3cgdG8gbm90IGNvbXBsaWNhdGUgdGhpbmdzLgoKRXhhY3Rs
eS4gSSBhbSBwbGFubmluZyB0byBzZW5kIG91dCB0aGUgbGF0ZXN0IHJlZnJlc2ggb2YgdGhlIGtl
cm5lbAphbmQgbWFrZWR1bXBmaWxlIGNoYW5nZXMgZm9yIDUyLWJpdCBtYWtlZHVtcGZpbGUvY3Jh
c2ggc3VwcG9ydCB0aGlzCndlZWsuCgpJZiB3ZSBjYW4gd2FpdCBmb3IgdGhlIHNhbWUsIEkgdGhp
bmsgaXQgd291bGQgYmUgYmV0dGVyIGFzIHRoZSBjb2RlCmNoYW5nZXMvbmFtZXMgd291bGQgYmUg
bW9yZSBzdHJlYW1saW5lZCBhbmQgc2ltaWxhciB0byBMaW51eApjb252ZW50aW9ucy4KClBsZWFz
ZSBsZXQgbWUga25vdyBpZiB0aGF0IG1ha2VzIHNlbnNlLgoKVGhhbmtzLApCaHVwZXNoCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGlu
ZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
