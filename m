Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E03CA35AB
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 13:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoqnjEpWk67lbG8l+cdTFdijTRFj8P23LqVTAL9lgqs=; b=hMor/xEcKqv7k8
	mQSgi9VisKRppF+1/+2vo/P79a5hVaPD3KsTmbPsM52rhhMsd1WX1bUcmUTtbpgec9VlocE5nbtdB
	XC10hF2pHn2k06nBDlvdXJCPGr+GtNqOeInTsOiD0u65IxzYU2sE7pubCmVTbPtD656drSnQlgRiB
	B3pso2DROpJO+ywuektHs4oZGwgYAc88V0CbWblNh4w0RhSqIFFea1zCFubCG2fqUDDGmZdOS1Sde
	26XiIsNkPdBy+Cqc62OBksYIVrCKzLwQoj6xVpY0KFOm0PaPPZFemwHAGtjvtsPbe3tR7D8s8UZYv
	xRrRbxbD9uKzO30jTOtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3f40-00083X-BT; Fri, 30 Aug 2019 11:27:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3f3v-00082t-RM
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 11:27:29 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0D9633082A6C;
 Fri, 30 Aug 2019 11:27:27 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-59.pek2.redhat.com [10.72.12.59])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 92F7A60605;
 Fri, 30 Aug 2019 11:27:15 +0000 (UTC)
Subject: Re: crash: `kmem -s` reported "kmem: dma-kmalloc-512: slab:
 ffffe192c0001000 invalid freepointer: e5ffef4e9a040b7e" on a dumped vmcore
From: lijiang <lijiang@redhat.com>
To: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>,
 Dave Young <dyoung@redhat.com>
References: <e640b50a-a962-8e56-33a2-2ba2eb76e813@redhat.com>
 <20190802010538.GA2202@dhcp-128-65.nay.redhat.com>
 <5d91e856-01de-bc80-e4bc-497d57652072@amd.com>
 <2d3c7ab8-0b83-4ef5-bb89-0c7c476265b3@redhat.com>
 <467709e5-3f9e-85bd-60a8-255af71f3d4f@redhat.com>
Message-ID: <9d2fa8a6-6b33-dd68-4dca-a84f7e68885f@redhat.com>
Date: Fri, 30 Aug 2019 19:27:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <467709e5-3f9e-85bd-60a8-255af71f3d4f@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Fri, 30 Aug 2019 11:27:27 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_042727_920090_5373E6A4 
X-CRM114-Status: GOOD (  29.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

5ZyoIDIwMTnlubQwOOaciDE35pelIDE1OjIzLCBsaWppYW5nIOWGmemBkzoKPiDlnKggMjAxOeW5
tDA45pyIMTHml6UgMTA6MjksIGxpamlhbmcg5YaZ6YGTOgo+PiDlnKggMjAxOeW5tDA45pyIMDnm
l6UgMDY6MzcsIExlbmRhY2t5LCBUaG9tYXMg5YaZ6YGTOgo+Pj4gT24gOC8xLzE5IDg6MDUgUE0s
IERhdmUgWW91bmcgd3JvdGU6Cj4+Pj4gQWRkIGtleGVjIGNjIGxpc3QuCj4+Pj4gT24gMDgvMDEv
MTkgYXQgMTE6MDJwbSwgbGlqaWFuZyB3cm90ZToKPj4+Pj4gSGksIFRvbQo+Pj4+Pgo+Pj4+PiBS
ZWNlbnRseSwgaSByYW4gaW50byBhIHByb2JsZW0gYWJvdXQgU01FIGFuZCB1c2VkIGNyYXNoIHRv
b2wgdG8gY2hlY2sgdGhlIHZtY29yZSBhcyBmb2xsb3c6Cj4+Pj4+Cj4+Pj4+IGNyYXNoPiBrbWVt
IC1zIHwgZ3JlcCAtaSBpbnZhbGlkCj4+Pj4+IGttZW06IGRtYS1rbWFsbG9jLTUxMjogc2xhYjog
ZmZmZmUxOTJjMDAwMTAwMCBpbnZhbGlkIGZyZWVwb2ludGVyOiBlNWZmZWY0ZTlhMDQwYjdlCj4+
Pj4+IGttZW06IGRtYS1rbWFsbG9jLTUxMjogc2xhYjogZmZmZmUxOTJjMDAwMTAwMCBpbnZhbGlk
IGZyZWVwb2ludGVyOiBlNWZmZWY0ZTlhMDQwYjdlCj4+Pj4+Cj4+Pj4+IEFuZCB0aGUgY3Jhc2gg
dG9vbCByZXBvcnRlZCB0aGUgYWJvdmUgZXJyb3IsIHByb2JhYmx5LCB0aGUgbWFpbiByZWFzb24g
aXMgdGhhdCBrZXJuZWwgZG9lcyBub3QKPj4+Pj4gY29ycmVjdGx5IGhhbmRsZSB0aGUgZmlyc3Qg
NjQwayByZWdpb24gd2hlbiBTTUUgaXMgZW5hYmxlZC4KPj4+Pj4KPj4+Pj4gV2hlbiBTTUUgaXMg
ZW5hYmxlZCwgdGhlIGtlcm5lbCBhbmQgaW5pdHJhbWZzIGltYWdlcyBhcmUgbG9hZGVkIGludG8g
dGhlIGRlY3J5cHRlZCBtZW1vcnksIGFuZAo+Pj4+PiB0aGUgYmFja3VwIGFyZWEoZmlyc3QgNjQw
aykgaXMgYWxzbyBtYXBwZWQgYXMgZGVjcnlwdGVkLCBidXQgdGhlIGZpcnN0IDY0MGsgZGF0YSBp
cyBjb3BpZWQgdG8KPj4+Pj4gdGhlIGJhY2t1cCBhcmVhIGluIHB1cmdhdG9yeSgpLiBQbGVhc2Ug
cmVmZXIgdG8gdGhpcyBmaWxlOiBhcmNoL3g4Ni9wdXJnYXRvcnkvcHVyZ2F0b3J5LmMKPj4+Pj4g
Li4uLi4uCj4+Pj4+IHN0YXRpYyBpbnQgY29weV9iYWNrdXBfcmVnaW9uKHZvaWQpCj4+Pj4+IHsK
Pj4+Pj4gICAgICAgICAgaWYgKHB1cmdhdG9yeV9iYWNrdXBfZGVzdCkgewo+Pj4+PiAgICAgICAg
ICAgICAgICAgIG1lbWNweSgodm9pZCAqKXB1cmdhdG9yeV9iYWNrdXBfZGVzdCwKPj4+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgKHZvaWQgKilwdXJnYXRvcnlfYmFja3VwX3NyYywgcHVyZ2F0
b3J5X2JhY2t1cF9zeik7Cj4+Pj4+ICAgICAgICAgIH0KPj4+Pj4gICAgICAgICAgcmV0dXJuIDA7
Cj4+Pj4+IH0KPj4+Pj4gLi4uLi4uCj4+Pj4+Cj4+Pj4+IGFyY2gveDg2L2tlcm5lbC9tYWNoaW5l
X2tleGVjXzY0LmMKPj4+Pj4gLi4uLi4uCj4+Pj4+IG1hY2hpbmVfa2V4ZWNfcHJlcGFyZSgpLT4K
Pj4+Pj4gYXJjaF91cGRhdGVfcHVyZ2F0b3J5KCktPgo+Pj4+PiAuLi4uLgo+Pj4+Pgo+Pj4+PiBB
Y3R1YWxseSwgdGhlIGZpcnMgNjQwayBhcmVhIGlzIGVuY3J5cHRlZCBpbiB0aGUgZmlyc3Qga2Vy
bmVsIHdoZW4gU01FIGlzIGVuYWJsZWQsIGhlcmUga2VybmVsCj4+Pj4+IGNvcGllcyB0aGUgZmly
c3QgNjQwayBkYXRhIHRvIHRoZSBiYWNrdXAgYXJlYSBpbiBwdXJnYXRvcnkoKSwgYmVjYXVzZSB0
aGUgYmFja3VwIGFyZWEgaXMgbWFwcGVkCj4+Pj4+IGFzIGRlY3J5cHRlZCwgdGhpcyBjb3B5aW5n
IG9wZXJhdGlvbiBtYWtlcyB0aGF0IHRoZSBmaXJzdCA2NDBrIGRhdGEgaXMgZGVjcnlwdGVkKGRl
Y29kZWQpIGFuZAo+Pj4+PiBzYXZlZCB0byB0aGUgYmFja3VwIGFyZWEsIGJ1dCBwcm9iYWJseSBr
ZXJuZWwgY2FuIG5vdCBhd2FyZSBvZiBTTUUgaW4gcHVyZ2F0b3J5KCksIHdoaWNoIGNhdXNlcwo+
Pj4+PiBrZXJuZWwgbWlzdGFrZW5seSByZWFkIG91dCB0aGUgZmlyc3QgNjQway4KPj4+Pj4KPj4+
Pj4gSW4gYWRkaXRpb24sIGkgaGFja2VkIGtlcm5lbCBjb2RlIGFzIGZvbGxvdzoKPj4+Pj4KPj4+
Pj4gZGlmZiAtLWdpdCBhL2ZzL3Byb2Mvdm1jb3JlLmMgYi9mcy9wcm9jL3ZtY29yZS5jCj4+Pj4+
IGluZGV4IDdiY2M5MmFkZDcyYy4uYTUxNjMxZDM2YTdhIDEwMDY0NAo+Pj4+PiAtLS0gYS9mcy9w
cm9jL3ZtY29yZS5jCj4+Pj4+ICsrKyBiL2ZzL3Byb2Mvdm1jb3JlLmMKPj4+Pj4gQEAgLTM3Nyw2
ICszNzgsMTYgQEAgc3RhdGljIHNzaXplX3QgX19yZWFkX3ZtY29yZShjaGFyICpidWZmZXIsIHNp
emVfdCBidWZsZW4sIGxvZmZfdCAqZnBvcywKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbS0+b2Zmc2V0ICsgbS0+c2l6ZSAtICpmcG9zLAo+Pj4+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBidWZsZW4pOwo+Pj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhcnQgPSBtLT5wYWRkciArICpmcG9zIC0gbS0+
b2Zmc2V0Owo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAobS0+cGFkZHIgPT0gMHg3
M2Y2MDAwMCkgey8vdGhlIGJhY2t1cCBhcmVhJ3Mgc3RhcnQgYWRkcmVzczoweDczZjYwMDAwCj4+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdG1wID0gcmVhZF9mcm9tX29sZG1l
bShidWZmZXIsIHRzeiwgJnN0YXJ0LAo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1c2VyYnVmLCBmYWxzZSk7Cj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIH0gZWxzZQo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0
bXAgPSByZWFkX2Zyb21fb2xkbWVtKGJ1ZmZlciwgdHN6LCAmc3RhcnQsCj4+Pj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzZXJidWYsIG1lbV9lbmNy
eXB0X2FjdGl2ZSgpKTsKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgIGlmICh0bXAgPCAw
KQo+Pj4+Pgo+Pj4+PiBIZXJlLCBpIHVzZWQgdGhlIGNyYXNoIHRvb2wgdG8gY2hlY2sgdGhlIHZt
Y29yZSwgaSBjYW4gc2VlIHRoYXQgdGhlIGJhY2t1cCBhcmVhIGlzIGRlY3J5cHRlZCwKPj4+Pj4g
ZXhjZXB0IGZvciB0aGUgZG1hLWttYWxsb2MtNTEyLiBTbyBpIHN1c3BlY3QgdGhhdCBrZXJuZWwg
ZGlkIG5vdCBjb3JyZWN0bHkgcmVhZCBvdXQgdGhlIGZpcnN0Cj4+Pj4+IDY0MGsgZGF0YSB0byBi
YWNrdXAgYXJlYS4gRG8geW91IGhhcHBlbiB0byBrbm93IGhvdyB0byBkZWFsIHdpdGggdGhlIGZp
cnN0IDY0MGsgYXJlYSBpbiBwdXJnYXRvcnkoKQo+Pj4+PiB3aGVuIFNNRSBpcyBlbmFibGVkPyBB
bnkgaWRlYT8KPj4+Cj4+PiBJJ20gbm90IGFsbCB0aGF0IGZhbWlsaWFyIHdpdGgga2V4ZWMgYW5k
IHB1cmdhdG9yeSwgZXRjLiwgYnV0IEkgdGhpbmsKPj4+IHRoYXQgeW91IHdhbnQgdG8gc2V0dXAg
dGhlIHBhZ2UgdGFibGUgdGhhdCBpcyBhY3RpdmUgd2hlbiBwdXJnYXRvcnkgcnVucwo+Pj4gc28g
dGhhdCB0aGUgc3JjIGFuZCBkZXN0IGJvdGggaGF2ZSB0aGUgU01FIGVuY3J5cHRpb24gbWFzayBz
ZXQgaW4gdGhlaXIKPj4+IHJlc3BlY3RpdmUgcGFnZSB0YWJsZSBlbnRyaWVzLiBUaGlzIHdheSwg
d2hlbiB0aGUgY29weSBpcyBwZXJmb3JtZWQsCj4+PiBldmVyeXRoaW5nIGlzIGNvcGllZCBjb3Jy
ZWN0bHkuIAo+Pgo+PiBFeGFjdGx5LiBUaGF0J3MganVzdCB3aGF0IGkgd2FzIHRoaW5raW5nLgo+
Pgo+IAo+IEkgdHJpZWQgdG8gc2V0dXAgdGhlIDE6MSBtYXBwaW5nIGluIHRoZSBpbml0X3BndGFi
bGUoKSB3aXRoIHRoZSBtZW1vcnkgZW5jcnlwdGlvbiBtYXNrLCBidXQgdGhhdCBzdGlsbAo+IGRp
ZCBub3QgY29ycmVjdGx5IGFjY2VzcyB0aGUgZW5jcnlwdGVkIG1lbW9yeSBpbiBwdXJnYXRvcnko
KS4gSSdtIG5vdCBzdXJlIHdoZXRoZXIgaSBtaXNzZWQgYW55dGhpbmcKPiBlbHNlLCBpJ20gc3Rp
bGwgZGlnZ2luZyBpbnRvIGl0Lgo+IAoKQXMgd2Uga25vdywga2R1bXAga2VybmVsIHdpbGwgcmV1
c2UgdGhlIGZpcnN0IDY0MGsgcmVnaW9uLCBzbyB0aGUgb2xkIGNvbnRlbnQgaW4gdGhlIGZpcnN0
IDY0MGsgYXJlYSB3aWxsCmJlIGNvcGllZCB0byBhIGJhY2t1cCBhcmVhLCB3aGljaCBpcyBkb25l
IGluIHB1cmdhdG9yeSgpLiBXaGVuIGR1bXBpbmcgdGhlIHZtY29yZSwga2R1bXAga2VybmVsIHdp
bGwgcmVhZAp0aGUgb2xkIGNvbnRlbnQgb2YgdGhlIGZpcnN0IDY0MGsgYXJlYSBmcm9tIHRoZSBi
YWNrdXAgYXJlYS4gCgpBY2NvcmRpbmcgdG8gYWJvdmUgZGVzY3JpcHRpb24sIHdoZW4gU01FIGlz
IGVuYWJsZWQgaW4gdGhlIGZpcnN0IGtlcm5lbCwga2VybmVsIGhhcyB0byBzZXR1cCB0aGUgaWRl
bnRpdHkKbWFwcGluZyBmb3IgdGhlIGZpcnN0IDY0MGsgYXJlYSB3aXRoIGVuY3J5cHRpb24gbWFz
ayBzbyB0aGF0IGtlcm5lbCBjYW4gY29ycmVjdGx5IGFjY2VzcyB0aGUgb2xkIG1lbW9yeS4KQW5k
IGFsc28gc2V0dXAgdGhlIGlkZW50aXR5IG1hcHBpbmcgZm9yIHRoZSBiYWNrdXAgcmVnaW9uIHdp
dGggZW5jcnlwdGlvbiBtYXNrLiBCdXQga2R1bXAga2VybmVsIHdvbid0CnByb3Blcmx5IGRlYWwg
d2l0aCB0aGUgZW5jcnlwdGVkIG1lbW9yeSBiZWZvcmUgU01FIGlzIGVuYWJsZWQsIHdoaWNoIGNh
dXNlcyB0aGUgZmFpbHVyZSBvZiBrZHVtcCBrZXJuZWwKYm9vdC4KClNvIGkgcGxhbmVkIHRvIHNl
dHVwIHRoZSB0ZW1wb3JhcnkgbWFwcGluZyBvZiBwYWdlIHRhYmxlIHdpdGggZW5jcnlwdGlvbiBt
YXNrIGZvciB0aGUgZmlyc3QgNjQwayBhcmVhIGFuZApiYWNrdXAgcmVnaW9uIGluIHB1cmdhdG9y
eSgpLgoKPiBJIGd1ZXNzIHRoYXQgc2hvdWxkIG1ha2UgdGhlIDE6MSBtYXBwaW5nIGluIHRoZSBw
dXJnYXRvcnkgY29udGV4dCBpbnN0ZWFkIG9mIGluIGluaXRfcGd0YWJsZSgpLiBEb2VzCj4gYW55
b25lIGhhcHBlbiB0byBrbm93IGhvdyB0byBtYWtlIHRoZSAxOjEgbWFwcGluZyB3aXRoIG1lbW9y
eSBlbmNyeXB0aW9uIG1hc2sgaW4gcHVyZ2F0b3J5KCkgY29udGV4dD8KPiAKCkkgaGF2ZSBpbml0
aWF0ZWQgdGhlIFNNRSByZWxhdGVkIGNvZGUgaW4gcHVyZ2F0b3J5KCksIGFuZCBhbHNvIGdvdCB0
aGUgdmFsdWUgb2Ygc21lX21lX21hc2ssIGJ1dCB0aGVyZQphcmUgdG9vIG1hbnkgcmVzdHJpY3Rp
b25zIGluIHB1cmdhdG9yeSgpIGNvbnRleHQsIGZvciBleGFtcGxlLCBpIGNhbiBub3QgYWxsb2Nh
dGUgbWVtb3J5IGZvciBjcmVhdGluZyB0aGUKdGVtcG9yYXJ5IG1hcHBpbmcgb2YgcGFnZSB0YWJs
ZSB3aXRoIGVuY3J5cHRpb24gbWFzaywgd2hpY2ggcHJldmVudHMgbXkgYXR0ZW1wdC4gQW55IGlk
ZWE/Cgo+IEluIGFkZGl0aW9uLCB0aGVyZSBpcyBhbm90aGVyIHdheSB0byBhdm9pZCBlbmNyeXB0
aW5nIHRoZSBmaXJzdCA2NDBrIGFyZWEuIFdoZW4gU01FIGlzIGVuYWJsZWQsIGRvIG5vdAo+IGVu
Y3J5cHQgdGhlIGZpcnN0IDY0MGsgYXJlYSwgbGV0IGl0IHNraXAgdGhpcyBhcmVhLiBEbyB5b3Ug
aGFwcGVuIHRvIGtub3cgaG93IHRvIGRvIGl0PyBUb20uKGJ0dzogSSB0cmllZAo+IHRvIGRvIGl0
LCB1bmZvcnR1bmF0ZWx5LCB0aGF0IGZhaWxlZC4pLiBCdXQgdGhhdCBhbHNvIG5lZWRzIHRvIG1h
a2UgZXh0cmEgdGhpbmdzIHdoZW4gZHVtcHBpbmcgdGhlIHZtY29yZSgKPiBuZWVkIHRvIGR1bXAg
dGhlIHZtY29yZSBhY2NvcmRpbmcgdG8gd2hldGhlciB0aGUgZmlyc3QgNjQwayBhcmVhIGlzIGVu
Y3J5cHRlZCkuCj4gCkkgcmV0aG91Z2h0IGl0LCB0aGF0IGNvdWxkIGNhdXNlIHRyb3VibGUgZm9y
IG1lbW9yeSBtYW5hZ2VtZW50LgoKSW4gYWRkaXRpb24sIGkgd2lsbCBhbHNvIHRyeSB0byBjb3B5
IHRoZSBvbGQgbWVtb3J5IGluIHRoZSBmaXJzdCA2NDBrIGFyZWEgdG8gYmFja3VwIGFyZWEgYXQg
dGhlIGVhcmx5IGJvb3QKc3RhZ2Ugb2Yga2R1bXAga2VybmVsKGFuZCBhZnRlciBTTUUgaXMgZW5h
YmxlZCkuIEJ1dCwgbmVlZCB0byBlbnN1cmUgdGhhdCB0aGUgb2xkIG1lbW9yeSBpdCBub3Qgb3Zl
cndyaXR0ZW4uCgpBbnkgc3VnZ2VzdGlvbnMgd2lsbCBiZSBhcHByZWNpYXRlZC4gVGhhbmtzLgoK
TGlhbmJvCgo+IFRoYW5rcy4KPiBMaWFuYm8KPiAKPj4+IFJlbWVtYmVyLCBlbmNyeXB0ZWQgZGF0
YSBmcm9tIG9uZSBwYWdlCj4+PiBjYW5ub3QgYmUgZGlyZWN0bHkgY29waWVkIGFzIHVuZW5jcnlw
dGVkIGRhdGEgYW5kIGRlY3J5cHRlZCBwcm9wZXJseSBpbgo+Pj4gdGhlIG5ldyBsb2NhdGlvbiAo
ZS5nLiBhIHBhZ2Ugb2YgemVyb2VzIGVuY3J5cHRlZCBhdCBvbmUgYWRkcmVzcyB3aWxsIG5vdAo+
Pj4gYXBwZWFyIHRoZSBzYW1lIGFzIGEgcGFnZSBvZiB6ZXJvZXMgZW5jcnlwdGVkIGF0IGEgZGlm
ZmVyZW50IGFkZHJlc3MpLgo+Pgo+PiBZZXMsIHRoYXQncyByaWdodC4gVGhhbmsgeW91LCBUb20u
Cj4+Cj4+IEknbSBjb25zaWRlcmluZyBob3cgdG8gc29sdmUgaXQsIGFuZCBpIGd1ZXNzIHRoYXQg
cHJvYmFibHkgaXQgbmVlZHMgdG8gcHJvcGVybHkgZGVhbCB3aXRoCj4+IHRoaXMgcHJvYmxlbSBp
biBwdXJnYXRvcnkoKS4KPj4KPj4gVGhhbmtzLgo+PiBMaWFuYm8KPj4KPj4+Cj4+PiBUaGFua3Ms
Cj4+PiBUb20KPj4+Cj4+Pj4+Cj4+Pj4+IEJUVzogSScgY3VyaW91cyB0aGUgcmVhc29uIHdoeSB0
aGUgYWRkcmVzcyBvZiBkbWEta21hbGxvYy01MTJrIGFsd2F5cyBmYWxscyBpbnRvIHRoZSBmaXJz
dCA2NDBrCj4+Pj4+IHJlZ2lvbiwgYW5kIGkgZGlkIG5vdCBzZWUgdGhlIHNhbWUgaXNzdWUgb24g
YW5vdGhlciBtYWNoaW5lLgo+Pj4+Pgo+Pj4+PiBNYWNoaW5lOgo+Pj4+PiBTZXJpYWwgTnVtYmVy
IAlkaWVzZWwtc3lzOTA3OS0wMDAxCj4+Pj4+IE1vZGVsICAgICAgICAgICBBTUQgRGllc2VsIChB
MEMpCj4+Pj4+IENQVSAgICAgICAgICAgICBBTUQgRVBZQyA3NjAxIDMyLUNvcmUgUHJvY2Vzc29y
Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEJhY2tncm91bmQ6Cj4+Pj4+IE9uIHg4Nl82NCwgdGhlIGZpcnN0
IDY0MGsgcmVnaW9uIGlzIHNwZWNpYWwgYmVjYXVzZSBvZiBzb21lIGhpc3RvcmljYWwgcmVhc29u
cy4gQW5kIGtkdW1wIGtlcm5lbCB3aWxsCj4+Pj4+IHJldXNlIHRoZSBmaXJzdCA2NDBrIHJlZ2lv
biwgc28ga2VybmVsIHdpbGwgYmFjayB1cChjb3B5KSB0aGUgZmlyc3QgNjQwayByZWdpb24gdG8g
YSBiYWNrdXAgYXJlYSBpbgo+Pj4+PiBwdXJnYXRvcnkoKSwgaW4gb3JkZXIgbm90IHRvIHJld3Jp
dGUgdGhlIG9sZCByZWdpb24oNjQwaykgaW4ga2R1bXAga2VybmVsLCB3aGljaCBtYWtlcyBzdXJl
IHRoYXQga2R1bXAKPj4+Pj4gY2FuIHJlYWQgb3V0IHRoZSBvbGQgbWVtb3J5IGZyb20gdm1jb3Jl
Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBUaGFua3MuCj4+Pj4+IExpYW5ibwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVj
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9rZXhlYwo=
