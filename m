Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680F130B17
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOu2Mu725Yd4d5RUuU0pQn/bsVLCxX7onGYhclCDZsA=; b=HB1fwz2TN8VIJI
	OM24Yl2q2s0rD47wh6nmVxU0IvO5t+dbSdUg8+YefmoCPqx0BUH8keViEg3rbp7rCjBbp1+w7hyvw
	DrRPQDmuEIU+13/a3Qa1gDd6bJ0mn9w7NEn8lgzsLHxIV0YMwtuzJQWhqhQk9XAQc6VETSQ7hZ+5o
	N7aE/cwqdUeuaBXX3C1qolEZNTY60AS2KYtURB69MMFhevvfuG8IMWA85df2R0zNTdJIOCMqgvIgM
	oZjIRwpCmf5tizWxWLNNAgIT3z2O+OW5roZ+74blolOCt4C2xiVakjXvqdpxBjCS9f98aappuoW9m
	ozOpx/hMqFhcEyNmk3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdW1-0007TQ-S1; Fri, 31 May 2019 09:07:57 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdVy-0007Mt-KB
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:07:56 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 1360625AE77;
 Fri, 31 May 2019 19:07:50 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 4CD159401DB; Fri, 31 May 2019 11:07:46 +0200 (CEST)
Date: Fri, 31 May 2019 11:07:46 +0200
From: Simon Horman <horms@verge.net.au>
To: Varad Gautam <vrd@amazon.de>
Subject: Re: [PATCH 1/3] xen: Avoid overlapping segments in low memory
Message-ID: <20190531090746.ozf6kyezmj77gqyo@verge.net.au>
References: <1558423948-24583-1-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558423948-24583-1-git-send-email-vrd@amazon.de>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_020754_813888_67F0F6BD 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec@lists.infradead.org, David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMDk6MzI6MjZBTSArMDIwMCwgVmFyYWQgR2F1dGFtIHdy
b3RlOgo+IEZyb206IERhdmlkIFdvb2Rob3VzZSA8ZHdtd0BhbWF6b24uY28udWs+Cj4gCj4gVW5s
aWtlIExpbnV4IHdoaWNoIGNyZWF0ZXMgYSBmdWxsIGlkZW50aXR5IG1hcHBpbmcsIFhlbiBvbmx5
IG1hcHMgdGhvc2UKPiBzZWdtZW50cyB3aGljaCBhcmUgZXhwbGljaXRseSByZXF1ZXN0ZWQuIFRo
ZXJlZm9yZSwgeGVuX2tleGVjX2xvYWQoKQo+IHNpbGVudGx5IGFkZHMgaW4gYSBzZWdtZW50IGZy
b20gemVybyB0byAxTWlCIHRvIGVuc3VyZSB0aGF0IFZHQSBtZW1vcnkKPiBhbmQgb3RoZXIgdGhp
bmdzIGFyZSBhY2Nlc3NpYmxlLgo+IAo+IEhvd2V2ZXIsIHRoaXMgZG9lc24ndCB3b3JrIHdoZW4g
dGhlcmUgYXJlIGFscmVhZHkgc2VnbWVudHMgdG8gYmUgbG9hZGVkCj4gdW5kZXIgMU1pQiwgYmVj
YXVzZSB0aGUgb3ZlcmxhcCBjYXVzZXMgWGVuIHRvIHJlamVjdCB0aGUga2V4ZWNfbG9hZC4KPiAK
PiBCZSBtb3JlIGNhcmVmdWwgYW5kIGp1c3QgaW5maWxsIHRoZSByYW5nZXMgd2hpY2ggYXJlIHJl
cXVpcmVkIGluc3RlYWQKPiBvZiBuYcOvdmVseSBhZGRpbmcgYSBmdWxsIDAtMU1pQiBzZWdtZW50
IGF0IHRoZSBlbmQuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgV29vZGhvdXNlIDxkd213QGFt
YXpvbi5jby51az4KClRoaXMgcGF0Y2ggYXBwZWFycyB0byBiZSBwcmVzZW50IGluIHRoZSBrZXhl
Yy10b29scyB0cmVlIGFzOgoKZWZmNTMwODk1MjNjIHhlbjogQXZvaWQgb3ZlcmxhcHBpbmcgc2Vn
bWVudHMgaW4gbG93IG1lbW9yeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
