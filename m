Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB9288F17
	for <lists+kexec@lfdr.de>; Sun, 11 Aug 2019 04:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Kt2/YkGcMTYdIwY+jAml2iv+aj1ZgALqDnYYW3hOOg=; b=kszN9kjg8PwIQq
	wl2agqyMIkQ7o/90AXnyetSlvPSRWRPgWFqJW1LdkghoZYMpvV7fV1Jrh2ayv27Z83R4zrTA9tfj1
	16vcZI1TnPBcEYjzmlgf/fYubaQYs5XoVRhjvJn59YkHXQmT976Ourr1KiUbaViolvT+6lezTqGW4
	M6jc3x2ftuw7IUcaP28MwsERToqgmT6mwpoq4vCmSVNt7Da1TK8OMPNJbhpXQYY6/iMhr94kYpJHQ
	01J092QwTdDHkOsxLTehqarES0CND6VD1TGN1zV1ux6OpCKlWcxjotOH206db87b+d0HQto7tFbkc
	kxfV2rnkqZFYkkGCYJIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwdcn-00075v-WD; Sun, 11 Aug 2019 02:30:26 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwdcg-00075Y-Rt
 for kexec@lists.infradead.org; Sun, 11 Aug 2019 02:30:20 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8EFBF3DE0F;
 Sun, 11 Aug 2019 02:30:16 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-36.pek2.redhat.com [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B5326100195F;
 Sun, 11 Aug 2019 02:30:00 +0000 (UTC)
Subject: Re: crash: `kmem -s` reported "kmem: dma-kmalloc-512: slab:
 ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e" on a dumped vmcore
To: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>,
 Dave Young <dyoung@redhat.com>
References: <e640b50a-a962-8e56-33a2-2ba2eb76e813@redhat.com>
 <20190802010538.GA2202@dhcp-128-65.nay.redhat.com>
 <5d91e856-01de-bc80-e4bc-497d57652072@amd.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <2d3c7ab8-0b83-4ef5-bb89-0c7c476265b3@redhat.com>
Date: Sun, 11 Aug 2019 10:29:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <5d91e856-01de-bc80-e4bc-497d57652072@amd.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Sun, 11 Aug 2019 02:30:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_193018_947877_957615DF 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: "bhe@redhat.com" <bhe@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dave Anderson <anderson@redhat.com>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwOOaciDA55pelIDA2OjM3LCBMZW5kYWNreSwgVGhvbWFzIOWGmemBkzoKPiBP
biA4LzEvMTkgODowNSBQTSwgRGF2ZSBZb3VuZyB3cm90ZToKPj4gQWRkIGtleGVjIGNjIGxpc3Qu
Cj4+IE9uIDA4LzAxLzE5IGF0IDExOjAycG0sIGxpamlhbmcgd3JvdGU6Cj4+PiBIaSwgVG9tCj4+
Pgo+Pj4gUmVjZW50bHksIGkgcmFuIGludG8gYSBwcm9ibGVtIGFib3V0IFNNRSBhbmQgdXNlZCBj
cmFzaCB0b29sIHRvIGNoZWNrIHRoZSB2bWNvcmUgYXMgZm9sbG93Ogo+Pj4KPj4+IGNyYXNoPiBr
bWVtIC1zIHwgZ3JlcCAtaSBpbnZhbGlkCj4+PiBrbWVtOiBkbWEta21hbGxvYy01MTI6IHNsYWI6
IGZmZmZlMTkyYzAwMDEwMDAgaW52YWxpZCBmcmVlcG9pbnRlcjogZTVmZmVmNGU5YTA0MGI3ZQo+
Pj4ga21lbTogZG1hLWttYWxsb2MtNTEyOiBzbGFiOiBmZmZmZTE5MmMwMDAxMDAwIGludmFsaWQg
ZnJlZXBvaW50ZXI6IGU1ZmZlZjRlOWEwNDBiN2UKPj4+Cj4+PiBBbmQgdGhlIGNyYXNoIHRvb2wg
cmVwb3J0ZWQgdGhlIGFib3ZlIGVycm9yLCBwcm9iYWJseSwgdGhlIG1haW4gcmVhc29uIGlzIHRo
YXQga2VybmVsIGRvZXMgbm90Cj4+PiBjb3JyZWN0bHkgaGFuZGxlIHRoZSBmaXJzdCA2NDBrIHJl
Z2lvbiB3aGVuIFNNRSBpcyBlbmFibGVkLgo+Pj4KPj4+IFdoZW4gU01FIGlzIGVuYWJsZWQsIHRo
ZSBrZXJuZWwgYW5kIGluaXRyYW1mcyBpbWFnZXMgYXJlIGxvYWRlZCBpbnRvIHRoZSBkZWNyeXB0
ZWQgbWVtb3J5LCBhbmQKPj4+IHRoZSBiYWNrdXAgYXJlYShmaXJzdCA2NDBrKSBpcyBhbHNvIG1h
cHBlZCBhcyBkZWNyeXB0ZWQsIGJ1dCB0aGUgZmlyc3QgNjQwayBkYXRhIGlzIGNvcGllZCB0bwo+
Pj4gdGhlIGJhY2t1cCBhcmVhIGluIHB1cmdhdG9yeSgpLiBQbGVhc2UgcmVmZXIgdG8gdGhpcyBm
aWxlOiBhcmNoL3g4Ni9wdXJnYXRvcnkvcHVyZ2F0b3J5LmMKPj4+IC4uLi4uLgo+Pj4gc3RhdGlj
IGludCBjb3B5X2JhY2t1cF9yZWdpb24odm9pZCkKPj4+IHsKPj4+ICAgICAgICAgIGlmIChwdXJn
YXRvcnlfYmFja3VwX2Rlc3QpIHsKPj4+ICAgICAgICAgICAgICAgICAgbWVtY3B5KCh2b2lkICop
cHVyZ2F0b3J5X2JhY2t1cF9kZXN0LAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgKHZvaWQg
KilwdXJnYXRvcnlfYmFja3VwX3NyYywgcHVyZ2F0b3J5X2JhY2t1cF9zeik7Cj4+PiAgICAgICAg
ICB9Cj4+PiAgICAgICAgICByZXR1cm4gMDsKPj4+IH0KPj4+IC4uLi4uLgo+Pj4KPj4+IGFyY2gv
eDg2L2tlcm5lbC9tYWNoaW5lX2tleGVjXzY0LmMKPj4+IC4uLi4uLgo+Pj4gbWFjaGluZV9rZXhl
Y19wcmVwYXJlKCktPgo+Pj4gYXJjaF91cGRhdGVfcHVyZ2F0b3J5KCktPgo+Pj4gLi4uLi4KPj4+
Cj4+PiBBY3R1YWxseSwgdGhlIGZpcnMgNjQwayBhcmVhIGlzIGVuY3J5cHRlZCBpbiB0aGUgZmly
c3Qga2VybmVsIHdoZW4gU01FIGlzIGVuYWJsZWQsIGhlcmUga2VybmVsCj4+PiBjb3BpZXMgdGhl
IGZpcnN0IDY0MGsgZGF0YSB0byB0aGUgYmFja3VwIGFyZWEgaW4gcHVyZ2F0b3J5KCksIGJlY2F1
c2UgdGhlIGJhY2t1cCBhcmVhIGlzIG1hcHBlZAo+Pj4gYXMgZGVjcnlwdGVkLCB0aGlzIGNvcHlp
bmcgb3BlcmF0aW9uIG1ha2VzIHRoYXQgdGhlIGZpcnN0IDY0MGsgZGF0YSBpcyBkZWNyeXB0ZWQo
ZGVjb2RlZCkgYW5kCj4+PiBzYXZlZCB0byB0aGUgYmFja3VwIGFyZWEsIGJ1dCBwcm9iYWJseSBr
ZXJuZWwgY2FuIG5vdCBhd2FyZSBvZiBTTUUgaW4gcHVyZ2F0b3J5KCksIHdoaWNoIGNhdXNlcwo+
Pj4ga2VybmVsIG1pc3Rha2VubHkgcmVhZCBvdXQgdGhlIGZpcnN0IDY0MGsuCj4+Pgo+Pj4gSW4g
YWRkaXRpb24sIGkgaGFja2VkIGtlcm5lbCBjb2RlIGFzIGZvbGxvdzoKPj4+Cj4+PiBkaWZmIC0t
Z2l0IGEvZnMvcHJvYy92bWNvcmUuYyBiL2ZzL3Byb2Mvdm1jb3JlLmMKPj4+IGluZGV4IDdiY2M5
MmFkZDcyYy4uYTUxNjMxZDM2YTdhIDEwMDY0NAo+Pj4gLS0tIGEvZnMvcHJvYy92bWNvcmUuYwo+
Pj4gKysrIGIvZnMvcHJvYy92bWNvcmUuYwo+Pj4gQEAgLTM3Nyw2ICszNzgsMTYgQEAgc3RhdGlj
IHNzaXplX3QgX19yZWFkX3ZtY29yZShjaGFyICpidWZmZXIsIHNpemVfdCBidWZsZW4sIGxvZmZf
dCAqZnBvcywKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IG0tPm9mZnNldCArIG0tPnNpemUgLSAqZnBvcywKPj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGJ1Zmxlbik7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RhcnQgPSBtLT5wYWRkciArICpmcG9zIC0gbS0+b2Zmc2V0Owo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgaWYgKG0tPnBhZGRyID09IDB4NzNmNjAwMDApIHsvL3RoZSBiYWNrdXAgYXJl
YSdzIHN0YXJ0IGFkZHJlc3M6MHg3M2Y2MDAwMAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB0bXAgPSByZWFkX2Zyb21fb2xkbWVtKGJ1ZmZlciwgdHN6LCAmc3RhcnQsCj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1c2VyYnVmLCBm
YWxzZSk7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICB9IGVsc2UKPj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHRtcCA9IHJlYWRfZnJvbV9vbGRtZW0oYnVmZmVyLCB0c3os
ICZzdGFydCwKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHVzZXJidWYsIG1lbV9lbmNyeXB0X2FjdGl2ZSgpKTsKPj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICBpZiAodG1wIDwgMCkKPj4+Cj4+PiBIZXJlLCBpIHVzZWQgdGhlIGNyYXNoIHRvb2wg
dG8gY2hlY2sgdGhlIHZtY29yZSwgaSBjYW4gc2VlIHRoYXQgdGhlIGJhY2t1cCBhcmVhIGlzIGRl
Y3J5cHRlZCwKPj4+IGV4Y2VwdCBmb3IgdGhlIGRtYS1rbWFsbG9jLTUxMi4gU28gaSBzdXNwZWN0
IHRoYXQga2VybmVsIGRpZCBub3QgY29ycmVjdGx5IHJlYWQgb3V0IHRoZSBmaXJzdAo+Pj4gNjQw
ayBkYXRhIHRvIGJhY2t1cCBhcmVhLiBEbyB5b3UgaGFwcGVuIHRvIGtub3cgaG93IHRvIGRlYWwg
d2l0aCB0aGUgZmlyc3QgNjQwayBhcmVhIGluIHB1cmdhdG9yeSgpCj4+PiB3aGVuIFNNRSBpcyBl
bmFibGVkPyBBbnkgaWRlYT8KPiAKPiBJJ20gbm90IGFsbCB0aGF0IGZhbWlsaWFyIHdpdGgga2V4
ZWMgYW5kIHB1cmdhdG9yeSwgZXRjLiwgYnV0IEkgdGhpbmsKPiB0aGF0IHlvdSB3YW50IHRvIHNl
dHVwIHRoZSBwYWdlIHRhYmxlIHRoYXQgaXMgYWN0aXZlIHdoZW4gcHVyZ2F0b3J5IHJ1bnMKPiBz
byB0aGF0IHRoZSBzcmMgYW5kIGRlc3QgYm90aCBoYXZlIHRoZSBTTUUgZW5jcnlwdGlvbiBtYXNr
IHNldCBpbiB0aGVpcgo+IHJlc3BlY3RpdmUgcGFnZSB0YWJsZSBlbnRyaWVzLiBUaGlzIHdheSwg
d2hlbiB0aGUgY29weSBpcyBwZXJmb3JtZWQsCj4gZXZlcnl0aGluZyBpcyBjb3BpZWQgY29ycmVj
dGx5LiAKCkV4YWN0bHkuIFRoYXQncyBqdXN0IHdoYXQgaSB3YXMgdGhpbmtpbmcuCgo+IFJlbWVt
YmVyLCBlbmNyeXB0ZWQgZGF0YSBmcm9tIG9uZSBwYWdlCj4gY2Fubm90IGJlIGRpcmVjdGx5IGNv
cGllZCBhcyB1bmVuY3J5cHRlZCBkYXRhIGFuZCBkZWNyeXB0ZWQgcHJvcGVybHkgaW4KPiB0aGUg
bmV3IGxvY2F0aW9uIChlLmcuIGEgcGFnZSBvZiB6ZXJvZXMgZW5jcnlwdGVkIGF0IG9uZSBhZGRy
ZXNzIHdpbGwgbm90Cj4gYXBwZWFyIHRoZSBzYW1lIGFzIGEgcGFnZSBvZiB6ZXJvZXMgZW5jcnlw
dGVkIGF0IGEgZGlmZmVyZW50IGFkZHJlc3MpLgoKWWVzLCB0aGF0J3MgcmlnaHQuIFRoYW5rIHlv
dSwgVG9tLgoKSSdtIGNvbnNpZGVyaW5nIGhvdyB0byBzb2x2ZSBpdCwgYW5kIGkgZ3Vlc3MgdGhh
dCBwcm9iYWJseSBpdCBuZWVkcyB0byBwcm9wZXJseSBkZWFsIHdpdGgKdGhpcyBwcm9ibGVtIGlu
IHB1cmdhdG9yeSgpLgoKVGhhbmtzLgpMaWFuYm8KCj4gCj4gVGhhbmtzLAo+IFRvbQo+IAo+Pj4K
Pj4+IEJUVzogSScgY3VyaW91cyB0aGUgcmVhc29uIHdoeSB0aGUgYWRkcmVzcyBvZiBkbWEta21h
bGxvYy01MTJrIGFsd2F5cyBmYWxscyBpbnRvIHRoZSBmaXJzdCA2NDBrCj4+PiByZWdpb24sIGFu
ZCBpIGRpZCBub3Qgc2VlIHRoZSBzYW1lIGlzc3VlIG9uIGFub3RoZXIgbWFjaGluZS4KPj4+Cj4+
PiBNYWNoaW5lOgo+Pj4gU2VyaWFsIE51bWJlciAJZGllc2VsLXN5czkwNzktMDAwMQo+Pj4gTW9k
ZWwgICAgICAgICAgIEFNRCBEaWVzZWwgKEEwQykKPj4+IENQVSAgICAgICAgICAgICBBTUQgRVBZ
QyA3NjAxIDMyLUNvcmUgUHJvY2Vzc29yCj4+Pgo+Pj4KPj4+IEJhY2tncm91bmQ6Cj4+PiBPbiB4
ODZfNjQsIHRoZSBmaXJzdCA2NDBrIHJlZ2lvbiBpcyBzcGVjaWFsIGJlY2F1c2Ugb2Ygc29tZSBo
aXN0b3JpY2FsIHJlYXNvbnMuIEFuZCBrZHVtcCBrZXJuZWwgd2lsbAo+Pj4gcmV1c2UgdGhlIGZp
cnN0IDY0MGsgcmVnaW9uLCBzbyBrZXJuZWwgd2lsbCBiYWNrIHVwKGNvcHkpIHRoZSBmaXJzdCA2
NDBrIHJlZ2lvbiB0byBhIGJhY2t1cCBhcmVhIGluCj4+PiBwdXJnYXRvcnkoKSwgaW4gb3JkZXIg
bm90IHRvIHJld3JpdGUgdGhlIG9sZCByZWdpb24oNjQwaykgaW4ga2R1bXAga2VybmVsLCB3aGlj
aCBtYWtlcyBzdXJlIHRoYXQga2R1bXAKPj4+IGNhbiByZWFkIG91dCB0aGUgb2xkIG1lbW9yeSBm
cm9tIHZtY29yZS4KPj4+Cj4+Pgo+Pj4gVGhhbmtzLgo+Pj4gTGlhbmJvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4
ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2tleGVjCg==
