Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9378790DB2
	for <lists+kexec@lfdr.de>; Sat, 17 Aug 2019 09:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDtm0RsFaFafBv27qv/ujBUQREUomp1SANZgwAgURnk=; b=cDaL2MePg67sN7
	BBwPEvwMc9ITlcsnm9HkAaiv7cncIsBTXtDLX3YKXmbjL0+JBpDigo/IUV8BpsCxuENN0+YCiPaxF
	flKvOpyjlMINXjsYTym6S2WN1AWCW3JxWCYzMK/pKB3g3vUXRmM1exgTTjWou9blDOUl+0bFH4wSr
	s4d1e2ZPj2wD5UPgmK+5UrC10YSkuy3sQIJpcO9Y38f6kalxGDSEDKYyoaRDpUr1J1wqFkoH+dR41
	Qs71gfeqdCnJRZNV6Are9MteXTRcaZWLHrzWibalkUCE2Y8dSxzR3lXWsWn6rw1WEibiMfJTfF0KQ
	6KgdFkD0tv+CHEMHkYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyt3g-0002Dj-Vw; Sat, 17 Aug 2019 07:23:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyt3a-0002DN-4z
 for kexec@lists.infradead.org; Sat, 17 Aug 2019 07:23:24 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2098288306;
 Sat, 17 Aug 2019 07:23:21 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-36.pek2.redhat.com [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C11B3CCA;
 Sat, 17 Aug 2019 07:23:13 +0000 (UTC)
Subject: Re: crash: `kmem -s` reported "kmem: dma-kmalloc-512: slab:
 ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e" on a dumped vmcore
From: lijiang <lijiang@redhat.com>
To: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>,
 Dave Young <dyoung@redhat.com>
References: <e640b50a-a962-8e56-33a2-2ba2eb76e813@redhat.com>
 <20190802010538.GA2202@dhcp-128-65.nay.redhat.com>
 <5d91e856-01de-bc80-e4bc-497d57652072@amd.com>
 <2d3c7ab8-0b83-4ef5-bb89-0c7c476265b3@redhat.com>
Message-ID: <467709e5-3f9e-85bd-60a8-255af71f3d4f@redhat.com>
Date: Sat, 17 Aug 2019 15:23:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2d3c7ab8-0b83-4ef5-bb89-0c7c476265b3@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Sat, 17 Aug 2019 07:23:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_002322_233502_697FAEB7 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

5ZyoIDIwMTnlubQwOOaciDEx5pelIDEwOjI5LCBsaWppYW5nIOWGmemBkzoKPiDlnKggMjAxOeW5
tDA45pyIMDnml6UgMDY6MzcsIExlbmRhY2t5LCBUaG9tYXMg5YaZ6YGTOgo+PiBPbiA4LzEvMTkg
ODowNSBQTSwgRGF2ZSBZb3VuZyB3cm90ZToKPj4+IEFkZCBrZXhlYyBjYyBsaXN0Lgo+Pj4gT24g
MDgvMDEvMTkgYXQgMTE6MDJwbSwgbGlqaWFuZyB3cm90ZToKPj4+PiBIaSwgVG9tCj4+Pj4KPj4+
PiBSZWNlbnRseSwgaSByYW4gaW50byBhIHByb2JsZW0gYWJvdXQgU01FIGFuZCB1c2VkIGNyYXNo
IHRvb2wgdG8gY2hlY2sgdGhlIHZtY29yZSBhcyBmb2xsb3c6Cj4+Pj4KPj4+PiBjcmFzaD4ga21l
bSAtcyB8IGdyZXAgLWkgaW52YWxpZAo+Pj4+IGttZW06IGRtYS1rbWFsbG9jLTUxMjogc2xhYjog
ZmZmZmUxOTJjMDAwMTAwMCBpbnZhbGlkIGZyZWVwb2ludGVyOiBlNWZmZWY0ZTlhMDQwYjdlCj4+
Pj4ga21lbTogZG1hLWttYWxsb2MtNTEyOiBzbGFiOiBmZmZmZTE5MmMwMDAxMDAwIGludmFsaWQg
ZnJlZXBvaW50ZXI6IGU1ZmZlZjRlOWEwNDBiN2UKPj4+Pgo+Pj4+IEFuZCB0aGUgY3Jhc2ggdG9v
bCByZXBvcnRlZCB0aGUgYWJvdmUgZXJyb3IsIHByb2JhYmx5LCB0aGUgbWFpbiByZWFzb24gaXMg
dGhhdCBrZXJuZWwgZG9lcyBub3QKPj4+PiBjb3JyZWN0bHkgaGFuZGxlIHRoZSBmaXJzdCA2NDBr
IHJlZ2lvbiB3aGVuIFNNRSBpcyBlbmFibGVkLgo+Pj4+Cj4+Pj4gV2hlbiBTTUUgaXMgZW5hYmxl
ZCwgdGhlIGtlcm5lbCBhbmQgaW5pdHJhbWZzIGltYWdlcyBhcmUgbG9hZGVkIGludG8gdGhlIGRl
Y3J5cHRlZCBtZW1vcnksIGFuZAo+Pj4+IHRoZSBiYWNrdXAgYXJlYShmaXJzdCA2NDBrKSBpcyBh
bHNvIG1hcHBlZCBhcyBkZWNyeXB0ZWQsIGJ1dCB0aGUgZmlyc3QgNjQwayBkYXRhIGlzIGNvcGll
ZCB0bwo+Pj4+IHRoZSBiYWNrdXAgYXJlYSBpbiBwdXJnYXRvcnkoKS4gUGxlYXNlIHJlZmVyIHRv
IHRoaXMgZmlsZTogYXJjaC94ODYvcHVyZ2F0b3J5L3B1cmdhdG9yeS5jCj4+Pj4gLi4uLi4uCj4+
Pj4gc3RhdGljIGludCBjb3B5X2JhY2t1cF9yZWdpb24odm9pZCkKPj4+PiB7Cj4+Pj4gICAgICAg
ICAgaWYgKHB1cmdhdG9yeV9iYWNrdXBfZGVzdCkgewo+Pj4+ICAgICAgICAgICAgICAgICAgbWVt
Y3B5KCh2b2lkICopcHVyZ2F0b3J5X2JhY2t1cF9kZXN0LAo+Pj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICh2b2lkICopcHVyZ2F0b3J5X2JhY2t1cF9zcmMsIHB1cmdhdG9yeV9iYWNrdXBfc3op
Owo+Pj4+ICAgICAgICAgIH0KPj4+PiAgICAgICAgICByZXR1cm4gMDsKPj4+PiB9Cj4+Pj4gLi4u
Li4uCj4+Pj4KPj4+PiBhcmNoL3g4Ni9rZXJuZWwvbWFjaGluZV9rZXhlY182NC5jCj4+Pj4gLi4u
Li4uCj4+Pj4gbWFjaGluZV9rZXhlY19wcmVwYXJlKCktPgo+Pj4+IGFyY2hfdXBkYXRlX3B1cmdh
dG9yeSgpLT4KPj4+PiAuLi4uLgo+Pj4+Cj4+Pj4gQWN0dWFsbHksIHRoZSBmaXJzIDY0MGsgYXJl
YSBpcyBlbmNyeXB0ZWQgaW4gdGhlIGZpcnN0IGtlcm5lbCB3aGVuIFNNRSBpcyBlbmFibGVkLCBo
ZXJlIGtlcm5lbAo+Pj4+IGNvcGllcyB0aGUgZmlyc3QgNjQwayBkYXRhIHRvIHRoZSBiYWNrdXAg
YXJlYSBpbiBwdXJnYXRvcnkoKSwgYmVjYXVzZSB0aGUgYmFja3VwIGFyZWEgaXMgbWFwcGVkCj4+
Pj4gYXMgZGVjcnlwdGVkLCB0aGlzIGNvcHlpbmcgb3BlcmF0aW9uIG1ha2VzIHRoYXQgdGhlIGZp
cnN0IDY0MGsgZGF0YSBpcyBkZWNyeXB0ZWQoZGVjb2RlZCkgYW5kCj4+Pj4gc2F2ZWQgdG8gdGhl
IGJhY2t1cCBhcmVhLCBidXQgcHJvYmFibHkga2VybmVsIGNhbiBub3QgYXdhcmUgb2YgU01FIGlu
IHB1cmdhdG9yeSgpLCB3aGljaCBjYXVzZXMKPj4+PiBrZXJuZWwgbWlzdGFrZW5seSByZWFkIG91
dCB0aGUgZmlyc3QgNjQway4KPj4+Pgo+Pj4+IEluIGFkZGl0aW9uLCBpIGhhY2tlZCBrZXJuZWwg
Y29kZSBhcyBmb2xsb3c6Cj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZnMvcHJvYy92bWNvcmUuYyBi
L2ZzL3Byb2Mvdm1jb3JlLmMKPj4+PiBpbmRleCA3YmNjOTJhZGQ3MmMuLmE1MTYzMWQzNmE3YSAx
MDA2NDQKPj4+PiAtLS0gYS9mcy9wcm9jL3ZtY29yZS5jCj4+Pj4gKysrIGIvZnMvcHJvYy92bWNv
cmUuYwo+Pj4+IEBAIC0zNzcsNiArMzc4LDE2IEBAIHN0YXRpYyBzc2l6ZV90IF9fcmVhZF92bWNv
cmUoY2hhciAqYnVmZmVyLCBzaXplX3QgYnVmbGVuLCBsb2ZmX3QgKmZwb3MsCj4+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbS0+b2Zmc2V0ICsgbS0+c2l6
ZSAtICpmcG9zLAo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGJ1Zmxlbik7Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXJ0ID0gbS0+cGFk
ZHIgKyAqZnBvcyAtIG0tPm9mZnNldDsKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAo
bS0+cGFkZHIgPT0gMHg3M2Y2MDAwMCkgey8vdGhlIGJhY2t1cCBhcmVhJ3Mgc3RhcnQgYWRkcmVz
czoweDczZjYwMDAwCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0bXAgPSBy
ZWFkX2Zyb21fb2xkbWVtKGJ1ZmZlciwgdHN6LCAmc3RhcnQsCj4+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNlcmJ1ZiwgZmFsc2UpOwo+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZQo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHRtcCA9IHJlYWRfZnJvbV9vbGRtZW0oYnVmZmVyLCB0c3osICZzdGFydCwKPj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1c2VyYnVm
LCBtZW1fZW5jcnlwdF9hY3RpdmUoKSk7Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIGlm
ICh0bXAgPCAwKQo+Pj4+Cj4+Pj4gSGVyZSwgaSB1c2VkIHRoZSBjcmFzaCB0b29sIHRvIGNoZWNr
IHRoZSB2bWNvcmUsIGkgY2FuIHNlZSB0aGF0IHRoZSBiYWNrdXAgYXJlYSBpcyBkZWNyeXB0ZWQs
Cj4+Pj4gZXhjZXB0IGZvciB0aGUgZG1hLWttYWxsb2MtNTEyLiBTbyBpIHN1c3BlY3QgdGhhdCBr
ZXJuZWwgZGlkIG5vdCBjb3JyZWN0bHkgcmVhZCBvdXQgdGhlIGZpcnN0Cj4+Pj4gNjQwayBkYXRh
IHRvIGJhY2t1cCBhcmVhLiBEbyB5b3UgaGFwcGVuIHRvIGtub3cgaG93IHRvIGRlYWwgd2l0aCB0
aGUgZmlyc3QgNjQwayBhcmVhIGluIHB1cmdhdG9yeSgpCj4+Pj4gd2hlbiBTTUUgaXMgZW5hYmxl
ZD8gQW55IGlkZWE/Cj4+Cj4+IEknbSBub3QgYWxsIHRoYXQgZmFtaWxpYXIgd2l0aCBrZXhlYyBh
bmQgcHVyZ2F0b3J5LCBldGMuLCBidXQgSSB0aGluawo+PiB0aGF0IHlvdSB3YW50IHRvIHNldHVw
IHRoZSBwYWdlIHRhYmxlIHRoYXQgaXMgYWN0aXZlIHdoZW4gcHVyZ2F0b3J5IHJ1bnMKPj4gc28g
dGhhdCB0aGUgc3JjIGFuZCBkZXN0IGJvdGggaGF2ZSB0aGUgU01FIGVuY3J5cHRpb24gbWFzayBz
ZXQgaW4gdGhlaXIKPj4gcmVzcGVjdGl2ZSBwYWdlIHRhYmxlIGVudHJpZXMuIFRoaXMgd2F5LCB3
aGVuIHRoZSBjb3B5IGlzIHBlcmZvcm1lZCwKPj4gZXZlcnl0aGluZyBpcyBjb3BpZWQgY29ycmVj
dGx5LiAKPiAKPiBFeGFjdGx5LiBUaGF0J3MganVzdCB3aGF0IGkgd2FzIHRoaW5raW5nLgo+IAoK
SSB0cmllZCB0byBzZXR1cCB0aGUgMToxIG1hcHBpbmcgaW4gdGhlIGluaXRfcGd0YWJsZSgpIHdp
dGggdGhlIG1lbW9yeSBlbmNyeXB0aW9uIG1hc2ssIGJ1dCB0aGF0IHN0aWxsCmRpZCBub3QgY29y
cmVjdGx5IGFjY2VzcyB0aGUgZW5jcnlwdGVkIG1lbW9yeSBpbiBwdXJnYXRvcnkoKS4gSSdtIG5v
dCBzdXJlIHdoZXRoZXIgaSBtaXNzZWQgYW55dGhpbmcKZWxzZSwgaSdtIHN0aWxsIGRpZ2dpbmcg
aW50byBpdC4KCkkgZ3Vlc3MgdGhhdCBzaG91bGQgbWFrZSB0aGUgMToxIG1hcHBpbmcgaW4gdGhl
IHB1cmdhdG9yeSBjb250ZXh0IGluc3RlYWQgb2YgaW4gaW5pdF9wZ3RhYmxlKCkuIERvZXMKYW55
b25lIGhhcHBlbiB0byBrbm93IGhvdyB0byBtYWtlIHRoZSAxOjEgbWFwcGluZyB3aXRoIG1lbW9y
eSBlbmNyeXB0aW9uIG1hc2sgaW4gcHVyZ2F0b3J5KCkgY29udGV4dD8KCkluIGFkZGl0aW9uLCB0
aGVyZSBpcyBhbm90aGVyIHdheSB0byBhdm9pZCBlbmNyeXB0aW5nIHRoZSBmaXJzdCA2NDBrIGFy
ZWEuIFdoZW4gU01FIGlzIGVuYWJsZWQsIGRvIG5vdAplbmNyeXB0IHRoZSBmaXJzdCA2NDBrIGFy
ZWEsIGxldCBpdCBza2lwIHRoaXMgYXJlYS4gRG8geW91IGhhcHBlbiB0byBrbm93IGhvdyB0byBk
byBpdD8gVG9tLihidHc6IEkgdHJpZWQKdG8gZG8gaXQsIHVuZm9ydHVuYXRlbHksIHRoYXQgZmFp
bGVkLikuIEJ1dCB0aGF0IGFsc28gbmVlZHMgdG8gbWFrZSBleHRyYSB0aGluZ3Mgd2hlbiBkdW1w
cGluZyB0aGUgdm1jb3JlKApuZWVkIHRvIGR1bXAgdGhlIHZtY29yZSBhY2NvcmRpbmcgdG8gd2hl
dGhlciB0aGUgZmlyc3QgNjQwayBhcmVhIGlzIGVuY3J5cHRlZCkuCgpUaGFua3MuCkxpYW5ibwoK
Pj4gUmVtZW1iZXIsIGVuY3J5cHRlZCBkYXRhIGZyb20gb25lIHBhZ2UKPj4gY2Fubm90IGJlIGRp
cmVjdGx5IGNvcGllZCBhcyB1bmVuY3J5cHRlZCBkYXRhIGFuZCBkZWNyeXB0ZWQgcHJvcGVybHkg
aW4KPj4gdGhlIG5ldyBsb2NhdGlvbiAoZS5nLiBhIHBhZ2Ugb2YgemVyb2VzIGVuY3J5cHRlZCBh
dCBvbmUgYWRkcmVzcyB3aWxsIG5vdAo+PiBhcHBlYXIgdGhlIHNhbWUgYXMgYSBwYWdlIG9mIHpl
cm9lcyBlbmNyeXB0ZWQgYXQgYSBkaWZmZXJlbnQgYWRkcmVzcykuCj4gCj4gWWVzLCB0aGF0J3Mg
cmlnaHQuIFRoYW5rIHlvdSwgVG9tLgo+IAo+IEknbSBjb25zaWRlcmluZyBob3cgdG8gc29sdmUg
aXQsIGFuZCBpIGd1ZXNzIHRoYXQgcHJvYmFibHkgaXQgbmVlZHMgdG8gcHJvcGVybHkgZGVhbCB3
aXRoCj4gdGhpcyBwcm9ibGVtIGluIHB1cmdhdG9yeSgpLgo+IAo+IFRoYW5rcy4KPiBMaWFuYm8K
PiAKPj4KPj4gVGhhbmtzLAo+PiBUb20KPj4KPj4+Pgo+Pj4+IEJUVzogSScgY3VyaW91cyB0aGUg
cmVhc29uIHdoeSB0aGUgYWRkcmVzcyBvZiBkbWEta21hbGxvYy01MTJrIGFsd2F5cyBmYWxscyBp
bnRvIHRoZSBmaXJzdCA2NDBrCj4+Pj4gcmVnaW9uLCBhbmQgaSBkaWQgbm90IHNlZSB0aGUgc2Ft
ZSBpc3N1ZSBvbiBhbm90aGVyIG1hY2hpbmUuCj4+Pj4KPj4+PiBNYWNoaW5lOgo+Pj4+IFNlcmlh
bCBOdW1iZXIgCWRpZXNlbC1zeXM5MDc5LTAwMDEKPj4+PiBNb2RlbCAgICAgICAgICAgQU1EIERp
ZXNlbCAoQTBDKQo+Pj4+IENQVSAgICAgICAgICAgICBBTUQgRVBZQyA3NjAxIDMyLUNvcmUgUHJv
Y2Vzc29yCj4+Pj4KPj4+Pgo+Pj4+IEJhY2tncm91bmQ6Cj4+Pj4gT24geDg2XzY0LCB0aGUgZmly
c3QgNjQwayByZWdpb24gaXMgc3BlY2lhbCBiZWNhdXNlIG9mIHNvbWUgaGlzdG9yaWNhbCByZWFz
b25zLiBBbmQga2R1bXAga2VybmVsIHdpbGwKPj4+PiByZXVzZSB0aGUgZmlyc3QgNjQwayByZWdp
b24sIHNvIGtlcm5lbCB3aWxsIGJhY2sgdXAoY29weSkgdGhlIGZpcnN0IDY0MGsgcmVnaW9uIHRv
IGEgYmFja3VwIGFyZWEgaW4KPj4+PiBwdXJnYXRvcnkoKSwgaW4gb3JkZXIgbm90IHRvIHJld3Jp
dGUgdGhlIG9sZCByZWdpb24oNjQwaykgaW4ga2R1bXAga2VybmVsLCB3aGljaCBtYWtlcyBzdXJl
IHRoYXQga2R1bXAKPj4+PiBjYW4gcmVhZCBvdXQgdGhlIG9sZCBtZW1vcnkgZnJvbSB2bWNvcmUu
Cj4+Pj4KPj4+Pgo+Pj4+IFRoYW5rcy4KPj4+PiBMaWFuYm8KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8va2V4ZWMK
