Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C551E93D
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 09:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3a3Ha0Ei+91iMJOv/MCovwFgb8GGzLzqn60HUyeEhI=; b=giXkbdqlmPLkmC
	ES/8fFfzBrg3CgMi4b1scOMViL7ArBEobSHduGjsR1G/CvL3j3SWytWnN7ISfPhahAlvtQPNfNmNz
	BNQatg10OhykfHIwVPXdzLLZnCGTBBLcKT2pDM7Ru8d0Z8kWZrZHhTGp2/PpBf0mXPb7Od7YV0K1Z
	ZRl4Hrz02ZAFjD/80IIzN1UU6XIlrT5vCpKza3/T0Wmqo90Kwu5nSKKjISS2y3aOtqhOWKw3A9XW3
	ZDbkBVtgg25Mg8csATUPFLiPPDkSSO7n+AKWq4YOZFf8FdkMQ6NedrzavYPymlJUtRZjCh+OI9YD/
	v66XK4Eq/0llYwVhytxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQoWj-00023Q-7W; Wed, 15 May 2019 07:40:37 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQoWf-00022q-VW
 for kexec@lists.infradead.org; Wed, 15 May 2019 07:40:35 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 4EB1425AEAD;
 Wed, 15 May 2019 17:40:30 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 1B6E4E21335; Wed, 15 May 2019 09:40:28 +0200 (CEST)
Date: Wed, 15 May 2019 09:40:28 +0200
From: Simon Horman <horms@verge.net.au>
To: David Woodhouse <dwmw2@infradead.org>
Subject: Re: [PATCH] xen: Avoid overlapping segments in low memory
Message-ID: <20190515074027.fzvcrpn3vtwmwrx5@verge.net.au>
References: <3d9c5c7c501b4d97feffae2bdb6fc84fb40e144a.camel@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d9c5c7c501b4d97feffae2bdb6fc84fb40e144a.camel@infradead.org>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_004034_169280_FFA74B58 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: kexec <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjgsIDIwMTkgYXQgMDE6NTI6MTJQTSArMDMwMCwgRGF2aWQgV29vZGhvdXNl
IHdyb3RlOgo+IEZyb206IERhdmlkIFdvb2Rob3VzZSA8ZHdtd0BhbWF6b24uY28udWs+Cj4gCj4g
VW5saWtlIExpbnV4IHdoaWNoIGNyZWF0ZXMgYSBmdWxsIGlkZW50aXR5IG1hcHBpbmcsIFhlbiBv
bmx5IG1hcHMgdGhvc2UKPiBzZWdtZW50cyB3aGljaCBhcmUgZXhwbGljaXRseSByZXF1ZXN0ZWQu
IFRoZXJlZm9yZSwgeGVuX2tleGVjX2xvYWQoKQo+IHNpbGVudGx5IGFkZHMgaW4gYSBzZWdtZW50
IGZyb20gemVybyB0byAxTWlCIHRvIGVuc3VyZSB0aGF0IFZHQSBtZW1vcnkKPiBhbmQgb3RoZXIg
dGhpbmdzIGFyZSBhY2Nlc3NpYmxlLgo+IAo+IEhvd2V2ZXIsIHRoaXMgZG9lc24ndCB3b3JrIHdo
ZW4gdGhlcmUgYXJlIGFscmVhZHkgc2VnbWVudHMgdG8gYmUgbG9hZGVkCj4gdW5kZXIgMU1pQiwg
YmVjYXVzZSB0aGUgb3ZlcmxhcCBjYXVzZXMgWGVuIHRvIHJlamVjdCB0aGUga2V4ZWNfbG9hZC4K
PiAKPiBCZSBtb3JlIGNhcmVmdWwgYW5kIGp1c3QgaW5maWxsIHRoZSByYW5nZXMgd2hpY2ggYXJl
IHJlcXVpcmVkIGluc3RlYWQKPiBvZiBuYcOvdmVseSBhZGRpbmcgYSBmdWxsIDAtMU1pQiBzZWdt
ZW50IGF0IHRoZSBlbmQgb2YgdGhlIGxpc3QuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgV29v
ZGhvdXNlIDxkd213QGFtYXpvbi5jby51az4KClRoYW5rcyBEYXZpZCwKCmFwcGxpZWQuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5n
IGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
