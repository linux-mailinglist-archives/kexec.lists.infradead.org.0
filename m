Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7E114C10A
	for <lists+kexec@lfdr.de>; Tue, 28 Jan 2020 20:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vHv6g9UkzK5p0iJ1VWwQpU3evBh2SikCFf+ZzlS+3E=; b=nOB10ZEn8i7BHj
	4a0BEVUFbWQnFONKPF7JGZ9sNzdke7Jq+KrAAA8r2rVqQH2JRjmAHp/zBjd+5TxxKFH8KXWFeju0R
	WHGlyPegB/1l7PrSEec7mCC56417V4oacBQ19Mv6JUmeSqFoKvSdewB0zx6+eX+J6iqzZPB/Lu54s
	eLLAswnu9hCfL1I8m4k8hxyGAIbJyn2fCkrm11FHTwn5VMccldE2qKdDZQv5yxs1Us5aW8MLj88gA
	znEneRNJtJDizgUdHmsdoV/Tn4YIVx1BXX9vXRMtn2tXpgcxK7glgfYMXIIKR79sTGtj0mUg2m9w9
	Xqr0+jyRTOhO00xCE+2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWby-0002XZ-FO; Tue, 28 Jan 2020 19:33:22 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWbv-0002Wq-2k
 for kexec@lists.infradead.org; Tue, 28 Jan 2020 19:33:20 +0000
Received: from 179-242-183-86.3g.claro.net.br ([179.242.183.86] helo=calabresa)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <cascardo@canonical.com>)
 id 1iwWbm-00014i-7Q; Tue, 28 Jan 2020 19:33:11 +0000
Date: Tue, 28 Jan 2020 16:33:02 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Message-ID: <20200128193302.GC4080@calabresa>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_113319_258334_21C19389 
X-CRM114-Status: GOOD (  23.42  )
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

T24gVHVlLCBKYW4gMjgsIDIwMjAgYXQgMDU6MDM6MTJQTSArMDAwMCwgSEFHSU8gS0FaVUhJVE8o
6JCp5bC+IOS4gOS7gSkgd3JvdGU6Cj4gSGkgQ2FzY2FyZG8sCj4gCj4gPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQo+ID4gT24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMDI6MDQ6NTRQTSAtMDMw
MCwgVGhhZGV1IExpbWEgZGUgU291emEgQ2FzY2FyZG8gd3JvdGU6Cj4gPiA+IFNvcnJ5IGZvciB0
YWtpbmcgdG9vIGxvbmcgdG8gcmVzcG9uZCwgYXMgSSB3YXMgb24gdmFjYXRpb24uCj4gPiA+Cj4g
PiA+IFRoZSBrZXJuZWxzIHRoYXQgaGFkIGNvbW1pdCA4M2UzYzQ4NzI5ZDksIGJ1dCBub3QgY29t
bWl0IGEwYjEyODAzNjhkMSwgYXJlCj4gPiA+IG5vdCBzdXBwb3J0ZWQgYW55bW9yZS4gSW4gYSB3
YXkgdGhhdCBpdCdzIGV2ZW4gaGFyZCBmb3IgbWUgdG8gdGVzdCB0aGVtLgo+ID4gPgo+ID4gPiBI
b3dldmVyLCBJIG1hbmFnZWQgdG8gdGVzdCBpdCwgYW5kIHRob3NlIHR3byBsaW5lcyBhcmUgZGVm
aW5pdGl2ZWx5IG5lZWRlZAo+ID4gPiB0byBkdW1wIGEgVk0gcnVubmluZyBzdWNoIGEga2VybmVs
LiBJcyByZW1vdmluZyB0aGVtIHJlYWxseSBuZWVkZWQgdG8gZml4Cj4gPiA+IHRoaXMgaXNzdWU/
Cj4gPiA+Cj4gPiA+IE90aGVyd2lzZSwgSSB3b3VsZCByYXRoZXIga2VlcCB0aGVtLgo+ID4gPgo+
ID4gPiBUaGFua3MuCj4gPiA+IENhc2NhcmRvLgo+ID4gCj4gPiBCeSB0aGUgd2F5LCBJIHdhcyB0
b28gZmFzdCBpbiBzZW5kaW5nIHRoaXMuIFdlIHJlYWxseSBuZWVkIHRvIGtlZXAgdGhvc2UgbGlu
ZXMKPiA+IGFzIG1ha2VkdW1wZmlsZSB3aWxsIGZhaWwgdG8gZHVtcCBhIDQuNCBrZXJuZWwgd2l0
aCB0aGlzIHBhdGNoIGFzIGlzLgo+IAo+IElzIHRoYXQgVWJ1bnR1IDQuNCBrZXJuZWwgd2hpY2gg
aGFzIDgzZTNjNDg3MjlkOSBhbmQgbm90IGEwYjEyODAzNjhkMT8KPiBDb3VsZCB5b3UgZWxhYm9y
YXRlIG9uIGhvdyBpdCBmYWlscz8KCk5vLCBpdCBkb2Vzbid0IGhhdmUgZWl0aGVyLCBzbyBteSBn
dWVzcyBpcyBpdCB3b3VsZCBmYWlsIG9uIHVwc3RyZWFtIDQuNCBhcwp3ZWxsLCBzbyBhbnl0aGlu
ZyB0aGF0IGRvZXNuJ3QgaGF2ZSA4M2UzYzQ4NzI5ZDkuCgpUaGF0J3Mgd2hhdCBJIGdldCBvbiB0
aGF0IDQuNCBrZXJuZWwgKDQuNC4wLTE3MS1nZW5lcmljKToKCiMgLi9tYWtlZHVtcGZpbGUgL3By
b2Mvdm1jb3JlIC4uL2R1bXAKZ2V0X21lbV9zZWN0aW9uOiBDb3VsZCBub3QgdmFsaWRhdGUgbWVt
X3NlY3Rpb24uCmdldF9tbV9zcGFyc2VtZW06IENhbid0IGdldCB0aGUgYWRkcmVzcyBvZiBtZW1f
c2VjdGlvbi4KCm1ha2VkdW1wZmlsZSBGYWlsZWQuCiMKClNvLCBub3csIEkgaGF2ZSBhIGJldHRl
ciBncmFzcCBvZiB0aGUgd2hvbGUgbG9naWMsIGFuZCB1bmRlcnN0YW5kIHdoeSBpdCBmYWlscwp3
aXRoIHRoaXMgcGF0Y2guCgpTbywgd2UgbmVlZCB0byBlaXRoZXIgaW50ZXJwcmV0IHRoZSBtZW1f
c2VjdGlvbiBhcyBhIHBvaW50ZXIgdG8gdGhlIGFycmF5IG9mIGEKcG9pbnRlciB0byB0aGUgcG9p
bnRlciB0byB0aGUgYXJyYXkuIFRoZSBvbmx5IGNhc2UgdGhlIHNlY29uZCBvcHRpb24gaXMgdmFs
aWQKaXMgd2hlbiBzcGFyc2VfZXh0cmVtZSBpcyBvbiwgc28gd2UgZG9uJ3QgZXZlbiBuZWVkIHRv
IGNoZWNrIHRoZSBzZWNvbmQgY2FzZQp3aGVuIGl0J3Mgb2ZmLgoKVGhlbiwgd2UgY2hlY2sgdGhh
dCBpbnRlcnByZXRpbmcgaXQgZWl0aGVyIHdheSBpcyB2YWxpZC4gSWYgaXQncyB2YWxpZCBpbiBi
b3RoCmludGVycHJldGF0aW9ucywgd2UgY2FuJ3QgZGVjaWRlIHdoaWNoIHRvIHVzZSwgYW5kIHdp
bGwgZmFpbC4gU28gZmFyLCB3ZQpoYXZlbid0IHNlZW4gYW55IGNhc2UgaW4gdGhlIGZpZWxkIHdo
ZXJlIHRoYXQgd291bGQgYWNjaWRlbnRhbGx5IGhhcHBlbi4gQnV0IGluCmNhc2UgaXQgZG9lcywg
d2Ugc2hvdWxkIHJhdGhlciBmYWlsIHRvIGR1bXAgYW5kIGZhbGxiYWNrIHRvIGNvcHlpbmcsIHRo
YW4KY3JlYXRpbmcgYSBib2d1cyBjb21wcmVzc2VkIGR1bXAuCgpXaGVuIHRoaXMgcGF0Y2ggaXMg
YXBwbGllZCwgYSBrZXJuZWwgd2hpY2ggZG9lcyBub3QgaGF2ZSA4M2UzYzQ4NzI5ZDksIGFuZAp0
aHVzLCBoYXMgbWVtX3NlY3Rpb24gYXMgYSBkaXJlY3QgcG9pbnRlciB0byB0aGUgYXJyYXksIGl0
IHNvIGhhcHBlbnMgdGhhdCB3ZQpkb24ndCBkZXRlY3QgdGhlIHBvaW50ZXIgdG8gcG9pbnRlciB0
byB0aGUgYXJyYXkgY2FzZSBhcyBpbnZhbGlkLCB0aHVzIGZhaWxpbmcKdG8gZHVtcC4KClRoZSB3
YXkgd2UgdmFsaWRhdGUgaXMgdGhhdCB0aGUgbWVtX21hcHMgc2hvdWxkIGVpdGhlciBoYXZlIHRo
ZSBQUkVTRU5UIGJpdCBvcgpiZSBOVUxMLiBOb3csIHRoYXQgYXNzdW1wdGlvbiBtYXkgYmUgaW52
YWxpZCwgYW5kIHdlIHdvdWxkIG5lZWQgdG8gZG8gdGhlCnZhbGlkYXRpb24gc29tZSBvdGhlciB3
YXkuIEkgY2FuIHRlc3QgdGhlIGNhc2VzIHdoZXJlIHRoYXQgYXNzdW1wdGlvbiBpcwppbnZhbGlk
IGluIGEgNC40IGtlcm5lbCBhbmQgc2VlIGhvdyB0byBmaXggdGhpcyBpbiBhIHNhdGlzZmFjdG9y
eSB3YXkuCgpHb2luZyB0aHJvdWdoIHRoZSBjb2RlIG9uY2UgYWdhaW4sIEkgZG9uJ3Qgc2VlIGhv
dyB0aGUgc2Vjb25kIHNlY3Rpb24gb2YgdGhlCnBhdGNoIHdvdWxkIGJlIGNvcnJlY3QgYnkgaXRz
ZWxmIHRvby4gSSB3aWxsIHRoaW5rIGl0IHRocm91Z2ggYSBsaXR0bGUgbW9yZSBhbmQKc2VlIGlm
IEkgY2FuIGNvbWUgdXAgd2l0aCBhIHNvbHV0aW9uLgoKUmVnYXJkcy4KQ2FzY2FyZG8uCgo+IAo+
IEknbSB0aGlua2luZyB0aGF0IFBpbmdmYW4ncyB0aG91Z2h0IG1heSBoZWxwOgo+ID4+IEkgdGhp
bmsgaXQgY291bGQgYmUgaWYvZWxzZSwgbm8gbmVlZCB0byBjYWxsIHR3aWNlLgo+IAo+IFRoYW5r
cywKPiBLYXp1Cj4gCj4gPiAKPiA+IENhc2NhcmRvLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9r
ZXhlYwo=
