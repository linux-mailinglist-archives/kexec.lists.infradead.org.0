Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742831FCE8
	for <lists+kexec@lfdr.de>; Thu, 16 May 2019 03:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fjnm+7RFpU3ywS52ap4/QfJURnXDOjGkqstlECGQlU=; b=kNs45zctbhtjBP
	/GdNfeB5SbL8l/1pHS8jmVCW1Eui5z0hVFnE8LFg5TeSZ3jgf63XFqHoDdDweqbCf0LcauDgjNpEA
	SVfsrTDDPzBuF6G6982WyGTn+EN+nnDff4PW7y8i8LNOfFI96D00YQ4U9cD7Fs9Rfw/UiHmrqzzkf
	Fc0R8i+hXPKVFbeBOkyjjpUjzFi6CQ66s4oFBu+t84lFdfCUme3TOXCnPRQwpoicw+Y3V/2xx9KD3
	RU1ugr2vVRwj+mQMjYc/jPjPOD0+/ZMxjCwKEdNDH/8xkU0/zR7+kLjpjo52jB4OWRS/6YLObGa1D
	7T2bgPr3S6ZcsDwybD5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR4ww-0007kF-82; Thu, 16 May 2019 01:12:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR4ws-0007jB-OR
 for kexec@lists.infradead.org; Thu, 16 May 2019 01:12:44 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4DB4385A04;
 Thu, 16 May 2019 01:12:40 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-74.pek2.redhat.com [10.72.12.74])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E5C7C19733;
 Thu, 16 May 2019 01:12:31 +0000 (UTC)
Subject: Re: [PATCH 2/3 v3] x86/kexec: Set the C-bit in the identity map page
 table when SEV is active
To: Borislav Petkov <bp@alien8.de>
References: <20190430074421.7852-1-lijiang@redhat.com>
 <20190430074421.7852-3-lijiang@redhat.com> <20190515133006.GG24212@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <4707fb2d-b7d3-34e3-a488-8aa9bdca05f1@redhat.com>
Date: Thu, 16 May 2019 09:12:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190515133006.GG24212@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 16 May 2019 01:12:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_181242_835896_B17BE13B 
X-CRM114-Status: GOOD (  20.20  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwNeaciDE15pelIDIxOjMwLCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IFR1ZSwgQXByIDMwLCAyMDE5IGF0IDAzOjQ0OjIwUE0gKzA4MDAsIExpYW5ibyBKaWFuZyB3cm90
ZToKPj4gV2hlbiBTRVYgaXMgYWN0aXZlLCB0aGUgc2Vjb25kIGtlcm5lbCBpbWFnZSBpcyBsb2Fk
ZWQgaW50byB0aGUKPj4gZW5jcnlwdGVkIG1lbW9yeS4gTGV0cyBtYWtlIHN1cmUgdGhhdCB3aGVu
IGtleGVjIGJ1aWxkcyB0aGUKPj4gaWRlbnRpdHkgbWFwcGluZyBwYWdlIHRhYmxlIGl0IGFkZHMg
dGhlIG1lbW9yeSBlbmNyeXB0aW9uIG1hc2soQy1iaXQpLgo+Pgo+PiBDby1kZXZlbG9wZWQtYnk6
IEJyaWplc2ggU2luZ2ggPGJyaWplc2guc2luZ2hAYW1kLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTog
QnJpamVzaCBTaW5naCA8YnJpamVzaC5zaW5naEBhbWQuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBM
aWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4KPj4gLS0tCj4+ICBhcmNoL3g4Ni9rZXJu
ZWwvbWFjaGluZV9rZXhlY182NC5jIHwgMTIgKysrKysrKysrKystCj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJj
aC94ODYva2VybmVsL21hY2hpbmVfa2V4ZWNfNjQuYyBiL2FyY2gveDg2L2tlcm5lbC9tYWNoaW5l
X2tleGVjXzY0LmMKPj4gaW5kZXggZjYwNjExNTMxZDE3Li4xMWZlMzUyZjczNDQgMTAwNjQ0Cj4+
IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9tYWNoaW5lX2tleGVjXzY0LmMKPj4gKysrIGIvYXJjaC94
ODYva2VybmVsL21hY2hpbmVfa2V4ZWNfNjQuYwo+PiBAQCAtNTYsNiArNTYsNyBAQCBzdGF0aWMg
aW50IGluaXRfdHJhbnNpdGlvbl9wZ3RhYmxlKHN0cnVjdCBraW1hZ2UgKmltYWdlLCBwZ2RfdCAq
cGdkKQo+PiAgCXB0ZV90ICpwdGU7Cj4+ICAJdW5zaWduZWQgbG9uZyB2YWRkciwgcGFkZHI7Cj4+
ICAJaW50IHJlc3VsdCA9IC1FTk9NRU07Cj4+ICsJcGdwcm90X3QgcHJvdCA9IFBBR0VfS0VSTkVM
X0VYRUNfTk9FTkM7Cj4+ICAKPj4gIAl2YWRkciA9ICh1bnNpZ25lZCBsb25nKXJlbG9jYXRlX2tl
cm5lbDsKPj4gIAlwYWRkciA9IF9fcGEocGFnZV9hZGRyZXNzKGltYWdlLT5jb250cm9sX2NvZGVf
cGFnZSkrUEFHRV9TSVpFKTsKPj4gQEAgLTkyLDcgKzkzLDExIEBAIHN0YXRpYyBpbnQgaW5pdF90
cmFuc2l0aW9uX3BndGFibGUoc3RydWN0IGtpbWFnZSAqaW1hZ2UsIHBnZF90ICpwZ2QpCj4+ICAJ
CXNldF9wbWQocG1kLCBfX3BtZChfX3BhKHB0ZSkgfCBfS0VSTlBHX1RBQkxFKSk7Cj4+ICAJfQo+
PiAgCXB0ZSA9IHB0ZV9vZmZzZXRfa2VybmVsKHBtZCwgdmFkZHIpOwo+PiAtCXNldF9wdGUocHRl
LCBwZm5fcHRlKHBhZGRyID4+IFBBR0VfU0hJRlQsIFBBR0VfS0VSTkVMX0VYRUNfTk9FTkMpKTsK
Pj4gKwo+PiArCWlmIChzZXZfYWN0aXZlKCkpCj4+ICsJCXByb3QgPSBQQUdFX0tFUk5FTF9FWEVD
Owo+PiArCj4+ICsJc2V0X3B0ZShwdGUsIHBmbl9wdGUocGFkZHIgPj4gUEFHRV9TSElGVCwgcHJv
dCkpOwo+PiAgCXJldHVybiAwOwo+PiAgZXJyOgo+PiAgCXJldHVybiByZXN1bHQ7Cj4+IEBAIC0x
MjksNiArMTM0LDExIEBAIHN0YXRpYyBpbnQgaW5pdF9wZ3RhYmxlKHN0cnVjdCBraW1hZ2UgKmlt
YWdlLCB1bnNpZ25lZCBsb25nIHN0YXJ0X3BndGFibGUpCj4+ICAJbGV2ZWw0cCA9IChwZ2RfdCAq
KV9fdmEoc3RhcnRfcGd0YWJsZSk7Cj4+ICAJY2xlYXJfcGFnZShsZXZlbDRwKTsKPj4gIAo+PiAr
CWlmIChzZXZfYWN0aXZlKCkpIHsKPj4gKwkJaW5mby5wYWdlX2ZsYWcgfD0gX1BBR0VfRU5DOwo+
PiArCQlpbmZvLmtlcm5wZ19mbGFnID0gX0tFUk5QR19UQUJMRTsKPiAKPiBrZXJucGdfZmxhZyBh
Ym92ZSBpcyBpbml0aWFsaXplZCB0byBfS0VSTlBHX1RBQkxFX05PRU5DIHNvIHlvdSBjYW4gZG8g
aGVyZQo+IAo+IAkJaW5mby5rZXJucGdfZmxhZyB8PSBfUEFHRV9FTkM7Cj4gCj4gdG9vLCB0byBt
YWtlIGl0IGV2ZW4gbW9yZSBjbGVhciB3aGF0IHRoaXMgZG9lcywgcmlnaHQ/Cj4gCk9LLCBpIHdp
bGwgbW9kaWZ5IGl0IGFjY29yZGluZyB0byB5b3VyIHN1Z2dlc3Rpb24gYW5kIHBvc3QgYWdhaW4u
CgpUaGFua3MuCkxpYW5ibwoKPiBJT1c6Cj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5l
bC9tYWNoaW5lX2tleGVjXzY0LmMgYi9hcmNoL3g4Ni9rZXJuZWwvbWFjaGluZV9rZXhlY182NC5j
Cj4gaW5kZXggNzgzY2U1MTg0NDA1Li4xNmMzN2ZlNDg5YmMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC94
ODYva2VybmVsL21hY2hpbmVfa2V4ZWNfNjQuYwo+ICsrKyBiL2FyY2gveDg2L2tlcm5lbC9tYWNo
aW5lX2tleGVjXzY0LmMKPiBAQCAtMTM1LDggKzEzNSw4IEBAIHN0YXRpYyBpbnQgaW5pdF9wZ3Rh
YmxlKHN0cnVjdCBraW1hZ2UgKmltYWdlLCB1bnNpZ25lZCBsb25nIHN0YXJ0X3BndGFibGUpCj4g
ICAgICAgICBjbGVhcl9wYWdlKGxldmVsNHApOwo+ICAKPiAgICAgICAgIGlmIChzZXZfYWN0aXZl
KCkpIHsKPiAtICAgICAgICAgICAgICAgaW5mby5wYWdlX2ZsYWcgfD0gX1BBR0VfRU5DOwo+IC0g
ICAgICAgICAgICAgICBpbmZvLmtlcm5wZ19mbGFnID0gX0tFUk5QR19UQUJMRTsKPiArICAgICAg
ICAgICAgICAgaW5mby5wYWdlX2ZsYWcgICB8PSBfUEFHRV9FTkM7Cj4gKyAgICAgICAgICAgICAg
IGluZm8ua2VybnBnX2ZsYWcgfD0gX1BBR0VfRU5DOwo+ICAgICAgICAgfQo+ICAKPiAgICAgICAg
IGlmIChkaXJlY3RfZ2JwYWdlcykKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
