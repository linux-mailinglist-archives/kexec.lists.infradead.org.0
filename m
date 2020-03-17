Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84B9189006
	for <lists+kexec@lfdr.de>; Tue, 17 Mar 2020 22:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtFet7LCmC5H891DLR+1pjAA6Qncq7Bd+FS2PG8/wR4=; b=G8IObuy03YQNPS
	2/nK34zGvSWvDkJqzpZgNEn4hHXlbFyTezEl+rny3UuC79WE9VaLszO+T6OVNtc9eygRDwJEdt5a/
	D/XdCfNh2blpgLAwt5XVx2pqxmVSoB4QG23jiKbOPVvP+hQcVFi2P8SePHlV4LXsNQeNMc4z8MRFf
	Cj97hGQfi1qH26vzwCAxkwKGIriGc1JIgiVLH2oj4/r5qF4+LCUaIcPq+AIcgUrLmqLAX1+5M06SI
	qH+mOeeY3Eyb8Je6FabHxrcPQUzETQoCmRAjSp1S+8ljaGtwRdsED6gYjf7lNien15avkEl7jTHn0
	7YmjDyPaV3iQSfL8g0ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJOU-0008KH-Kw; Tue, 17 Mar 2020 21:04:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJOR-0008Jq-6h
 for kexec@lists.infradead.org; Tue, 17 Mar 2020 21:04:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 57EA5AC22;
 Tue, 17 Mar 2020 21:04:53 +0000 (UTC)
Date: Tue, 17 Mar 2020 22:04:51 +0100
From: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
Message-ID: <20200317210451.GC25468@kitsune.suse.cz>
References: <20200316183958.20984-1-msuchanek@suse.de>
 <TY2PR01MB5210FA587A093D3E59694CCDDDF60@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200317193507.GB25468@kitsune.suse.cz>
 <CACi5LpOiUpr1RE2Af7WnXHwRpmg5zWE35MkppcxitDTdir58Wg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpOiUpr1RE2Af7WnXHwRpmg5zWE35MkppcxitDTdir58Wg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_140455_391105_8722D024 
X-CRM114-Status: GOOD (  30.20  )
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
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+IOS4gOS7gSk=?= <k-hagio-ab@nec.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMDE6NDk6MDVBTSArMDUzMCwgQmh1cGVzaCBTaGFybWEg
d3JvdGU6Cj4gT24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMTowNSBBTSBNaWNoYWwgU3VjaMOhbmVr
IDxtc3VjaGFuZWtAc3VzZS5kZT4gd3JvdGU6Cj4gPgo+ID4gT24gVHVlLCBNYXIgMTcsIDIwMjAg
YXQgMDI6MTQ6MjJQTSArMDAwMCwgSEFHSU8gS0FaVUhJVE8o6JCp5bC+IOS4gOS7gSkgd3JvdGU6
Cj4gPiA+IEhpIE1pY2hhbCwKPiA+ID4KPiA+ID4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4g
PiA+Cj4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiBSZXBvcnRlZGx5
IG9uIHNvbWUgYXJtNjQgc3lzdGVtcyBtYWtlZHVtcGZpbGUgbG9vcHMgZm9yZXZlciBleGhhdXN0
aW5nCj4gPiA+ID4gYWxsIG1lbW9yeSB3aGVuIGZpbHRlcmluZyBrZXJuZWwgY29yZS4gSXQgdHVy
bnMgb3V0IHRoZSByZWFzb24gaXMgaXQKPiA+ID4gPiBjYW5ub3QgcmVzb2x2ZSBzb21lIGFkZHJl
c3NlcyBiZWNhdXNlIHRoZSBQTUQgbWFzayBpcyB3cm9uZy4gV2hlbgo+ID4gPiA+IHBoeXNpY2Fs
IGFkZHJlc3MgbWFzayBhbGxvd3MgdXAgdG8gNDhiaXRzIHBtZCBtYXNrIHNob3VsZCBhbGxvdyB0
aGUKPiA+ID4gPiBzYW1lLgo+ID4gPiA+IEkgc3VwcG9zZSB5b3Ugd291bGQgbmVlZCBhIHN5c3Rl
bSB0aGF0IG5lZWRzIHBoeXNpY2FsIGFkZHJlc3NlcyBvdmVyIDFUQgo+ID4gPiA+IHRvIGJlIGFi
bGUgdG8gcmVwcm9kdWNlIHRoaXMuIFRoaXMgbWF5IGJlIGVpdGhlciBiZWNhdXNlIHlvdSBoYXZl
IGEgbG90Cj4gPiA+ID4gb2YgbWVtb3J5IG9yIGJlY2F1c2UgdGhlIGZpcm13YXJlIG1hcHBlZCBz
b21lIG1lbW9yeSBhYm92ZSAxVEIgZm9yIHNvbWUKPiA+ID4gPiByZWFzb24uCj4gPiA+ID4KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU3VjaGFuZWsgPG1zdWNoYW5la0BzdXNlLmRlPgo+
ID4gPiA+IC0tLQo+ID4gPiA+ICBhcmNoL2FybTY0LmMgfCAyICstCj4gPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiA+Cj4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQuYyBiL2FyY2gvYXJtNjQuYwo+ID4gPiA+IGluZGV4IDQzMTY0
Y2NjMzJkNC4uNTRkNjBiNDQwODUwIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQuYwo+
ID4gPiA+ICsrKyBiL2FyY2gvYXJtNjQuYwo+ID4gPiA+IEBAIC04MSw3ICs4MSw3IEBAIHN0YXRp
YyB1bnNpZ25lZCBsb25nIGtpbWFnZV92b2Zmc2V0Owo+ID4gPiA+ICAgKiBSZW1vdmUgdGhlIGhp
Z2hlc3Qgb3JkZXIgYml0cyB0aGF0IGFyZSBub3QgYSBwYXJ0IG9mIHRoZQo+ID4gPiA+ICAgKiBw
aHlzaWNhbCBhZGRyZXNzIGluIGEgc2VjdGlvbgo+ID4gPiA+ICAgKi8KPiA+ID4gPiAtI2RlZmlu
ZSBQTURfU0VDVElPTl9NQVNLICAgKCgxVUwgPDwgNDApIC0gMSkKPiA+ID4gPiArI2RlZmluZSBQ
TURfU0VDVElPTl9NQVNLICAgKCgxVUwgPDwgUEhZU19NQVNLX1NISUZUKSAtIDEpCj4gPiA+ID4K
PiA+ID4gPiAgI2RlZmluZSBQTURfVFlQRV9NQVNLICAgICAgICAgICAgICAzCj4gPiA+ID4gICNk
ZWZpbmUgUE1EX1RZUEVfU0VDVCAgICAgICAgICAgICAgMQo+ID4gPiA+IC0tCj4gPiA+ID4gMi4y
My4wCj4gPiA+ID4KPiA+ID4KPiA+ID4gVGhlbiBJJ2QgcHJlZmVyIHRvIHJlbW92ZSBQTURfU0VD
VElPTl9NQVNLIGFuZCB1c2UgUEhZU19NQVNLIGluc3RlYWQuCj4gPiA+IElzIGl0IE9LPyAgS2Vl
cGluZyBQTURfU0VDVElPTl9NQVNLIGxvb2tzIGEgbGl0dGxlIGNvbmZ1c2luZyB0byBtZS4KPiA+
Cj4gPiBUaGlzIGNvZGUgd2lsbCBuZWVkIHRvIGJlIGNoYW5nZWQgZm9yIDUyYml0IHN1cHBvcnQu
IEl0IHJlbWFpbnMgdG8gYmUKPiA+IHNlZW4gaWYgdGhlIG1hc2sgd2lsbCBiZSBzdGlsbCB0aGUg
c2FtZSBhZnRlciB0aGF0LiBJIHdvdWxkIGdvIHdpdGgganVzdAo+ID4gdGhlIG1pbmltYWwgZml4
IGZvciBub3cgdG8gbm90IGNvbXBsaWNhdGUgdGhpbmdzLgo+IAo+IEV4YWN0bHkuIEkgYW0gcGxh
bm5pbmcgdG8gc2VuZCBvdXQgdGhlIGxhdGVzdCByZWZyZXNoIG9mIHRoZSBrZXJuZWwKPiBhbmQg
bWFrZWR1bXBmaWxlIGNoYW5nZXMgZm9yIDUyLWJpdCBtYWtlZHVtcGZpbGUvY3Jhc2ggc3VwcG9y
dCB0aGlzCj4gd2Vlay4KPiAKPiBJZiB3ZSBjYW4gd2FpdCBmb3IgdGhlIHNhbWUsIEkgdGhpbmsg
aXQgd291bGQgYmUgYmV0dGVyIGFzIHRoZSBjb2RlCj4gY2hhbmdlcy9uYW1lcyB3b3VsZCBiZSBt
b3JlIHN0cmVhbWxpbmVkIGFuZCBzaW1pbGFyIHRvIExpbnV4Cj4gY29udmVudGlvbnMuCj4gCj4g
UGxlYXNlIGxldCBtZSBrbm93IGlmIHRoYXQgbWFrZXMgc2Vuc2UuCgpJIHRoaW5rIGJvdGggaXMg
dXNlZnVsLiBUaGlzIGlzIGEgbWluaW1hbCBwYXRjaCB0aGF0IGNhbiBiZSBhcHBsaWVkIHRvCmhp
c3RvcmljYWwgdmVyc2lvbnMgb2YgbWFrZWR1bXBmaWxlIGluIGRpc3RyaWJ1dGlvbnMuIFRoaXMg
c2VlbXMgdG8gaGF2ZQpiZWVuIGJyb2tlbiBmb3IgcXVpdGUgYSB3aGlsZSBhbHJlYWR5LgoKQW5k
IHdoaWxlIDUyYml0IHN1cHBvcnQgaXMgbmljZSBJIGRvbid0IGhhdmUgdGhlIGhhcmR3YXJlIHRv
IHRlc3QgaXQgc28KaXQgaXMgb2J2aW91c2x5IG5vdCB0aGF0IHVzZWZ1bCBmb3IgbWUgYW5kIG1h
bnkgb3RoZXIgbWFrZWR1bXBmaWxlCnVzZXJzLgoKVGhhbmtzCgpNaWNoYWwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdApr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8va2V4ZWMK
