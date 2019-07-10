Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4226495C
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 17:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mtPGnO+K5erLUa9vAfiplRHIsNaPvwQLYiDEao3mXiY=; b=NgVx480BPVHD6X0QlCV7qqPKw
	P/3jp879vg7DklPBcto1gIJxRtcDm0YDZFEtXcOzG8tGpPq+N6OfwFWoVYK8eYs36TQSpcG/xS4Ar
	3Q5sjIGDuOmdKzTMz+2NbrLkL+vlhw654bxx9s2wFlMRpnI2FABzpp8jZnswmvrnGx9UG8T6FRrDd
	nWyVHHqPOt/klZXw/NP4i37DENaktx3vVslGt+3LPx/1eySX57OjjCTKu6a1XdZuhkTaQ4grtO335
	hoAEikh9DvQFI2j17tjawkxRQLbZm09XjWOFPUmZ1XZK3p8g1DWz14tmAtnTcJU1ZcfQ4OoiSz1YD
	yaJs2CBpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEEE-00057q-6Z; Wed, 10 Jul 2019 15:09:54 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEEA-00057G-0i
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 15:09:51 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45kMzq4HnSz9vBLM;
 Wed, 10 Jul 2019 17:09:43 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=FQ1YsnkL; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id hR2xNT49vkz7; Wed, 10 Jul 2019 17:09:43 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45kMzq3CXcz9vBKx;
 Wed, 10 Jul 2019 17:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1562771383; bh=ynyoyz2a8mhTxPuWg1JPhy/+QcneVYZY5CdOe1W9BSs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=FQ1YsnkLmkXPi0eBgRQBEmmtQzM1ewj/PpR8hJx/Mf0pigCM/IqCCXOltWyIaYP3H
 DKDy8CCjNu1XIasaFnr26sfcRTmJY/uRki3/biFYanDbp4P2/7g4BvWlo0xMLCqzhh
 skOzNO9/NsLClo5WGensnYmteGCtMe8IRY/XCDp4=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 465488B841;
 Wed, 10 Jul 2019 17:09:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id DfteW-yXR2Ge; Wed, 10 Jul 2019 17:09:42 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B0A468B810;
 Wed, 10 Jul 2019 17:09:32 +0200 (CEST)
Subject: Re: [PATCH v3 5/7] kexec_elf: remove elf_addr_to_cpu macro
To: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
References: <20190710142944.2774-1-svens@stackframe.org>
 <20190710142944.2774-6-svens@stackframe.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <49206784-009c-391b-5f9a-11e9b1de930b@c-s.fr>
Date: Wed, 10 Jul 2019 17:09:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710142944.2774-6-svens@stackframe.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_080950_354784_A06202F3 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: deller@gmx.de, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpMZSAxMC8wNy8yMDE5IMOgIDE2OjI5LCBTdmVuIFNjaG5lbGxlIGEgw6ljcml0wqA6Cj4gSXQg
aGFkIG9ubHkgb25lIGRlZmluaXRpb24sIHNvIGp1c3QgdXNlIHRoZSBmdW5jdGlvbiBkaXJlY3Rs
eS4KCkl0IGhhZCBvbmx5IG9uZSBkZWZpbml0aW9uIGJlY2F1c2UgaXQgd2FzIGZvciBwcGM2NCBv
bmx5LgpCdXQgYXMgZmFyIGFzIEkgdW5kZXJzdGFuZCAoYXQgbGVhc3QgZnJvbSB0aGUgbmFtZSBv
ZiB0aGUgbmV3IGZpbGUpLCB5b3UgCndhbnQgaXQgdG8gYmUgZ2VuZXJpYywgZG9uJ3QgeW91ID8g
VGhlcmVmb3JlIEkgZ2V0IG9uIDMyIGJpdHMgaXQgd291bGQgCmJlIGVsZjMyX3RvX2NwdSgpLgoK
Q2hyaXN0b3BoZQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdmVuIFNjaG5lbGxlIDxzdmVuc0BzdGFj
a2ZyYW1lLm9yZz4KPiAtLS0KPiAgIGtlcm5lbC9rZXhlY19lbGYuYyB8IDIwICsrKysrKysrKy0t
LS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEva2VybmVsL2tleGVjX2VsZi5jIGIva2VybmVsL2tleGVj
X2VsZi5jCj4gaW5kZXggNzBkMzFiOGZlZWFlLi45OWU2ZDYzYjVkZmMgMTAwNjQ0Cj4gLS0tIGEv
a2VybmVsL2tleGVjX2VsZi5jCj4gKysrIGIva2VybmVsL2tleGVjX2VsZi5jCj4gQEAgLTgsOCAr
OCw2IEBACj4gICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L3R5
cGVzLmg+Cj4gICAKPiAtI2RlZmluZSBlbGZfYWRkcl90b19jcHUJZWxmNjRfdG9fY3B1Cj4gLQo+
ICAgI2lmbmRlZiBFbGZfUmVsCj4gICAjZGVmaW5lIEVsZl9SZWwJCUVsZjY0X1JlbAo+ICAgI2Vu
ZGlmIC8qIEVsZl9SZWwgKi8KPiBAQCAtMTQzLDkgKzE0MSw5IEBAIHN0YXRpYyBpbnQgZWxmX3Jl
YWRfZWhkcihjb25zdCBjaGFyICpidWYsIHNpemVfdCBsZW4sIHN0cnVjdCBlbGZoZHIgKmVoZHIp
Cj4gICAJZWhkci0+ZV90eXBlICAgICAgPSBlbGYxNl90b19jcHUoZWhkciwgYnVmX2VoZHItPmVf
dHlwZSk7Cj4gICAJZWhkci0+ZV9tYWNoaW5lICAgPSBlbGYxNl90b19jcHUoZWhkciwgYnVmX2Vo
ZHItPmVfbWFjaGluZSk7Cj4gICAJZWhkci0+ZV92ZXJzaW9uICAgPSBlbGYzMl90b19jcHUoZWhk
ciwgYnVmX2VoZHItPmVfdmVyc2lvbik7Cj4gLQllaGRyLT5lX2VudHJ5ICAgICA9IGVsZl9hZGRy
X3RvX2NwdShlaGRyLCBidWZfZWhkci0+ZV9lbnRyeSk7Cj4gLQllaGRyLT5lX3Bob2ZmICAgICA9
IGVsZl9hZGRyX3RvX2NwdShlaGRyLCBidWZfZWhkci0+ZV9waG9mZik7Cj4gLQllaGRyLT5lX3No
b2ZmICAgICA9IGVsZl9hZGRyX3RvX2NwdShlaGRyLCBidWZfZWhkci0+ZV9zaG9mZik7Cj4gKwll
aGRyLT5lX2VudHJ5ICAgICA9IGVsZjY0X3RvX2NwdShlaGRyLCBidWZfZWhkci0+ZV9lbnRyeSk7
Cj4gKwllaGRyLT5lX3Bob2ZmICAgICA9IGVsZjY0X3RvX2NwdShlaGRyLCBidWZfZWhkci0+ZV9w
aG9mZik7Cj4gKwllaGRyLT5lX3Nob2ZmICAgICA9IGVsZjY0X3RvX2NwdShlaGRyLCBidWZfZWhk
ci0+ZV9zaG9mZik7Cj4gICAJZWhkci0+ZV9mbGFncyAgICAgPSBlbGYzMl90b19jcHUoZWhkciwg
YnVmX2VoZHItPmVfZmxhZ3MpOwo+ICAgCWVoZHItPmVfcGhlbnRzaXplID0gZWxmMTZfdG9fY3B1
KGVoZHIsIGJ1Zl9laGRyLT5lX3BoZW50c2l6ZSk7Cj4gICAJZWhkci0+ZV9waG51bSAgICAgPSBl
bGYxNl90b19jcHUoZWhkciwgYnVmX2VoZHItPmVfcGhudW0pOwo+IEBAIC0xOTAsMTggKzE4OCwx
OCBAQCBzdGF0aWMgaW50IGVsZl9yZWFkX3BoZHIoY29uc3QgY2hhciAqYnVmLCBzaXplX3QgbGVu
LAo+ICAgCWJ1Zl9waGRyID0gKHN0cnVjdCBlbGZfcGhkciAqKSBwYnVmOwo+ICAgCj4gICAJcGhk
ci0+cF90eXBlICAgPSBlbGYzMl90b19jcHUoZWxmX2luZm8tPmVoZHIsIGJ1Zl9waGRyLT5wX3R5
cGUpOwo+IC0JcGhkci0+cF9vZmZzZXQgPSBlbGZfYWRkcl90b19jcHUoZWxmX2luZm8tPmVoZHIs
IGJ1Zl9waGRyLT5wX29mZnNldCk7Cj4gLQlwaGRyLT5wX3BhZGRyICA9IGVsZl9hZGRyX3RvX2Nw
dShlbGZfaW5mby0+ZWhkciwgYnVmX3BoZHItPnBfcGFkZHIpOwo+IC0JcGhkci0+cF92YWRkciAg
PSBlbGZfYWRkcl90b19jcHUoZWxmX2luZm8tPmVoZHIsIGJ1Zl9waGRyLT5wX3ZhZGRyKTsKPiAr
CXBoZHItPnBfb2Zmc2V0ID0gZWxmNjRfdG9fY3B1KGVsZl9pbmZvLT5laGRyLCBidWZfcGhkci0+
cF9vZmZzZXQpOwo+ICsJcGhkci0+cF9wYWRkciAgPSBlbGY2NF90b19jcHUoZWxmX2luZm8tPmVo
ZHIsIGJ1Zl9waGRyLT5wX3BhZGRyKTsKPiArCXBoZHItPnBfdmFkZHIgID0gZWxmNjRfdG9fY3B1
KGVsZl9pbmZvLT5laGRyLCBidWZfcGhkci0+cF92YWRkcik7Cj4gICAJcGhkci0+cF9mbGFncyAg
PSBlbGYzMl90b19jcHUoZWxmX2luZm8tPmVoZHIsIGJ1Zl9waGRyLT5wX2ZsYWdzKTsKPiAgIAo+
ICAgCS8qCj4gICAJICogVGhlIGZvbGxvd2luZyBmaWVsZHMgaGF2ZSBhIHR5cGUgZXF1aXZhbGVu
dCB0byBFbGZfQWRkcgo+ICAgCSAqIGJvdGggaW4gMzIgYml0IGFuZCA2NCBiaXQgRUxGLgo+ICAg
CSAqLwo+IC0JcGhkci0+cF9maWxlc3ogPSBlbGZfYWRkcl90b19jcHUoZWxmX2luZm8tPmVoZHIs
IGJ1Zl9waGRyLT5wX2ZpbGVzeik7Cj4gLQlwaGRyLT5wX21lbXN6ICA9IGVsZl9hZGRyX3RvX2Nw
dShlbGZfaW5mby0+ZWhkciwgYnVmX3BoZHItPnBfbWVtc3opOwo+IC0JcGhkci0+cF9hbGlnbiAg
PSBlbGZfYWRkcl90b19jcHUoZWxmX2luZm8tPmVoZHIsIGJ1Zl9waGRyLT5wX2FsaWduKTsKPiAr
CXBoZHItPnBfZmlsZXN6ID0gZWxmNjRfdG9fY3B1KGVsZl9pbmZvLT5laGRyLCBidWZfcGhkci0+
cF9maWxlc3opOwo+ICsJcGhkci0+cF9tZW1zeiAgPSBlbGY2NF90b19jcHUoZWxmX2luZm8tPmVo
ZHIsIGJ1Zl9waGRyLT5wX21lbXN6KTsKPiArCXBoZHItPnBfYWxpZ24gID0gZWxmNjRfdG9fY3B1
KGVsZl9pbmZvLT5laGRyLCBidWZfcGhkci0+cF9hbGlnbik7Cj4gICAKPiAgIAlyZXR1cm4gZWxm
X2lzX3BoZHJfc2FuZShwaGRyLCBsZW4pID8gMCA6IC1FTk9FWEVDOwo+ICAgfQo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBs
aXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
