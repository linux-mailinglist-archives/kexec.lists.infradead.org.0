Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0844B164FAD
	for <lists+kexec@lfdr.de>; Wed, 19 Feb 2020 21:18:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PSxFUfnco0sQGSDfTFwztye8KU2sds1dO/qtWwTWyc=; b=mKEo4FrghNBtpg
	Nd+PSL7Vecg/7SKMzL3z9EtgnQldj3CMT/v0NSDOmpEmPwZX9mTF6vPkjJr1E+eCTL/ZNvr0B4cR/
	wGdAto/A5mW3umekFDj1WpjF4Xm4wO53lHqP0U1kMXd0n9fRkU71paWOMV6y1KSIi5pFWDC17fkUJ
	K4qQrTDCcgN9+bYCR8y0uzektxvT9v+Up2c25EH5AV26McEw8YH5QheRTysoy+lgw7NS90t8LnFTy
	HWGMJFdK6ewYTHaLYrHLxxN1p80XVygpsfulF3ZBXhgvxhhEthPsjvjbuN2HDJ8afcj28eLBRkT2Q
	CcKGus0V7Pp6sZ47GtqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4VnL-0008RU-DA; Wed, 19 Feb 2020 20:18:07 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4VnI-0008Qw-01
 for kexec@lists.infradead.org; Wed, 19 Feb 2020 20:18:05 +0000
Received: from [177.138.39.16] (helo=calabresa)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <cascardo@canonical.com>)
 id 1j4Vn7-0007qZ-Q2; Wed, 19 Feb 2020 20:17:54 +0000
Date: Wed, 19 Feb 2020 17:17:42 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Message-ID: <20200219201742.GB4414@calabresa>
References: <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
 <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
 <20200204103954.GH40679@calabresa>
 <TY2PR01MB52108AD0131515408592E08CDD030@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <cca47a31-6e05-2812-65a1-832621992553@redhat.com>
 <0b743d83-d874-a093-82d1-e6d3d8bc47e0@redhat.com>
 <5d8adf59-a4fa-0a5f-84ea-6ce64f7d208c@redhat.com>
 <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_121804_176845_FB084EE2 
X-CRM114-Status: GOOD (  30.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: piliu <piliu@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gV2VkLCBGZWIgMTksIDIwMjAgYXQgMDg6MTI6NDFQTSArMDAwMCwgSEFHSU8gS0FaVUhJVE8o
6JCp5bC+IOS4gOS7gSkgd3JvdGU6Cj4gSGkgQ2FzY2FyZG8sCj4gCj4gRG8geW91IGhhdmUgYW55
IHNvbHV0aW9uIG9yIGRldGFpbGVkIGluZm9ybWF0aW9uIG9uIHRoZSBmYWlsdXJlIG9uIHlvdXIg
a2VybmVsPwo+IG9yIGNvdWxkIHlvdSB0cnkgdGhpcyBicmFuY2g/ICBJdCBoYXMgYW4gYWRkaXRp
b25hbCBwYXRjaCBvbiB0b3Agb2YgUGluZ2ZhbidzCj4gb25lIHRvIGF2b2lkIHRoZSBmYWxzZSBw
b3NpdGl2ZSBmYWlsdXJlIHRoYXQgSSdtIHN1c3BlY3Rpbmc6Cj4gaHR0cHM6Ly9naXRodWIuY29t
L2staGFnaW8vbWFrZWR1bXBmaWxlL3RyZWUvbW9kaWZ5LW1lbV9zZWN0aW9uLXZhbGlkYXRpb24K
PiAKPiBQaW5nZmFuLAo+IERvIHlvdSBoYXZlIGFuIG91dHB1dCBvZiBtYWtlZHVtcGZpbGUgd2hl
biB0aGUgb3JpZ2luYWwgZmFpbHVyZSBvY2N1cnM/Cj4gSWYgeW91IGRvbid0IGFuZCBpdCdzIGhh
cmQgdG8gZ2V0IGl0LCBubyBuZWVkIHRvIGRvIHNvLiAgSSBqdXN0IHdvdWxkIGxpa2UgdG8KPiBh
ZGQgaXQgdG8geW91ciBwYXRjaCBpZiBhdmFpbGFibGUuCj4gCj4gVGhhbmtzLAo+IEthenUKCldp
bGwgdHJ5IHRoZSBzYWlkIGJyYW5jaC4gU29ycnkgdGhhdCBJIGNvdWxkbid0IHdvcmsgdGhpcyBv
dXQgYmVmb3JlLiBJIHdhcwp0cnlpbmcgdG8gcmVwcm9kdWNlIHRoaXMgdG9kYXksIGJ1dCBlbmQg
dXAgaW4gYSByYWJiaXQgaG9sZSB3aGVuIHFlbXUrS1ZNCnN0YXJ0ZWQgZmFpbGluZyBmb3IgdW5y
ZWxhdGVkIHJlYXNvbnMgYWZ0ZXIgYW4gdXBncmFkZS4KCkknbGwgdHJ5IHRvIGNvbWUgdXAgd2l0
aCBzb21lIG5ldyByZXN1bHRzIGJ5IHRvbW9ycm93IGxhdGVyIGluIHRoZSBkYXkuCgpUaGFua3Mu
CkNhc2NhcmRvLgoKPiAKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gT24gMDIvMTIv
MjAyMCAxMjoxMSBQTSwgcGlsaXUgd3JvdGU6Cj4gPiA+Cj4gPiA+Cj4gPiA+IE9uIDAyLzA2LzIw
MjAgMTE6NDYgQU0sIHBpbGl1IHdyb3RlOgo+ID4gPj4KPiA+ID4+Cj4gPiA+PiBPbiAwMi8wNS8y
MDIwIDA1OjE4IEFNLCBIQUdJTyBLQVpVSElUTyB3cm90ZToKPiA+ID4+Pj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0KPiA+ID4+Pj4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDI6MjQ6MTdQ
TSArMDgwMCwgcGlsaXUgd3JvdGU6Cj4gPiA+Pj4+PiBIaSwKPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBT
b3JyeSB0byByZXBseSBsYXRlIGR1ZSB0byBhIGxvbmcgZmVzdGl2YWwuCj4gPiA+Pj4+Pgo+ID4g
Pj4+Pj4gSSBoYXZlIHRlc3RlZCB0aGlzIHBhdGNoIGFnYWluc3QgdjQuMTUgYW5kIGxhdGVzdCBr
ZXJuZWwgd2l0aCBzbWFsbAo+ID4gPj4+Pj4gbW9kaWZpY2F0aW9uIHRvIG1lZXQgdGhlIHNpdHVh
dGlvbiB3ZSBkaXNjdXNzZWQgaGVyZS4gQm90aCB3b3JrIGZpbmUuCj4gPiA+Pj4+Pgo+ID4gPj4+
Pj4gVGhlIGJlbG93IGlzIHRoZSBtb2RpZmljYXRpb24gb2YgdHdvIGtlcm5lbAo+ID4gPj4+Pj4K
PiA+ID4+Pj4+IHRlc3QxLiBsYXRlc3Qga2VybmVsIHdpdGggdHdvIGV4dHJhIG1vZGlmaWNhdGlv
biB0byBleHBvc2UgdGhlIHByb2JsZW0KPiA+ID4+Pj4+IC0xLjEgcmV2ZXJ0cyBjb21taXQgMWY1
MDM0NDNlN2RmOGRjODM2NjYwOGI0ZDgxMGNlMmQ2NjY5ODI3Ywo+ID4gPj4+Pj4gKG1tL3NwYXJz
ZS5jOiByZXNldCBzZWN0aW9uJ3MgbWVtX21hcCB3aGVuIGZ1bGx5IGRlYWN0aXZhdGVkKSwgdGhp
cwo+ID4gPj4+Pj4gY29tbWl0IHdvcmsgYXJvdW5kIHRoaXMgYnVnCj4gPiA+Pj4+PiAtMS4yLiBy
ZXZlcnRzIGNvbW1pdCBhMGIxMjgwMzY4ZDFlOTFhYjcyZjg0OWVmMDk1YjRmMDdhMzliYmYxICgi
a2R1bXA6Cj4gPiA+Pj4+PiB3cml0ZSBjb3JyZWN0IGFkZHJlc3Mgb2YgbWVtX3NlY3Rpb24gaW50
byB2bWNvcmVpbmZvIikuIFRoaXMgd2lsbCBjcmVhdGUKPiA+ID4+Pj4+IGEgYnVnZ3kgc2l0dWF0
aW9uIGFzIHdlIGRpc2N1c3NlZCBoZXJlLgo+ID4gPj4+Pj4gLTEuMy4gZml4IGJ1aWxkaW5nIGJ1
ZyBkdWUgdG8gcmV2ZXJ0Cj4gPiA+Pj4+PiBhMGIxMjgwMzY4ZDFlOTFhYjcyZjg0OWVmMDk1YjRm
MDdhMzliYmYxCj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gdGVzdDIuIHY0LjE1LCB3aGljaCBpbmNsdWRl
IGJvdGggY29tbWl0IDgzZTNjNDg3MjlkOSBhbmQgYTBiMTI4MDM2OGQxLgo+ID4gPj4+Pj4gLTIu
MS4gcmV2ZXJ0IGNvbW1pdCBhMGIxMjgwMzY4ZDFlOTFhYjcyZjg0OWVmMDk1YjRmMDdhMzliYmYx
ICgia2R1bXA6Cj4gPiA+Pj4+PiB3cml0ZSBjb3JyZWN0IGFkZHJlc3Mgb2YgbWVtX3NlY3Rpb24g
aW50byB2bWNvcmVpbmZvIikKPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBTbyBJIGNhbiBub3Qgc2VlIGFu
eSBwcm9ibGVtIHdpdGggbXkgcGF0Y2guCj4gPiA+Pj4+PiBNYXliZSBJIG1pc3VuZGVyc3RhbmQg
dGhlIGRpc2N1c3Npb24sIGJ1dCBJIGNhbiBub3Qgc2VlIG15IG9yaWdpbmFsCj4gPiA+Pj4+PiBw
YXRjaCB3aWxsIGJyZWFrIHRoZSBrZXJuZWwgd2hpY2ggaGF2ZSA4M2UzYzQ4NzI5ZDkgYnV0IG5v
dCBhMGIxMjgwMzY4ZDEuCj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gVGhhbmtzLAo+ID4gPj4+Pj4gUGlu
Z2Zhbgo+ID4gPj4+Pj4KPiA+ID4+Pj4KPiA+ID4+Pj4gWW91IGFsc28gbmVlZCB0byB0ZXN0IHRo
ZSBjYXNlIHdoZXJlIDgzZTNjNDg3MjlkOSBpcyBub3QgcHJlc2VudCBhdCBhbGwuIENhbgo+ID4g
Pj4+PiB5b3UgdGVzdCBvbiBhIDQuNCBrZXJuZWwsIGZvciBleGFtcGxlPyBBcyBmYXIgYXMgSSB1
bmRlcnN0YW5kLCBhIHZhbmlsbGEgNC40Cj4gPiA+Pj4+IGtlcm5lbCB3b3VsZCBub3QgYmUgZHVt
cGFibGUgd2l0aCB5b3VyIHBhdGNoLgo+ID4gPj4+Cj4gPiA+Pj4gQXMgZmFyIGFzIEkndmUgdGVz
dGVkIHRoaXMgcGF0Y2ggd2l0aCBTUEFSU0VNRU1fRVhUUkVNRSB2bWNvcmVzIGJlbG93LCBpdCdz
IE9LOgo+ID4gPj4+ICAgLSA1MSB2bWNvcmVzIG9mIHZhbmlsbGEga2VybmVscyAoZWFjaCBmcm9t
IDIuNi4zNiB0aHJvdWdoIDUuNSkgb24gaGFuZAo+ID4gPj4+ICAgLSBvbmUgbW9yZSB2YW5pbGxh
IDQuNC4wIGtlcm5lbCB3aXRoIGEgZGlmZmVyZW50IGNvbmZpZyBmcm9tIHRoZSBhYm92ZQo+ID4g
Pj4+Cj4gPiA+Pj4gU28gYXBwYXJlbnRseSBub3QgYWxsIHZhbmlsbGEgNC40IGtlcm5lbHMgYXJl
IGFmZmVjdGVkIGJ5IHRoZSBwYXRjaC4KPiA+ID4+Pgo+ID4gPj4gU29ycnksIGR1ZSB0byB0b3Vj
aCBoYXJkd2FyZSByZXNvdXJjZSBpbiBvdXIgbGFiLCBJIGNhbiBub3QgaGF2ZSBhIHRlc3QKPiA+
ID4+IG9uIHY0LjQgb24gYSBzeXN0ZW0gd2l0aCBob3RwbHVnIG1lbW9yeSB5ZXQuIEkgc3RpbGwg
dHJ5IHRvIGZpbmQgc29tZQo+ID4gPj4gcmVzb3VyY2UuCj4gPiA+Pgo+ID4gPj4gQnV0IGZyb20g
dGhlIGxvZ2ljIG9mIHRoaXMgcGF0Y2gsIGl0IGp1c3QgZG9lcyB0aGUgZm9sbG93aW5nIGNoYW5n
ZXM6Cj4gPiA+PiAtMS4gQWZ0ZXIgbWVtb3J5IGhvdC1yZW1vdmVkLCBlaXRoZXIgbWVtX3NlY3Rp
b24uc2VjdGlvbl9tZW1fbWFwID0gTlVMTAo+ID4gPj4gb3IgbWVtX3NlY3Rpb24uc2VjdGlvbl9t
ZW1fbWFwIHdpdGhvdXQgU0VDVElPTl9NQVJLRURfUFJFU0VOVCwgd2Ugd2lsbAo+ID4gPj4gaGF2
ZSBtZW1fbWFwc1tzZWN0aW9uX25yXSA9IG1lbV9tYXAgPSBOT1RfTUVNTUFQX0FERFIsIHNvIGxh
dGVyIGl0IHdpbGwKPiA+ID4+IGJlIHNraXBwZWQuCj4gPiA+PiAtMi4gSWYgbm90IHBvcHVsYXRl
ZCwgbWVtX3NlY3Rpb24uc2VjdGlvbl9tZW1fbWFwID0gTlVMTC4gSXQgY2FuIGZvbGxvdwo+ID4g
Pj4gdGhlIHNhbWUgaGFuZGxpbmcgb2YgaG90LXJlbW92ZWQsIGFuZCBiZSBza2lwcGVkIGR1cmlu
ZyBwYXJzaW5nLgo+ID4gPj4KPiA+ID4+IEFuZCBpbiB2NC40IHNwYXJzZV9yZW1vdmVfb25lX3Nl
Y3Rpb24oKSBqdXN0IGFzc2lnbnMgbXMtPnNlY3Rpb25fbWVtX21hcAo+ID4gPj4gPSAwLCB3aGlj
aCBjYW4gbm90IGJlIHZpb2xhdGVkIGJ5IHRoZSBhYm92ZSBjaGFuZ2VzLgo+ID4gUGluZy4gQXMg
YWxsIG9mIHVzIGNhbiBub3QgcmVwcm9kdWNlIHRoaXMgYnVnIGJ5IHY0LjQga2VybmVsLCBmdXJ0
aGVyCj4gPiBtb3JlLCB0aGVyZSBpcyBubyBjb2RlIGFuYWx5c2lzLCB3aGljaCBwZXJzdWFkZXMg
dXMgdGhpcyBwYXRjaCB3aWxsCj4gPiBicmVhayB0aGUgbWFrZWR1bXBmaWxlIG9uIGFueSBrZXJu
ZWwgdmVyc2lvbi4KPiA+IAo+ID4gQ291bGQgdGhpcyBiZXR0ZXItdG8taGF2ZSBwYXRjaCBiZSBh
Y2NlcHRlZD8KPiA+IAo+ID4gVGhhbmtzLAo+ID4gUGluZ2Zhbgo+ID4gPiBMYXN0IG5pZ2h0LCBJ
IGdvdCBhIG1hY2hpbmUgdG8gdGVzdCB0aGlzIHNjZW5lLiBBZnRlciBhcHBseWluZyBteSBwYXRj
aAo+ID4gPiBtYWtlZHVtcGZpbGUgY2FuIHN0aWxsIHdvcmsgd2l0aCB2NC40IGtlcm5lbC4KPiA+
ID4KPiA+ID4gVGhhbmtzLAo+ID4gPiBQaW5nZmFuCj4gPiA+Cj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2tleGVjCg==
