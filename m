Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64772188E17
	for <lists+kexec@lfdr.de>; Tue, 17 Mar 2020 20:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adQwjJOpzre/IDyEJHB/y67As19u0YszKGnNBx4IZm8=; b=kFlkm9nZEWwaxF
	tWv3dRqCQDZUAsOOfGcnzTmlZDdXQofEf2fJjCwxRJNbvQH1tDG9nxyueIKMJt3Es2QiU3hmlRI6Q
	L9rYCIKOPde+Yat2FXl77+Pn47EtB77O5WKGEB8XaVUF52YV2niVWG2U82mgPycW4CwdnNwClnKzd
	3AkDrsl5Vqi0GQ0hhhOiJpGo9S1um5ehcq/JiGrF+hEprT4zpjHklWfXzmar/ifnEKt8VUXfI7op0
	Qpq6Lkqjh3WFN+3obh83gvVFeejXsDFObUqfu9CD/OeNS9jKgC1juc+tDea7nF1Kd35cPMB3qy0uH
	4nZChIpCeBNJjrDL+b8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEHzg-0006AJ-Hu; Tue, 17 Mar 2020 19:35:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHzd-00069f-L6
 for kexec@lists.infradead.org; Tue, 17 Mar 2020 19:35:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9D548AD4F;
 Tue, 17 Mar 2020 19:35:08 +0000 (UTC)
Date: Tue, 17 Mar 2020 20:35:07 +0100
From: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
To: HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Subject: Re: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
Message-ID: <20200317193507.GB25468@kitsune.suse.cz>
References: <20200316183958.20984-1-msuchanek@suse.de>
 <TY2PR01MB5210FA587A093D3E59694CCDDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY2PR01MB5210FA587A093D3E59694CCDDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_123513_838687_5856F519 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Petr =?utf-8?B?VGVzYcWZw61r?= <ptesarik@suse.de>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXIgMTcsIDIwMjAgYXQgMDI6MTQ6MjJQTSArMDAwMCwgSEFHSU8gS0FaVUhJVE8o
6JCp5bC+IOS4gOS7gSkgd3JvdGU6Cj4gSGkgTWljaGFsLAo+IAo+IFRoYW5rIHlvdSBmb3IgdGhl
IHBhdGNoLgo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IFJlcG9ydGVkbHkg
b24gc29tZSBhcm02NCBzeXN0ZW1zIG1ha2VkdW1wZmlsZSBsb29wcyBmb3JldmVyIGV4aGF1c3Rp
bmcKPiA+IGFsbCBtZW1vcnkgd2hlbiBmaWx0ZXJpbmcga2VybmVsIGNvcmUuIEl0IHR1cm5zIG91
dCB0aGUgcmVhc29uIGlzIGl0Cj4gPiBjYW5ub3QgcmVzb2x2ZSBzb21lIGFkZHJlc3NlcyBiZWNh
dXNlIHRoZSBQTUQgbWFzayBpcyB3cm9uZy4gV2hlbgo+ID4gcGh5c2ljYWwgYWRkcmVzcyBtYXNr
IGFsbG93cyB1cCB0byA0OGJpdHMgcG1kIG1hc2sgc2hvdWxkIGFsbG93IHRoZQo+ID4gc2FtZS4K
PiA+IEkgc3VwcG9zZSB5b3Ugd291bGQgbmVlZCBhIHN5c3RlbSB0aGF0IG5lZWRzIHBoeXNpY2Fs
IGFkZHJlc3NlcyBvdmVyIDFUQgo+ID4gdG8gYmUgYWJsZSB0byByZXByb2R1Y2UgdGhpcy4gVGhp
cyBtYXkgYmUgZWl0aGVyIGJlY2F1c2UgeW91IGhhdmUgYSBsb3QKPiA+IG9mIG1lbW9yeSBvciBi
ZWNhdXNlIHRoZSBmaXJtd2FyZSBtYXBwZWQgc29tZSBtZW1vcnkgYWJvdmUgMVRCIGZvciBzb21l
Cj4gPiByZWFzb24uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBTdWNoYW5layA8bXN1
Y2hhbmVrQHN1c2UuZGU+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0LmMgfCAyICstCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0LmMgYi9hcmNoL2FybTY0LmMKPiA+IGluZGV4IDQzMTY0Y2NjMzJk
NC4uNTRkNjBiNDQwODUwIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC5jCj4gPiArKysgYi9h
cmNoL2FybTY0LmMKPiA+IEBAIC04MSw3ICs4MSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIGtp
bWFnZV92b2Zmc2V0Owo+ID4gICAqIFJlbW92ZSB0aGUgaGlnaGVzdCBvcmRlciBiaXRzIHRoYXQg
YXJlIG5vdCBhIHBhcnQgb2YgdGhlCj4gPiAgICogcGh5c2ljYWwgYWRkcmVzcyBpbiBhIHNlY3Rp
b24KPiA+ICAgKi8KPiA+IC0jZGVmaW5lIFBNRF9TRUNUSU9OX01BU0sJKCgxVUwgPDwgNDApIC0g
MSkKPiA+ICsjZGVmaW5lIFBNRF9TRUNUSU9OX01BU0sJKCgxVUwgPDwgUEhZU19NQVNLX1NISUZU
KSAtIDEpCj4gPiAKPiA+ICAjZGVmaW5lIFBNRF9UWVBFX01BU0sJCTMKPiA+ICAjZGVmaW5lIFBN
RF9UWVBFX1NFQ1QJCTEKPiA+IC0tCj4gPiAyLjIzLjAKPiA+IAo+IAo+IFRoZW4gSSdkIHByZWZl
ciB0byByZW1vdmUgUE1EX1NFQ1RJT05fTUFTSyBhbmQgdXNlIFBIWVNfTUFTSyBpbnN0ZWFkLgo+
IElzIGl0IE9LPyAgS2VlcGluZyBQTURfU0VDVElPTl9NQVNLIGxvb2tzIGEgbGl0dGxlIGNvbmZ1
c2luZyB0byBtZS4KClRoaXMgY29kZSB3aWxsIG5lZWQgdG8gYmUgY2hhbmdlZCBmb3IgNTJiaXQg
c3VwcG9ydC4gSXQgcmVtYWlucyB0byBiZQpzZWVuIGlmIHRoZSBtYXNrIHdpbGwgYmUgc3RpbGwg
dGhlIHNhbWUgYWZ0ZXIgdGhhdC4gSSB3b3VsZCBnbyB3aXRoIGp1c3QKdGhlIG1pbmltYWwgZml4
IGZvciBub3cgdG8gbm90IGNvbXBsaWNhdGUgdGhpbmdzLgoKVGhhbmtzCgpNaWNoYWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcg
bGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8va2V4ZWMK
