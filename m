Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2851B398C
	for <lists+kexec@lfdr.de>; Wed, 22 Apr 2020 10:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNlvqT8vTvnJ90gi2Ys1gTkRPrWDWvyz6SU5qyEBnuY=; b=DyC/xboaE0z1hY
	/BnOTNshQ7vlpiS5IL6eKwf+dpTbisd0shEI7NnI1hlDIv0x5sKwwxXeR1gDD4lBY9cdKVQjEp/ZP
	44iHX9wKX4OMa66R7ZyQIG8oczxtlZVCksCslG0SVHiWAdcgb9CNYOg4C1+f6aCSRQ52usrzNr1mh
	ckE6GEY3APawHHaxfXiJNvkXGzadUBoqDwKlvC+q3D9kjO8nxMFmk0ZfYdkWEC4W1D6W+QHCEJprA
	DDZGz9aXzHfcsCu5bZWI8+GDjWzknf2yO9osMSH3bmXDP2+/0f2S6+aTVhl1AEVVQj8Maa+IBrdck
	PWe/h61fs2Vdbs5q4Acw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAKc-0002Qq-Ms; Wed, 22 Apr 2020 08:02:06 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAKY-0002Oo-Ut
 for kexec@lists.infradead.org; Wed, 22 Apr 2020 08:02:04 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id F3E3D25B80B;
 Wed, 22 Apr 2020 18:01:58 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 082A6DF4; Wed, 22 Apr 2020 10:01:57 +0200 (CEST)
Date: Wed, 22 Apr 2020 10:01:57 +0200
From: Simon Horman <horms@verge.net.au>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v2] arm: redefine OPT_APPEND and OPT_RAMDISK
Message-ID: <20200422080151.GA32200@vergenet.net>
References: <20200416084441.GA16024@vergenet.net>
 <20200414085224.7069-1-l.stelmach@samsung.com>
 <CGME20200415105859eucas1p2db849d89aa9a338077a01784f73dad52@eucas1p2.samsung.com>
 <20200415105845.22067-1-l.stelmach@samsung.com>
 <dleftjmu76ns60.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftjmu76ns60.fsf%l.stelmach@samsung.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_010203_150531_6D6AC1F0 
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

T24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMDQ6MzM6MTFQTSArMDIwMCwgTHVrYXN6IFN0ZWxtYWNo
IHdyb3RlOgo+ID4gT24gV2VkLCBBcHIgMTUsIDIwMjAgYXQgMTI6NTg6NDVQTSArMDIwMCwgxYF1
a2FzeiBTdGVsbWFjaCB3cm90ZToKPiA+PiBSZWRlZmluZSBPUFRfQVBQRU5EIHRvIGF2b2lkIGNs
YXNoIHdpdGggT1BUX0tFWEVDX1NZU0NBTExfQVVUTy4KPiA+PiBSZWRlZmluZSBPUFRfUkFNRElT
SyB0byBhdm9pZCBzdWNoIHByb2JsZW1zIGluIHRoZSBmdXR1cmUKPiA+Pgo+ID4+IFNpZ25lZC1v
ZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2ggYXQgc2Ftc3VuZy5jb20+Cj4gPgo+
ID4gSSBhbSBzbGlnaHRseSBjb25jZXJuZWQgdGhhdCB0aGlzIHdpbGwgYnJlYWsgdGhpbmdzIGZv
ciB1c2Vycy4KPiA+IEJ1dCBPVE9IIHBlcmhhcHMgd2UgYWxyZWFkeSBicm9rZSB0aGluZ3Mgd2hl
biBhZGRpbmcKPiA+IE9QVF9LRVhFQ19TWVNDQUxMX0FVVE8uCj4gPiBEbyB5b3UgaGF2ZSBhbnkg
dGhvdWdodHMgb24gdGhpcz8KPiAKPiBJIGFtIGF3YXJlIG9mIHRoaXMsIGJ1dCB0aGUgY3VycmVu
dCBhcHBlYXJzIHRvIGJlIGJyb2tlbiBtb3JlLiBXaGVuIEkKPiB3YXMgdXNpbmcgJy1hJyBpdCBk
aWRuJ3Qgd29yayBhcyBhZHZlcnRpc2VkIGluIHRoZSB1c2FnZSBtZXNzYWdlLiBTaG9ydAo+ICph
cmNoKiBvcHRpb25zIGFyZW4ndCBkb2N1bWVudGVkIHRoZXJlLCBzbyBJIHN1cHBvc2UgbW9zdCBw
ZW9wbGUgZGlkbid0Cj4gdXNlIHRoZW0uIEFSTSBpcyB0aGUgb25seSBhcmNoaXRlY3R1cmUgdGhh
dCBzdXBwb3J0cyBzaG9ydCBvcHRpb25zIGJ5Cj4gZGVmaW5pbmcgT1BUXyogYXMgY2hhcmFjdGVy
cy4gSFBQQSBhcHBlYXJzIHRvIGJlIHVzaW5nIHRoZW0gaW4gdGhlCj4gb3B0c3RyaW5nIChjb3Bp
ZWQgZnJvbSBBUk0/KSBidXQgbm90IGluIE9QVF8qLiBXb3VsZCB5b3UgbGlrZSBtZSB0bwo+IGNs
ZWFuIHRoaXMgdXAgdG9vIGluIHYzPwo+IAo+IEluIHN1bW1hcnk6IHVuZG9jdW1lbnRlZCwgb24g
b25lIHBsYXRmb3JtLgo+IAo+IFAuUy4gUGxlYXNlLCBjYyBtZS4gSSBhbSBub3Qgc3Vic2NyaWJl
ZCB0byB0aGUgbGlzdC4KClRoYW5rcyDFgXVrYXN6LAoKSSB0YWtlIHlvdXIgcG9pbnQgd2l0aCBy
ZWdhcmRzIHRvIHRoZXNlIGZlYXR1cmVzIGJlaW5nIHVuZG9jdW1lbnRlZC4KQW5kIEkgdGhpbmsg
dGhlIGV4dHJhIGNsZWFuLXVwIHlvdSBzdWdnZXN0IHNvdW5kcyBnb29kLgpDb3VsZCB5b3UgcG9z
dCBhIHYzIHdpdGggdGhhdCBpbmNsdWRlZD8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVj
Cg==
