Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9519AE464C
	for <lists+kexec@lfdr.de>; Fri, 25 Oct 2019 10:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z18uoueHSiB3Kn0q4oVlnXGWZVSWqX2P149BNbjUMbk=; b=tViSFDDEUUHubL
	s8zB9Ivi+Z1kgiI131ew2MkZoqQ826Ocnw5XuR2w7Uxr9p6gSiVUL/JN8nRKSbeMZuLq7dPflSlM2
	HHsXAayIMH6h8T5nGey48ldEPz3C/C81gistTC06tglzUr3PdUaA4v07xmzkMeIGZ+hPPAw5Ke3wp
	kvmap2CIhzxCk89nDO7/5g0JqGWust/A7oqbAXEpuLLaG/7SupAN6CoYu/SnciRlWxrN3qd/G3+uU
	Xe83yzJlmwDk72/FetKQsRlC8LiMGGrRlIfA6DnamGhJZtgf2wROe4Z6rJ8DHuxCY4cAxNQhDpyKo
	NjV+qqjH8a/9YkjU2qCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvLc-00016c-V8; Fri, 25 Oct 2019 08:53:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvLY-00015r-ID
 for kexec@lists.infradead.org; Fri, 25 Oct 2019 08:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571993602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WQrk6OLVhPcjkhSKChmWeNmbh5o1KSL0MTHhKDkF+0Y=;
 b=L1lYxeArVY48QwCbwrtDVc1sqGPJrqveb2enK2lqXapn6l8qU1qceWwBeJALm+Inp056h3
 oSoNjjr8QWoqAhGt5T3tTwaR2zlpdSPXkeC1/7Jwek5ODyzYeUD56o12xCFIQC0bw6pmlK
 mSM1BrX+yIQ+a6PK602P0z5BaXozfjE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-yX8zK2g7N4eEB9MXdyiWXA-1; Fri, 25 Oct 2019 04:53:16 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DFE1D80183D;
 Fri, 25 Oct 2019 08:53:14 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D73510013A1;
 Fri, 25 Oct 2019 08:53:00 +0000 (UTC)
Subject: Re: [PATCH 1/2 v5] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20191023141912.29110-1-lijiang@redhat.com>
 <20191023141912.29110-2-lijiang@redhat.com>
 <20191024100719.GC11441@verge.net.au>
 <4c1c4b78-23f0-a2b9-4be7-5bab0335f10a@redhat.com>
 <6da13645-c5e9-6c95-1f2d-bede177f9863@redhat.com>
 <OSBPR01MB40062E08DFAEDA628FDC945895650@OSBPR01MB4006.jpnprd01.prod.outlook.com>
 <2020bbf9-67b2-52e8-756f-b595414b4c02@redhat.com>
 <875zkdtrw0.fsf@x220.int.ebiederm.org>
From: lijiang <lijiang@redhat.com>
Message-ID: <021215d1-af6e-d032-6d37-fcc2cf30c613@redhat.com>
Date: Fri, 25 Oct 2019 16:52:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <875zkdtrw0.fsf@x220.int.ebiederm.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: yX8zK2g7N4eEB9MXdyiWXA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015324_682038_D3A5629B 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "jgross@suse.com" <jgross@suse.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 "bhe@redhat.com" <bhe@redhat.com>, "dyoung@redhat.com" <dyoung@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>, Simon Horman <horms@verge.net.au>,
 "bp@alien8.de" <bp@alien8.de>, "hpa@zytor.com" <hpa@zytor.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDI15pelIDExOjM5LCBFcmljIFcuIEJpZWRlcm1hbiDlhpnpgZM6Cj4g
bGlqaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPiB3cml0ZXM6Cj4gCj4+ICAqIFJldHVybnMgdGhl
IGxlbmd0aCBvZiB0aGUgYXJndW1lbnQgKHJlZ2FyZGxlc3Mgb2YgaWYgaXQgd2FzCj4+ICAqIHRy
dW5jYXRlZCB0byBmaXQgaW4gdGhlIGJ1ZmZlciksIG9yIC0xIG9uIG5vdCBmb3VuZC4KPj4gICov
Cj4+IHN0YXRpYyBpbnQKPj4gX19jbWRsaW5lX2ZpbmRfb3B0aW9uKGNvbnN0IGNoYXIgKmNtZGxp
bmUsIGludCBtYXhfY21kbGluZV9zaXplLAo+PiAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qg
Y2hhciAqb3B0aW9uLCBjaGFyICpidWZmZXIsIGludCBidWZzaXplKQo+Pgo+Pgo+PiBBY2NvcmRp
bmcgdG8gdGhlIGFib3ZlIGNvZGUgY29tbWVudCwgaXQgc2hvdWxkIGJlIGJldHRlciBsaWtlIHRo
aXM6Cj4+Cj4+ICsgICAgICAgaWYgKGNtZGxpbmVfZmluZF9vcHRpb24oYm9vdF9jb21tYW5kX2xp
bmUsICJjcmFzaGtlcm5lbCIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVM
TCwgMCkgPiAwKSB7Cj4+Cj4+IEFmdGVyIGkgdGVzdCwgaSB3aWxsIHBvc3QgYWdhaW4uCj4+Cj4g
Cj4gVGhpcyBzZWVtcyByZWFzb25hYmxlIGFzIHdlIGFyZSBkZWFsaW5nIHdpdGggeDg2IG9ubHkg
Y29kZS4KPiAKV2hlbiB3ZSBjb21waWxlIHRoZSBub24teDg2IGtlcm5lbCwgdGhhdCBjb3VsZCBj
YXVzZSB0aGUgdGhlIGNvbXBpbGUgZXJyb3IKYmVjYXVzZSB0aGUgY21kbGluZV9maW5kX29wdGlv
bigpIHdvbid0IGJlIGRlZmluZWQgb24gbm9uLXg4NiBhcmNoaXRlY3R1cmUuClNvIGkgd2lsbCBk
ZWZpbmUgYSB3ZWFrIGZ1bmN0aW9uIGluIHRoZSBrZXJuZWwva2V4ZWNfY29yZS5jIGxpa2UgdGhp
czoKKwordm9pZCBfX2luaXQgX193ZWFrIGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCkKK3t9
CgphbmQgaW1wbGVtZW50IHRoZSBrZXhlY19yZXNlcnZlX2xvd18xTWlCKCkgaW4gdGhlIGFyY2gv
eDg2L2tlcm5lbC9tYWNoaW5lX2tleGVjXzY0LmMuCgorLyoKKyAqIFdoZW4gdGhlIGNyYXNoa2Vy
bmVsIG9wdGlvbiBpcyBzcGVjaWZpZWQsIG9ubHkgdXNlIHRoZSBsb3cKKyAqIDFNaUIgZm9yIHRo
ZSByZWFsIG1vZGUgdHJhbXBvbGluZS4KKyAqLwordm9pZCBfX2luaXQga2V4ZWNfcmVzZXJ2ZV9s
b3dfMU1pQih2b2lkKQoreworICAgICAgIGlmIChjbWRsaW5lX2ZpbmRfb3B0aW9uKGJvb3RfY29t
bWFuZF9saW5lLCAiY3Jhc2hrZXJuZWwiLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IE5VTEwsIDApID4gMCkgeworICAgICAgICAgICAgICAgbWVtYmxvY2tfcmVzZXJ2ZSgwLCAxPDwy
MCk7CisgICAgICAgICAgICAgICBwcl9pbmZvKCJSZXNlcnZpbmcgdGhlIGxvdyAxTWlCIG9mIG1l
bW9yeSBmb3IgY3Jhc2hrZXJuZWxcbiIpOworICAgICAgIH0KK30gCgpUaGF0IHdpbGwgc29sdmUg
dGhlIGNvbXBpbGUgZXJyb3Igb24gdGhlIG5vbi14ODYga2VybmVsLCBhbmQgaXQgYWxzbyB3b3Jr
cyB3ZWxsIG9uCnRoZSB4ODYga2VybmVsLgoKQlRXOiBpIHBhc3RlZCB0aGUgY29kZSBhdCB0aGUg
ZW5kLCBwbGVhc2UgcmVmZXIgdG8gaXQuCgo+IEl0IHdvdW5kIGJlIG5pY2UgaWYgc29tZW9uZSBj
b3VsZCBnZW5lcmFsaXplIGNtZGxpbmVfZmluZF9vcHRpb24gdG8gYmUKPiBhcmNoIGluZGVwZW5k
ZW50IHNvIHRoYXQgY3Jhc2hfY29yZS5jOnBhcnNlX2NyYXNoa2VybmVsIGNvdWxkIHVzZSBpdC4K
Ckdvb2QgcG9pbnQsIHRoYXQgY291bGQgYmUgZG9uZSBpbiB0aGUgZnV0dXJlLgoKPiBJIGRvbid0
IHRoaW5rIGZvciB0aGlzIHBhdGNoc2V0LCBidXQgaXQgbG9va3MgbGlrZSBhbiBvdmVyZHVlIGNs
ZWFudXAuCj4gCj4gV2UgcnVuIHRoZSByaXNrIHdpdGggcGFyc2VfY3Jhc2hrZXJuZWwgdXNpbmcg
c3Ryc3RyIGFuZCB0aGlzIHVzaW5nCj4gYW5vdGhlciBhbGdvcml0aG0gb2YgaGF2aW5nIGRpZmZl
cmVudCBrZXJuZWwgY29tbWFuZCBsaW5lIHBhcnNlcnMKPiBnaXZpbmcgZGlmZmVyZW50IHJlc3Vs
dHMgYW5kIGRpc2FncmVlaW5nIGlmICJjcmFzaGtlcm5lbD0iIGlzIHByZXNlbnQKPiBvciBub3Qg
b24gdGhlIGtlcm5lbCBjb21tYW5kIGxpbmUuCj4gCkluZGVlZCwgYnV0IHNvbWV0aW1lcywgdGhl
IGNyYXNoa2VybmVsIGhhcyBhIGNvbXBsaWNhdGVkIHN5bnRheCwgbWF5YmUKdGhhdCBjb3VsZCBi
ZSBhIHJlYXNvbi4KClRoYW5rcy4KTGlhbmJvCgo+IEVyaWMKPiAKPiAKCi0tLQogYXJjaC94ODYv
a2VybmVsL21hY2hpbmVfa2V4ZWNfNjQuYyB8IDE1ICsrKysrKysrKysrKysrKwogYXJjaC94ODYv
cmVhbG1vZGUvaW5pdC5jICAgICAgICAgICB8ICAyICsrCiBpbmNsdWRlL2xpbnV4L2tleGVjLmgg
ICAgICAgICAgICAgIHwgIDIgKysKIGtlcm5lbC9rZXhlY19jb3JlLmMgICAgICAgICAgICAgICAg
fCAgMyArKysKIDQgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2FyY2gveDg2L2tlcm5lbC9tYWNoaW5lX2tleGVjXzY0LmMgYi9hcmNoL3g4Ni9rZXJuZWwvbWFj
aGluZV9rZXhlY182NC5jCmluZGV4IDVkY2Q0MzhhZDhmMi4uNDJkN2MxNWM0NWYxIDEwMDY0NAot
LS0gYS9hcmNoL3g4Ni9rZXJuZWwvbWFjaGluZV9rZXhlY182NC5jCisrKyBiL2FyY2gveDg2L2tl
cm5lbC9tYWNoaW5lX2tleGVjXzY0LmMKQEAgLTE3LDYgKzE3LDcgQEAKICNpbmNsdWRlIDxsaW51
eC9zdXNwZW5kLmg+CiAjaW5jbHVkZSA8bGludXgvdm1hbGxvYy5oPgogI2luY2x1ZGUgPGxpbnV4
L2VmaS5oPgorI2luY2x1ZGUgPGxpbnV4L21lbWJsb2NrLmg+CiAKICNpbmNsdWRlIDxhc20vaW5p
dC5oPgogI2luY2x1ZGUgPGFzbS9wZ3RhYmxlLmg+CkBAIC0yNyw2ICsyOCw3IEBACiAjaW5jbHVk
ZSA8YXNtL2tleGVjLWJ6aW1hZ2U2NC5oPgogI2luY2x1ZGUgPGFzbS9zZXR1cC5oPgogI2luY2x1
ZGUgPGFzbS9zZXRfbWVtb3J5Lmg+CisjaW5jbHVkZSA8YXNtL2NtZGxpbmUuaD4KIAogI2lmZGVm
IENPTkZJR19BQ1BJCiAvKgpAQCAtNjg3LDMgKzY4OSwxNiBAQCB2b2lkIGFyY2hfa2V4ZWNfcHJl
X2ZyZWVfcGFnZXModm9pZCAqdmFkZHIsIHVuc2lnbmVkIGludCBwYWdlcykKIAkgKi8KIAlzZXRf
bWVtb3J5X2VuY3J5cHRlZCgodW5zaWduZWQgbG9uZyl2YWRkciwgcGFnZXMpOwogfQorCisvKgor
ICogV2hlbiB0aGUgY3Jhc2hrZXJuZWwgb3B0aW9uIGlzIHNwZWNpZmllZCwgb25seSB1c2UgdGhl
IGxvdworICogMU1pQiBmb3IgdGhlIHJlYWwgbW9kZSB0cmFtcG9saW5lLgorICovCit2b2lkIF9f
aW5pdCBrZXhlY19yZXNlcnZlX2xvd18xTWlCKHZvaWQpCit7CisJaWYgKGNtZGxpbmVfZmluZF9v
cHRpb24oYm9vdF9jb21tYW5kX2xpbmUsICJjcmFzaGtlcm5lbCIsCisJCQkJTlVMTCwgMCkgPiAw
KSB7CisJCW1lbWJsb2NrX3Jlc2VydmUoMCwgMTw8MjApOworCQlwcl9pbmZvKCJSZXNlcnZpbmcg
dGhlIGxvdyAxTWlCIG9mIG1lbW9yeSBmb3IgY3Jhc2hrZXJuZWxcbiIpOworCX0KK30KZGlmZiAt
LWdpdCBhL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQu
YwppbmRleCA3ZGNlMzljOGMwMzQuLjA2NGNjNzlhMDE1ZCAxMDA2NDQKLS0tIGEvYXJjaC94ODYv
cmVhbG1vZGUvaW5pdC5jCisrKyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYwpAQCAtMyw2ICsz
LDcgQEAKICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAjaW5jbHVkZSA8bGludXgvbWVtYmxvY2su
aD4KICNpbmNsdWRlIDxsaW51eC9tZW1fZW5jcnlwdC5oPgorI2luY2x1ZGUgPGxpbnV4L2tleGVj
Lmg+CiAKICNpbmNsdWRlIDxhc20vc2V0X21lbW9yeS5oPgogI2luY2x1ZGUgPGFzbS9wZ3RhYmxl
Lmg+CkBAIC0zNCw2ICszNSw3IEBAIHZvaWQgX19pbml0IHJlc2VydmVfcmVhbF9tb2RlKHZvaWQp
CiAKIAltZW1ibG9ja19yZXNlcnZlKG1lbSwgc2l6ZSk7CiAJc2V0X3JlYWxfbW9kZV9tZW0obWVt
KTsKKwlrZXhlY19yZXNlcnZlX2xvd18xTWlCKCk7CiB9CiAKIHN0YXRpYyB2b2lkIF9faW5pdCBz
ZXR1cF9yZWFsX21vZGUodm9pZCkKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgva2V4ZWMuaCBi
L2luY2x1ZGUvbGludXgva2V4ZWMuaAppbmRleCAxNzc2ZWIyZTQzYTQuLjk4OGJmMmRlNTFhNyAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9rZXhlYy5oCisrKyBiL2luY2x1ZGUvbGludXgva2V4
ZWMuaApAQCAtMzA2LDYgKzMwNiw3IEBAIGV4dGVybiB2b2lkIF9fY3Jhc2hfa2V4ZWMoc3RydWN0
IHB0X3JlZ3MgKik7CiBleHRlcm4gdm9pZCBjcmFzaF9rZXhlYyhzdHJ1Y3QgcHRfcmVncyAqKTsK
IGludCBrZXhlY19zaG91bGRfY3Jhc2goc3RydWN0IHRhc2tfc3RydWN0ICopOwogaW50IGtleGVj
X2NyYXNoX2xvYWRlZCh2b2lkKTsKK3ZvaWQgX19pbml0IGtleGVjX3Jlc2VydmVfbG93XzFNaUIo
dm9pZCk7CiB2b2lkIGNyYXNoX3NhdmVfY3B1KHN0cnVjdCBwdF9yZWdzICpyZWdzLCBpbnQgY3B1
KTsKIGV4dGVybiBpbnQga2ltYWdlX2NyYXNoX2NvcHlfdm1jb3JlaW5mbyhzdHJ1Y3Qga2ltYWdl
ICppbWFnZSk7CiAKQEAgLTM5Nyw2ICszOTgsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgX19jcmFz
aF9rZXhlYyhzdHJ1Y3QgcHRfcmVncyAqcmVncykgeyB9CiBzdGF0aWMgaW5saW5lIHZvaWQgY3Jh
c2hfa2V4ZWMoc3RydWN0IHB0X3JlZ3MgKnJlZ3MpIHsgfQogc3RhdGljIGlubGluZSBpbnQga2V4
ZWNfc2hvdWxkX2NyYXNoKHN0cnVjdCB0YXNrX3N0cnVjdCAqcCkgeyByZXR1cm4gMDsgfQogc3Rh
dGljIGlubGluZSBpbnQga2V4ZWNfY3Jhc2hfbG9hZGVkKHZvaWQpIHsgcmV0dXJuIDA7IH0KK3N0
YXRpYyBpbmxpbmUgdm9pZCBfX2luaXQga2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQih2b2lkKSB7IH0K
ICNkZWZpbmUga2V4ZWNfaW5fcHJvZ3Jlc3MgZmFsc2UKICNlbmRpZiAvKiBDT05GSUdfS0VYRUNf
Q09SRSAqLwogCmRpZmYgLS1naXQgYS9rZXJuZWwva2V4ZWNfY29yZS5jIGIva2VybmVsL2tleGVj
X2NvcmUuYwppbmRleCAxNWQ3MGE5MGI1MGQuLjg4NTYwNDdiY2RjOCAxMDA2NDQKLS0tIGEva2Vy
bmVsL2tleGVjX2NvcmUuYworKysgYi9rZXJuZWwva2V4ZWNfY29yZS5jCkBAIC0xMjEzLDMgKzEy
MTMsNiBAQCB2b2lkIF9fd2VhayBhcmNoX2tleGVjX3Byb3RlY3RfY3Jhc2hrcmVzKHZvaWQpCiAK
IHZvaWQgX193ZWFrIGFyY2hfa2V4ZWNfdW5wcm90ZWN0X2NyYXNoa3Jlcyh2b2lkKQoge30KKwor
dm9pZCBfX2luaXQgX193ZWFrIGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCkKK3t9Ci0tIAoy
LjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpr
ZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
