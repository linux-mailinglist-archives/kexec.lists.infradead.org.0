Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60EC1ABB89
	for <lists+kexec@lfdr.de>; Thu, 16 Apr 2020 10:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vc9Mvi+x8DmiGwqQLCoMKEphhQfoVaxQQyy+Dqioxp0=; b=hOw5CVUOqLLcV1
	nsnWncqrwQvDzGVKTGbyQqA+IOneN0yeUvxTU8aiiX9X84BkciAVv7e6PhoqKpIr+wT9jKNYMGJla
	qVFGQmpaNqRPRIlWYouc9c/IowP/Akvj7BV1MKkK3zxk+c+9QGgifSHO1/KSJKKd0LQlFq550InzB
	+RqnCd8gvwCvtxDTxifyfb14ia6VpRJCs5yMJD18GhWPJhLb8BtwLSphRbtf+qnodLzFURwFJ9ZiH
	wU3lEjTO4FC6ggXVluT6yPoeB69TQNH07x0If/7m4JhhwNRnLv21t6UEodvPeaYwHhdas6GJ5nFek
	30yqSJtVFRla9Yp6RMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP08k-0003YX-8D; Thu, 16 Apr 2020 08:44:54 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP08e-0003Xm-07
 for kexec@lists.infradead.org; Thu, 16 Apr 2020 08:44:49 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 6DCC925B740;
 Thu, 16 Apr 2020 18:44:43 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 39D6B2615; Thu, 16 Apr 2020 10:44:41 +0200 (CEST)
Date: Thu, 16 Apr 2020 10:44:41 +0200
From: Simon Horman <horms@verge.net.au>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v2] arm: redefine OPT_APPEND and OPT_RAMDISK
Message-ID: <20200416084441.GA16024@vergenet.net>
References: <20200414085224.7069-1-l.stelmach@samsung.com>
 <CGME20200415105859eucas1p2db849d89aa9a338077a01784f73dad52@eucas1p2.samsung.com>
 <20200415105845.22067-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415105845.22067-1-l.stelmach@samsung.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_014448_188830_469225CF 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMTUsIDIwMjAgYXQgMTI6NTg6NDVQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBSZWRlZmluZSBPUFRfQVBQRU5EIHRvIGF2b2lkIGNsYXNoIHdpdGggT1BUX0tF
WEVDX1NZU0NBTExfQVVUTy4KPiBSZWRlZmluZSBPUFRfUkFNRElTSyB0byBhdm9pZCBzdWNoIHBy
b2JsZW1zIGluIHRoZSBmdXR1cmUKPiAKPiBTaWduZWQtb2ZmLWJ5OiDFgXVrYXN6IFN0ZWxtYWNo
IDxsLnN0ZWxtYWNoQHNhbXN1bmcuY29tPgoKSGkgxYF1a2FzeiwKCkkgYW0gc2xpZ2h0bHkgY29u
Y2VybmVkIHRoYXQgdGhpcyB3aWxsIGJyZWFrIHRoaW5ncyBmb3IgdXNlcnMuCkJ1dCBPVE9IIHBl
cmhhcHMgd2UgYWxyZWFkeSBicm9rZSB0aGluZ3Mgd2hlbiBhZGRpbmcgT1BUX0tFWEVDX1NZU0NB
TExfQVVUTy4KRG8geW91IGhhdmUgYW55IHRob3VnaHRzIG9uIHRoaXM/Cgo+IC0tLQo+ICBrZXhl
Yy9hcmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oIHwgNiArKystLS0KPiAga2V4ZWMvYXJj
aC9hcm0va2V4ZWMtekltYWdlLWFybS5jICAgICB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2tleGVjL2Fy
Y2gvYXJtL2luY2x1ZGUvYXJjaC9vcHRpb25zLmggYi9rZXhlYy9hcmNoL2FybS9pbmNsdWRlL2Fy
Y2gvb3B0aW9ucy5oCj4gaW5kZXggYWJiZjM0OS4uNmZhYmZiNyAxMDA2NDQKPiAtLS0gYS9rZXhl
Yy9hcmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oCj4gKysrIGIva2V4ZWMvYXJjaC9hcm0v
aW5jbHVkZS9hcmNoL29wdGlvbnMuaAo+IEBAIC00LDEyICs0LDEyIEBACj4gICNkZWZpbmUgT1BU
X0RUX05PX09MRF9ST09UCShPUFRfTUFYKzApCj4gICNkZWZpbmUgT1BUX0FSQ0hfTUFYCQkoT1BU
X01BWCsxKQo+ICAKPiAtI2RlZmluZSBPUFRfQVBQRU5ECSdhJwo+IC0jZGVmaW5lIE9QVF9SQU1E
SVNLCSdyJwo+ICAjZGVmaW5lIE9QVF9EVEIJCShPUFRfQVJDSF9NQVgrMCkKPiAgI2RlZmluZSBP
UFRfQVRBR1MJKE9QVF9BUkNIX01BWCsxKQo+ICAjZGVmaW5lIE9QVF9JTUFHRV9TSVpFCShPUFRf
QVJDSF9NQVgrMikKPiAgI2RlZmluZSBPUFRfUEFHRV9PRkZTRVQJKE9QVF9BUkNIX01BWCszKQo+
ICsjZGVmaW5lIE9QVF9BUFBFTkQJKE9QVF9BUkNIX01BWCs0KQo+ICsjZGVmaW5lIE9QVF9SQU1E
SVNLCShPUFRfQVJDSF9NQVgrNSkKPiAgCj4gIC8qIE9wdGlvbnMgcmVsZXZhbnQgdG8gdGhlIGFy
Y2hpdGVjdHVyZSAoZXhjbHVkaW5nIGxvYWRlci1zcGVjaWZpYyBvbmVzKSwKPiAgICogaW4gdGhp
cyBjYXNlIG5vbmU6Cj4gQEAgLTQ1LDcgKzQ1LDcgQEAKPiAgCXsgImltYWdlLXNpemUiLAkJMSwg
MCwgT1BUX0lNQUdFX1NJWkUgfSwgXAo+ICAJeyAicGFnZS1vZmZzZXQiLAkxLCAwLCBPUFRfUEFH
RV9PRkZTRVQgfSwKPiAgCj4gLSNkZWZpbmUgS0VYRUNfQUxMX09QVF9TVFIgS0VYRUNfQVJDSF9P
UFRfU1RSICJhOnI6czoiCj4gKyNkZWZpbmUgS0VYRUNfQUxMX09QVF9TVFIgS0VYRUNfQVJDSF9P
UFRfU1RSICIiCj4gIAo+ICBleHRlcm4gdW5zaWduZWQgaW50IGtleGVjX2FybV9pbWFnZV9zaXpl
Owo+ICAKPiBkaWZmIC0tZ2l0IGEva2V4ZWMvYXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5jIGIv
a2V4ZWMvYXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5jCj4gaW5kZXggMmE3ZWVhOS4uZDFhYThm
NiAxMDA2NDQKPiAtLS0gYS9rZXhlYy9hcmNoL2FybS9rZXhlYy16SW1hZ2UtYXJtLmMKPiArKysg
Yi9rZXhlYy9hcmNoL2FybS9rZXhlYy16SW1hZ2UtYXJtLmMKPiBAQCAtNDE4LDcgKzQxOCw3IEBA
IGludCB6SW1hZ2VfYXJtX2xvYWQoaW50IGFyZ2MsIGNoYXIgKiphcmd2LCBjb25zdCBjaGFyICpi
dWYsIG9mZl90IGxlbiwKPiAgCQl7ICJwYWdlLW9mZnNldCIsCTEsIDAsIE9QVF9QQUdFX09GRlNF
VCB9LAo+ICAJCXsgMCwgCQkJMCwgMCwgMCB9LAo+ICAJfTsKPiAtCXN0YXRpYyBjb25zdCBjaGFy
IHNob3J0X29wdGlvbnNbXSA9IEtFWEVDX0FSQ0hfT1BUX1NUUiAiYTpyOiI7Cj4gKwlzdGF0aWMg
Y29uc3QgY2hhciBzaG9ydF9vcHRpb25zW10gPSBLRVhFQ19BUkNIX09QVF9TVFIgIiI7Cj4gIAo+
ICAJLyoKPiAgCSAqIFBhcnNlIHRoZSBjb21tYW5kIGxpbmUgYXJndW1lbnRzCj4gLS0gCj4gMi4y
NS4wCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpr
ZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
