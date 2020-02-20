Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DFA166A16
	for <lists+kexec@lfdr.de>; Thu, 20 Feb 2020 22:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55dZb4z5EVK9nzQ7TliMIYju0Mtv8VieWakMpOLWSg4=; b=ufxl6+nvg1WjCb
	+Oykz04dp+LL7us+45zs3Wfhu0/qfD3zEaq5AIwjBuOkGGIkZjArhyQ49yQvxAzSvPBp0v8b8itzD
	X2FxCim8AjLyh1VN/VuFkiJ7TGND4EYr2pAKTHOVpCjcNOaL4IG/KGITNyG4kSwng+EsRGc4Uk8gu
	r3F/a1CB9+SINjYeUW0PlLnU7T8D8fARJYh5JJ8dSKC1He3zmocPANB4HVaJ6TIR3HvQ5nxAoiTEi
	3g7wIO7zRNF+aGTYDzjWb/GL8xOPoFFv+AZGeQJ4ZDVK/+4zyRL0Sk8n9KLUmcb43sgSK0KGJ03n7
	qgM6tD7la3RCuHNEZE7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4toy-0007ST-Nw; Thu, 20 Feb 2020 21:57:24 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tou-0007RV-QL
 for kexec@lists.infradead.org; Thu, 20 Feb 2020 21:57:22 +0000
Received: from [177.138.39.16] (helo=calabresa)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <cascardo@canonical.com>)
 id 1j4tom-00066o-Hz; Thu, 20 Feb 2020 21:57:13 +0000
Date: Thu, 20 Feb 2020 18:57:05 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Message-ID: <20200220215705.GC3988@calabresa>
References: <20200128193302.GC4080@calabresa>
 <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
 <20200204103954.GH40679@calabresa>
 <TY2PR01MB52108AD0131515408592E08CDD030@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <cca47a31-6e05-2812-65a1-832621992553@redhat.com>
 <0b743d83-d874-a093-82d1-e6d3d8bc47e0@redhat.com>
 <5d8adf59-a4fa-0a5f-84ea-6ce64f7d208c@redhat.com>
 <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <2902b7be-5361-ea21-fcc6-099f4cc7551d@redhat.com>
 <TY2PR01MB5210849D881E84A16D8B5546DD130@TY2PR01MB5210.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY2PR01MB5210849D881E84A16D8B5546DD130@TY2PR01MB5210.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_135720_992651_4B6B2263 
X-CRM114-Status: GOOD (  28.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

T24gVGh1LCBGZWIgMjAsIDIwMjAgYXQgMDM6NDA6MTJQTSArMDAwMCwgSEFHSU8gS0FaVUhJVE8o
6JCp5bC+IOS4gOS7gSkgd3JvdGU6Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IE9u
IDAyLzIwLzIwMjAgMDQ6MTIgQU0sIEhBR0lPIEtBWlVISVRPIHdyb3RlOgo+ID4gPiBIaSBDYXNj
YXJkbywKPiA+ID4KPiA+ID4gRG8geW91IGhhdmUgYW55IHNvbHV0aW9uIG9yIGRldGFpbGVkIGlu
Zm9ybWF0aW9uIG9uIHRoZSBmYWlsdXJlIG9uIHlvdXIga2VybmVsPwo+ID4gPiBvciBjb3VsZCB5
b3UgdHJ5IHRoaXMgYnJhbmNoPyAgSXQgaGFzIGFuIGFkZGl0aW9uYWwgcGF0Y2ggb24gdG9wIG9m
IFBpbmdmYW4ncwo+ID4gPiBvbmUgdG8gYXZvaWQgdGhlIGZhbHNlIHBvc2l0aXZlIGZhaWx1cmUg
dGhhdCBJJ20gc3VzcGVjdGluZzoKPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL2staGFnaW8vbWFr
ZWR1bXBmaWxlL3RyZWUvbW9kaWZ5LW1lbV9zZWN0aW9uLXZhbGlkYXRpb24KPiA+ID4KPiA+ID4g
UGluZ2ZhbiwKPiA+ID4gRG8geW91IGhhdmUgYW4gb3V0cHV0IG9mIG1ha2VkdW1wZmlsZSB3aGVu
IHRoZSBvcmlnaW5hbCBmYWlsdXJlIG9jY3Vycz8KPiA+ID4gSWYgeW91IGRvbid0IGFuZCBpdCdz
IGhhcmQgdG8gZ2V0IGl0LCBubyBuZWVkIHRvIGRvIHNvLiAgSSBqdXN0IHdvdWxkIGxpa2UgdG8K
PiA+ID4gYWRkIGl0IHRvIHlvdXIgcGF0Y2ggaWYgYXZhaWxhYmxlLgo+ID4gSSBkaWQgdGhlIHRl
c3Qgb24gYSBQb3dlclZNLiBBZnRlciBob3QgcmVtb3ZpbmcgdGhlIG1lbW9yeSwgc2F2ZSBhIHJh
dwo+ID4gdm1jb3JlIGJ5ICJjcCIsIHRoZW4gcnVuIG1ha2VkdW1wZmlsZSBhZ2FpbnN0IHRoZSAi
Y3AiIHZtY29yZSwgYW5kIGl0Cj4gPiB3aWxsIGdldCB0aGUgZm9sbG93aW5nIGVycm9yIG1lc3Nh
Z2U6Cj4gPiAjIG1ha2VkdW1wZmlsZSAteCB2bWxpbnV4IC1sIC1kIDMxIHZtY29yZSB2bWNvcmUu
ZHVtcAo+ID4gZ2V0X21lbV9zZWN0aW9uOiBDb3VsZCBub3QgdmFsaWRhdGUgbWVtX3NlY3Rpb24u
Cj4gPiBnZXRfbW1fc3BhcnNlbWVtOiBDYW4ndCBnZXQgdGhlIGFkZHJlc3Mgb2YgbWVtX3NlY3Rp
b24uCj4gPiAKPiA+IG1ha2VkdW1wZmlsZSBGYWlsZWQuCj4gCj4gVGhhbmsgeW91LCB3aWxsIGFk
ZCBpdCB0byB5b3VyIHBhdGNoLgo+IAo+IGFuZCBhIGJpdCBvZiBleHBsYW5hdGlvbiBmb3IgdGhl
IGJyYW5jaCBhYm92ZS4uCj4gCj4gPiA+Pj4+IEJ1dCBmcm9tIHRoZSBsb2dpYyBvZiB0aGlzIHBh
dGNoLCBpdCBqdXN0IGRvZXMgdGhlIGZvbGxvd2luZyBjaGFuZ2VzOgo+ID4gPj4+PiAtMS4gQWZ0
ZXIgbWVtb3J5IGhvdC1yZW1vdmVkLCBlaXRoZXIgbWVtX3NlY3Rpb24uc2VjdGlvbl9tZW1fbWFw
ID0gTlVMTAo+ID4gPj4+PiBvciBtZW1fc2VjdGlvbi5zZWN0aW9uX21lbV9tYXAgd2l0aG91dCBT
RUNUSU9OX01BUktFRF9QUkVTRU5ULCB3ZSB3aWxsCj4gPiA+Pj4+IGhhdmUgbWVtX21hcHNbc2Vj
dGlvbl9ucl0gPSBtZW1fbWFwID0gTk9UX01FTU1BUF9BRERSLCBzbyBsYXRlciBpdCB3aWxsCj4g
PiA+Pj4+IGJlIHNraXBwZWQuCj4gPiA+Pj4+IC0yLiBJZiBub3QgcG9wdWxhdGVkLCBtZW1fc2Vj
dGlvbi5zZWN0aW9uX21lbV9tYXAgPSBOVUxMLiBJdCBjYW4gZm9sbG93Cj4gPiA+Pj4+IHRoZSBz
YW1lIGhhbmRsaW5nIG9mIGhvdC1yZW1vdmVkLCBhbmQgYmUgc2tpcHBlZCBkdXJpbmcgcGFyc2lu
Zy4KPiA+ID4+Pj4KPiA+ID4+Pj4gQW5kIGluIHY0LjQgc3BhcnNlX3JlbW92ZV9vbmVfc2VjdGlv
bigpIGp1c3QgYXNzaWducyBtcy0+c2VjdGlvbl9tZW1fbWFwCj4gPiA+Pj4+ID0gMCwgd2hpY2gg
Y2FuIG5vdCBiZSB2aW9sYXRlZCBieSB0aGUgYWJvdmUgY2hhbmdlcy4KPiA+ID4+IFBpbmcuIEFz
IGFsbCBvZiB1cyBjYW4gbm90IHJlcHJvZHVjZSB0aGlzIGJ1ZyBieSB2NC40IGtlcm5lbCwgZnVy
dGhlcgo+ID4gPj4gbW9yZSwgdGhlcmUgaXMgbm8gY29kZSBhbmFseXNpcywgd2hpY2ggcGVyc3Vh
ZGVzIHVzIHRoaXMgcGF0Y2ggd2lsbAo+ID4gPj4gYnJlYWsgdGhlIG1ha2VkdW1wZmlsZSBvbiBh
bnkga2VybmVsIHZlcnNpb24uCj4gCj4gSSdtIG5vdCBjbGVhciB3aGF0IGNhdXNlcyBpdCBvbiB0
aGUgNC40IGtlcm5lbCBiZWNhdXNlIG9mIGxhY2sgb2YgaW5mb3JtYXRpb24uCj4gQnV0IGF0IGxl
YXN0IHlvdXIgcGF0Y2ggcmVsYXhlcyB0aGUgY29uZGl0aW9uIHRvIHJlY29nbml6ZSBkYXRhIG9m
IGFuIGFkZHJlc3MKPiBhcyBhIHZhbGlkIG1lbV9zZWN0aW9uLiAgU28gSSdtIGNvbmNlcm5lZCB0
aGF0IGJvdGggb2YgdGhlIGZpcnN0IGFuZCBzZWNvbmQKPiB2YWxpZGF0ZV9tZW1fc2VjdGlvbigp
IG1heSByZXR1cm4gdHJ1ZSBieSBhY2NpZGVudCBvciBzb21ldGhpbmcuICBJZiBpdCBpcyBub3QK
PiBjYXVzZWQgYnkgYSBwYXRjaCBpbiB0aGUgNC40IGtlcm5lbCwgZm9yIGV4YW1wbGUsIGp1c3Qg
ZGF0YSBsb2NhdGlvbiBjYXVzZXMgaXQsCj4gaXQgbWF5IG9jY3VyIG9uIHVwc3RyZWFtIGtlcm5l
bHMuICBBbHRob3VnaCB3ZSBjYW5ub3QgcmVwcm9kdWNlIGl0IHNvIGZhci4KPiAKPiBXaGF0ZXZl
ciBjYXVzZXMgaXQsIGluIHRoZSBmaXJzdCBwbGFjZSwgdXBzdHJlYW0ga2VybmVscyB3aXRoIHZt
Y29yZWluZm8gZG9uJ3QKPiBuZWVkIHRoZSBzZWNvbmQgdmFsaWRhdGVfbWVtX3NlY3Rpb24oKS4g
IEl0J3MgYWxtb3N0IGZvciBzb21lIGRvd25zdHJlYW0KPiBrZXJuZWxzIGFuZCBoYXMgYSByaXNr
IHRoYXQgY2F1c2VzIHByb2JsZW0gbGlrZSB0aGlzLiAgU28gSSdtIHRoaW5raW5nIHRoYXQKPiBp
dCBtaWdodCBiZSBzYWZlciB0byBjaGFuZ2UgaXQgdG8gdGhlIGlmKCFyZXQpIHdheSBvbiB0aGUg
YnJhbmNoIGFib3ZlCj4gd2l0aCB5b3VyIHBhdGNoLgo+IAo+IFRoYW5rcywKPiBLYXp1Cj4gCgpI
aSwgS2F6dS4KCkZvciBub3csIEkgd291bGQga2VlcCBQaW5nZmFuJ3MgcGF0Y2ggYXMgaXMuIEkg
ZGVjaWRlZCB0byB0ZXN0IHNvbWUgb3RoZXIKa2VybmVscywgbGlrZSAzLjE2IGFuZCA0Ljkgd2l0
aG91dCBjb21taXQKODNlM2M0ODcyOWQ5ZWJiN2FmNWEzMWE1MDRmM2ZkNmFmZjAzNDhjNC4KClNv
LCB0aGV5IHdvdWxkIGJlIHZhbGlkIGZvciB0aGUgZmlyc3QgaXRlcmF0aW9uIGFuZCBpbnZhbGlk
IGZvciB0aGUgc2Vjb25kLApqdXN0IGxpa2UgVWJ1bnR1J3MgNC40IGtlcm5lbC4gQXMgSSBjb3Vs
ZG4ndCByZXByb2R1Y2UgdGhlIHByb2JsZW0sIEkKaW52ZXN0aWdhdGVkIGZ1cnRoZXIgYW5kIHJl
YWxpemVkIEkgd2FzIHRlc3Rpbmcgd2l0aG91dCB5b3VyIGNvbW1pdCBmb3IKbWFrZWR1bXBmaWxl
OiA4ZjFhYWZhMTY0MzUzMmVjZTg2Y2JhMjJmMjE4N2QwZjQyZmI3Y2EzICgiUEFUQ0ggRml4CnZh
bGlkYXRlX21lbV9zZWN0aW9uKCkiKS4KCldpdGggdGhhdCBvbmUsIGFsbCBvZiBVYnVudHUncyA0
LjQga2VybmVsIGFuZCBEZWJpYW4ncyAzLjE2IGFuZCA0Ljkga2VybmVscwpkdW1wIGNvcnJlY3Rs
eS4gV2l0aG91dCB0aGF0IG9uZSwgYWxsIGZhaWwsIGFuZCBJIHN1cHBvc2UgaXQgd291bGQgYmUg
ZWFzaWx5CnJlcHJvZHVjaWJsZS4KClNvLCBpbiBlZmZlY3QsIHdlIGFyZSBsb29raW5nIGZvciBh
bnkgZW50cnkgd2l0aCB0aGUgcHJlc2VudCBiaXQsIGFuZCB0aGVuCmNoZWNraW5nIGl0IGlzIHZh
bGlkIGtlcm5lbCBhZGRyZXNzLiBUaGF0IHNlZW1zIHRvIHdvcmsganVzdCBmaW5lLgoKQXMgeW91
IG1lbnRpb24sIHRoZSBvbmx5IGNhc2Ugd2UgZG8gdGhlIHNlY29uZCBjaGVjayBpcyBmb3Igc29t
ZSBkb3duc3RyZWFtCmtlcm5lbHMgKHRob3VnaCBJIHdvdWxkIGFyZ3VlIHdlIHNob3VsZCBjYXJl
IGFib3V0IHRob3NlIHRoZSBtb3N0KSwgYnV0IGF0CmxlYXN0IGZyb20gdGhlIFVidW50dSBzaWRl
LCB0aG9zZSBzaG91bGQgbm90IGJlIGFyb3VuZCBpbiB0aGUgZmllbGQgYW55bW9yZSwKYW5kLCBi
eSBkZWZhdWx0LCB0aG9zZSBzaG91bGQgYmUgdGhlIHJhcmUgZXhjZXB0aW9uIGFueXdheS4gU28s
IEkgYWdyZWUgd2l0aAp5b3VyIGZvbGxvdy11cCBjb21taXQgaW4geW91ciBicmFuY2gsIGFzIGl0
IGFsc28gc2ltcGxpZmllcyB0aGUgY29kZSBhIGxvdC4KCklmIHlvdSBjYXJlLCBmZWVsIGZyZWUg
dG8gYWRkIG15IEFjayB0byB0aGUgdHdvIHBhdGNoZXMuCgpBY2tlZC1ieTogVGhhZGV1IExpbWEg
ZGUgU291emEgQ2FzY2FyZG8gPGNhc2NhcmRvQGNhbm9uaWNhbC5jb20+CgpUaGFua3MgZm9yIHlv
dXIgcGF0aWVuY2UuClRoYWRldSBDYXNjYXJkby4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4
ZWMK
