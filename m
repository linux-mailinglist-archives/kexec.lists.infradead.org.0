Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8E01518F4
	for <lists+kexec@lfdr.de>; Tue,  4 Feb 2020 11:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjpPskG5TtJTS4dpfh+XKKEcVj9OF3neCUdiGvHQK0Y=; b=C3o4x+Pe67S3V3
	Ym0R3D+lGl9pDSsuOKt7iMUfU597JwRYLG5iaOUyH8EZToC/H1YLQtqTrOgz1t071eqFn7nwu/8Ju
	QGg+L4fPDMBJEpIhQbGoJ+Dxu/0EGsolp18HFhfipHgQthigZPPFui8b2SBCCzrY0cuLBI3RYVFoH
	urTmq6duPzYtePneEaNN5hFa3bQqwM9sDrvOLLIQIjSokdumv//6yJe0lL4W5NuhJaSMoPhB1Oavm
	XLe5kvFxX0jqiiI4pCnvFOwIkgEVTPBbV0OH2dLgpDRMk+N6eNmTIQmyfbwE9SucaFx45RXre1iaY
	8XHHNu35ZX0sjaRtBMwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvcs-00045S-KU; Tue, 04 Feb 2020 10:40:14 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvco-0003nX-TA
 for kexec@lists.infradead.org; Tue, 04 Feb 2020 10:40:13 +0000
Received: from 189-68-179-241.dsl.telesp.net.br ([189.68.179.241]
 helo=calabresa) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <cascardo@canonical.com>)
 id 1iyvcf-0002fx-D4; Tue, 04 Feb 2020 10:40:01 +0000
Date: Tue, 4 Feb 2020 07:39:54 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: piliu <piliu@redhat.com>
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
Message-ID: <20200204103954.GH40679@calabresa>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
 <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_024011_105273_FE6B7788 
X-CRM114-Status: GOOD (  34.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 HAGIO =?utf-8?B?S0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDI6MjQ6MTdQTSArMDgwMCwgcGlsaXUgd3JvdGU6Cj4g
SGksCj4gCj4gU29ycnkgdG8gcmVwbHkgbGF0ZSBkdWUgdG8gYSBsb25nIGZlc3RpdmFsLgo+IAo+
IEkgaGF2ZSB0ZXN0ZWQgdGhpcyBwYXRjaCBhZ2FpbnN0IHY0LjE1IGFuZCBsYXRlc3Qga2VybmVs
IHdpdGggc21hbGwKPiBtb2RpZmljYXRpb24gdG8gbWVldCB0aGUgc2l0dWF0aW9uIHdlIGRpc2N1
c3NlZCBoZXJlLiBCb3RoIHdvcmsgZmluZS4KPiAKPiBUaGUgYmVsb3cgaXMgdGhlIG1vZGlmaWNh
dGlvbiBvZiB0d28ga2VybmVsCj4gCj4gdGVzdDEuIGxhdGVzdCBrZXJuZWwgd2l0aCB0d28gZXh0
cmEgbW9kaWZpY2F0aW9uIHRvIGV4cG9zZSB0aGUgcHJvYmxlbQo+IC0xLjEgcmV2ZXJ0cyBjb21t
aXQgMWY1MDM0NDNlN2RmOGRjODM2NjYwOGI0ZDgxMGNlMmQ2NjY5ODI3Ywo+IChtbS9zcGFyc2Uu
YzogcmVzZXQgc2VjdGlvbidzIG1lbV9tYXAgd2hlbiBmdWxseSBkZWFjdGl2YXRlZCksIHRoaXMK
PiBjb21taXQgd29yayBhcm91bmQgdGhpcyBidWcKPiAtMS4yLiByZXZlcnRzIGNvbW1pdCBhMGIx
MjgwMzY4ZDFlOTFhYjcyZjg0OWVmMDk1YjRmMDdhMzliYmYxICgia2R1bXA6Cj4gd3JpdGUgY29y
cmVjdCBhZGRyZXNzIG9mIG1lbV9zZWN0aW9uIGludG8gdm1jb3JlaW5mbyIpLiBUaGlzIHdpbGwg
Y3JlYXRlCj4gYSBidWdneSBzaXR1YXRpb24gYXMgd2UgZGlzY3Vzc2VkIGhlcmUuCj4gLTEuMy4g
Zml4IGJ1aWxkaW5nIGJ1ZyBkdWUgdG8gcmV2ZXJ0Cj4gYTBiMTI4MDM2OGQxZTkxYWI3MmY4NDll
ZjA5NWI0ZjA3YTM5YmJmMQo+IAo+IHRlc3QyLiB2NC4xNSwgd2hpY2ggaW5jbHVkZSBib3RoIGNv
bW1pdCA4M2UzYzQ4NzI5ZDkgYW5kIGEwYjEyODAzNjhkMS4KPiAtMi4xLiByZXZlcnQgY29tbWl0
IGEwYjEyODAzNjhkMWU5MWFiNzJmODQ5ZWYwOTViNGYwN2EzOWJiZjEgKCJrZHVtcDoKPiB3cml0
ZSBjb3JyZWN0IGFkZHJlc3Mgb2YgbWVtX3NlY3Rpb24gaW50byB2bWNvcmVpbmZvIikKPiAKPiBT
byBJIGNhbiBub3Qgc2VlIGFueSBwcm9ibGVtIHdpdGggbXkgcGF0Y2guCj4gTWF5YmUgSSBtaXN1
bmRlcnN0YW5kIHRoZSBkaXNjdXNzaW9uLCBidXQgSSBjYW4gbm90IHNlZSBteSBvcmlnaW5hbAo+
IHBhdGNoIHdpbGwgYnJlYWsgdGhlIGtlcm5lbCB3aGljaCBoYXZlIDgzZTNjNDg3MjlkOSBidXQg
bm90IGEwYjEyODAzNjhkMS4KPiAKPiBUaGFua3MsCj4gUGluZ2Zhbgo+IAoKWW91IGFsc28gbmVl
ZCB0byB0ZXN0IHRoZSBjYXNlIHdoZXJlIDgzZTNjNDg3MjlkOSBpcyBub3QgcHJlc2VudCBhdCBh
bGwuIENhbgp5b3UgdGVzdCBvbiBhIDQuNCBrZXJuZWwsIGZvciBleGFtcGxlPyBBcyBmYXIgYXMg
SSB1bmRlcnN0YW5kLCBhIHZhbmlsbGEgNC40Cmtlcm5lbCB3b3VsZCBub3QgYmUgZHVtcGFibGUg
d2l0aCB5b3VyIHBhdGNoLgoKVGhhbmtzLgpDYXNjYXJkby4KCj4gT24gMDEvMjkvMjAyMCAwMzoz
MyBBTSwgVGhhZGV1IExpbWEgZGUgU291emEgQ2FzY2FyZG8gd3JvdGU6Cj4gPiBPbiBUdWUsIEph
biAyOCwgMjAyMCBhdCAwNTowMzoxMlBNICswMDAwLCBIQUdJTyBLQVpVSElUTyjokKnlsL4g5LiA
5LuBKSB3cm90ZToKPiA+PiBIaSBDYXNjYXJkbywKPiA+Pgo+ID4+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+ID4+PiBPbiBNb24sIEphbiAyNywgMjAyMCBhdCAwMjowNDo1NFBNIC0wMzAw
LCBUaGFkZXUgTGltYSBkZSBTb3V6YSBDYXNjYXJkbyB3cm90ZToKPiA+Pj4+IFNvcnJ5IGZvciB0
YWtpbmcgdG9vIGxvbmcgdG8gcmVzcG9uZCwgYXMgSSB3YXMgb24gdmFjYXRpb24uCj4gPj4+Pgo+
ID4+Pj4gVGhlIGtlcm5lbHMgdGhhdCBoYWQgY29tbWl0IDgzZTNjNDg3MjlkOSwgYnV0IG5vdCBj
b21taXQgYTBiMTI4MDM2OGQxLCBhcmUKPiA+Pj4+IG5vdCBzdXBwb3J0ZWQgYW55bW9yZS4gSW4g
YSB3YXkgdGhhdCBpdCdzIGV2ZW4gaGFyZCBmb3IgbWUgdG8gdGVzdCB0aGVtLgo+ID4+Pj4KPiA+
Pj4+IEhvd2V2ZXIsIEkgbWFuYWdlZCB0byB0ZXN0IGl0LCBhbmQgdGhvc2UgdHdvIGxpbmVzIGFy
ZSBkZWZpbml0aXZlbHkgbmVlZGVkCj4gPj4+PiB0byBkdW1wIGEgVk0gcnVubmluZyBzdWNoIGEg
a2VybmVsLiBJcyByZW1vdmluZyB0aGVtIHJlYWxseSBuZWVkZWQgdG8gZml4Cj4gPj4+PiB0aGlz
IGlzc3VlPwo+ID4+Pj4KPiA+Pj4+IE90aGVyd2lzZSwgSSB3b3VsZCByYXRoZXIga2VlcCB0aGVt
Lgo+ID4+Pj4KPiA+Pj4+IFRoYW5rcy4KPiA+Pj4+IENhc2NhcmRvLgo+ID4+Pgo+ID4+PiBCeSB0
aGUgd2F5LCBJIHdhcyB0b28gZmFzdCBpbiBzZW5kaW5nIHRoaXMuIFdlIHJlYWxseSBuZWVkIHRv
IGtlZXAgdGhvc2UgbGluZXMKPiA+Pj4gYXMgbWFrZWR1bXBmaWxlIHdpbGwgZmFpbCB0byBkdW1w
IGEgNC40IGtlcm5lbCB3aXRoIHRoaXMgcGF0Y2ggYXMgaXMuCj4gPj4KPiA+PiBJcyB0aGF0IFVi
dW50dSA0LjQga2VybmVsIHdoaWNoIGhhcyA4M2UzYzQ4NzI5ZDkgYW5kIG5vdCBhMGIxMjgwMzY4
ZDE/Cj4gPj4gQ291bGQgeW91IGVsYWJvcmF0ZSBvbiBob3cgaXQgZmFpbHM/Cj4gPiAKPiA+IE5v
LCBpdCBkb2Vzbid0IGhhdmUgZWl0aGVyLCBzbyBteSBndWVzcyBpcyBpdCB3b3VsZCBmYWlsIG9u
IHVwc3RyZWFtIDQuNCBhcwo+ID4gd2VsbCwgc28gYW55dGhpbmcgdGhhdCBkb2Vzbid0IGhhdmUg
ODNlM2M0ODcyOWQ5Lgo+ID4gCj4gPiBUaGF0J3Mgd2hhdCBJIGdldCBvbiB0aGF0IDQuNCBrZXJu
ZWwgKDQuNC4wLTE3MS1nZW5lcmljKToKPiA+IAo+ID4gIyAuL21ha2VkdW1wZmlsZSAvcHJvYy92
bWNvcmUgLi4vZHVtcAo+ID4gZ2V0X21lbV9zZWN0aW9uOiBDb3VsZCBub3QgdmFsaWRhdGUgbWVt
X3NlY3Rpb24uCj4gPiBnZXRfbW1fc3BhcnNlbWVtOiBDYW4ndCBnZXQgdGhlIGFkZHJlc3Mgb2Yg
bWVtX3NlY3Rpb24uCj4gPiAKPiA+IG1ha2VkdW1wZmlsZSBGYWlsZWQuCj4gPiAjCj4gPiAKPiA+
IFNvLCBub3csIEkgaGF2ZSBhIGJldHRlciBncmFzcCBvZiB0aGUgd2hvbGUgbG9naWMsIGFuZCB1
bmRlcnN0YW5kIHdoeSBpdCBmYWlscwo+ID4gd2l0aCB0aGlzIHBhdGNoLgo+ID4gCj4gPiBTbywg
d2UgbmVlZCB0byBlaXRoZXIgaW50ZXJwcmV0IHRoZSBtZW1fc2VjdGlvbiBhcyBhIHBvaW50ZXIg
dG8gdGhlIGFycmF5IG9mIGEKPiA+IHBvaW50ZXIgdG8gdGhlIHBvaW50ZXIgdG8gdGhlIGFycmF5
LiBUaGUgb25seSBjYXNlIHRoZSBzZWNvbmQgb3B0aW9uIGlzIHZhbGlkCj4gPiBpcyB3aGVuIHNw
YXJzZV9leHRyZW1lIGlzIG9uLCBzbyB3ZSBkb24ndCBldmVuIG5lZWQgdG8gY2hlY2sgdGhlIHNl
Y29uZCBjYXNlCj4gPiB3aGVuIGl0J3Mgb2ZmLgo+ID4gCj4gPiBUaGVuLCB3ZSBjaGVjayB0aGF0
IGludGVycHJldGluZyBpdCBlaXRoZXIgd2F5IGlzIHZhbGlkLiBJZiBpdCdzIHZhbGlkIGluIGJv
dGgKPiA+IGludGVycHJldGF0aW9ucywgd2UgY2FuJ3QgZGVjaWRlIHdoaWNoIHRvIHVzZSwgYW5k
IHdpbGwgZmFpbC4gU28gZmFyLCB3ZQo+ID4gaGF2ZW4ndCBzZWVuIGFueSBjYXNlIGluIHRoZSBm
aWVsZCB3aGVyZSB0aGF0IHdvdWxkIGFjY2lkZW50YWxseSBoYXBwZW4uIEJ1dCBpbgo+ID4gY2Fz
ZSBpdCBkb2VzLCB3ZSBzaG91bGQgcmF0aGVyIGZhaWwgdG8gZHVtcCBhbmQgZmFsbGJhY2sgdG8g
Y29weWluZywgdGhhbgo+ID4gY3JlYXRpbmcgYSBib2d1cyBjb21wcmVzc2VkIGR1bXAuCj4gPiAK
PiA+IFdoZW4gdGhpcyBwYXRjaCBpcyBhcHBsaWVkLCBhIGtlcm5lbCB3aGljaCBkb2VzIG5vdCBo
YXZlIDgzZTNjNDg3MjlkOSwgYW5kCj4gPiB0aHVzLCBoYXMgbWVtX3NlY3Rpb24gYXMgYSBkaXJl
Y3QgcG9pbnRlciB0byB0aGUgYXJyYXksIGl0IHNvIGhhcHBlbnMgdGhhdCB3ZQo+ID4gZG9uJ3Qg
ZGV0ZWN0IHRoZSBwb2ludGVyIHRvIHBvaW50ZXIgdG8gdGhlIGFycmF5IGNhc2UgYXMgaW52YWxp
ZCwgdGh1cyBmYWlsaW5nCj4gPiB0byBkdW1wLgo+ID4gCj4gPiBUaGUgd2F5IHdlIHZhbGlkYXRl
IGlzIHRoYXQgdGhlIG1lbV9tYXBzIHNob3VsZCBlaXRoZXIgaGF2ZSB0aGUgUFJFU0VOVCBiaXQg
b3IKPiA+IGJlIE5VTEwuIE5vdywgdGhhdCBhc3N1bXB0aW9uIG1heSBiZSBpbnZhbGlkLCBhbmQg
d2Ugd291bGQgbmVlZCB0byBkbyB0aGUKPiA+IHZhbGlkYXRpb24gc29tZSBvdGhlciB3YXkuIEkg
Y2FuIHRlc3QgdGhlIGNhc2VzIHdoZXJlIHRoYXQgYXNzdW1wdGlvbiBpcwo+ID4gaW52YWxpZCBp
biBhIDQuNCBrZXJuZWwgYW5kIHNlZSBob3cgdG8gZml4IHRoaXMgaW4gYSBzYXRpc2ZhY3Rvcnkg
d2F5Lgo+ID4gCj4gPiBHb2luZyB0aHJvdWdoIHRoZSBjb2RlIG9uY2UgYWdhaW4sIEkgZG9uJ3Qg
c2VlIGhvdyB0aGUgc2Vjb25kIHNlY3Rpb24gb2YgdGhlCj4gPiBwYXRjaCB3b3VsZCBiZSBjb3Jy
ZWN0IGJ5IGl0c2VsZiB0b28uIEkgd2lsbCB0aGluayBpdCB0aHJvdWdoIGEgbGl0dGxlIG1vcmUg
YW5kCj4gPiBzZWUgaWYgSSBjYW4gY29tZSB1cCB3aXRoIGEgc29sdXRpb24uCj4gPiAKPiA+IFJl
Z2FyZHMuCj4gPiBDYXNjYXJkby4KPiA+IAo+ID4+Cj4gPj4gSSdtIHRoaW5raW5nIHRoYXQgUGlu
Z2ZhbidzIHRob3VnaHQgbWF5IGhlbHA6Cj4gPj4+PiBJIHRoaW5rIGl0IGNvdWxkIGJlIGlmL2Vs
c2UsIG5vIG5lZWQgdG8gY2FsbCB0d2ljZS4KPiA+Pgo+ID4+IFRoYW5rcywKPiA+PiBLYXp1Cj4g
Pj4KPiA+Pj4KPiA+Pj4gQ2FzY2FyZG8uCj4gPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
a2V4ZWMK
