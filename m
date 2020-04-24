Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6826F1B7118
	for <lists+kexec@lfdr.de>; Fri, 24 Apr 2020 11:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlyXHaUlsREWEPPP4pYJr5Rpksk6IhCS5uET/0N1Crk=; b=nfjpmG8Yi3Dwc1
	RxGFLlO5ow9MP2zMGE4tGyDZZqb1BXt3T87ja93kgAC5uusN6NsJfuFQhEWCKy6B8kNnts52VjpAg
	/szAZ/j6TD4t3BXnO4dg+8RIu6mMTHPC3iJwd+h3dEdY0jaCjDmHkniqbg6rvBFixXB9MIFIhnscz
	ja8DcctP7fPt4Xr2sm5+TIWR5vGRCrBGEAlFdkHJjATM4bsFIdzefFZwvnUzhzB9e/vvEsiSnniJC
	pwAne75SAC3v+XzQ3cwvewFyBltuZ0TZe9HlEkN9NiUj4AxOMqJE+URpbD7mhL+1U93E2eUKIahFR
	2m+Hh/ECJ2bCJGAOgVIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRuou-0008Ao-Ku; Fri, 24 Apr 2020 09:40:28 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRuor-00089Q-G2
 for kexec@lists.infradead.org; Fri, 24 Apr 2020 09:40:26 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A4A1925B765;
 Fri, 24 Apr 2020 19:40:20 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 9F19D19DB; Fri, 24 Apr 2020 11:40:18 +0200 (CEST)
Date: Fri, 24 Apr 2020 11:40:18 +0200
From: Simon Horman <horms@verge.net.au>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v3] arm: redefine OPT_APPEND and OPT_RAMDISK
Message-ID: <20200424094016.GA31989@vergenet.net>
References: <20200422080151.GA32200@vergenet.net>
 <CGME20200422194517eucas1p11d2ab9f4f68b891ea963633045f31ce9@eucas1p1.samsung.com>
 <20200422194504.14775-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422194504.14775-1-l.stelmach@samsung.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_024025_683689_10DDC232 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec@lists.infradead.org, svens@stackframe.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMjIsIDIwMjAgYXQgMDk6NDU6MDRQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBSZWRlZmluZSBPUFRfQVBQRU5EIHRvIGF2b2lkIGNsYXNoIHdpdGggT1BUX0tF
WEVDX1NZU0NBTExfQVVUTy4KPiBSZWRlZmluZSBPUFRfUkFNRElTSyB0byBhdm9pZCBzdWNoIHBy
b2JsZW1zIGluIHRoZSBmdXR1cmUKPiAKPiBNaW5vciBjbGVhbnVwIGluIEhQUEEgdG9vLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+
Cj4gLS0tCj4gU3ZlbiwKPiAKPiBJIHJlbW92ZWQgc29tZSBhcmNoIHNwZWNpZmljIHNob3J0IG9w
dGlvbnMgd2hpY2ggdG8gbWUgZG9uJ3Qgc2VlbQo+IGJlIGhhbmRsZWQgaW4gdGhlIGdldG9wdF9s
b25nKCkgbG9vcCBpbiBrZXhlYy1lbGYtaHBwYS5jLiBQbGVhc2UgdGVsbCB1cywKPiBpZiBpdCBk
b2Vzbid0IGJyZWFrIGFueXRoaW5nLgoKVGhhbmtzIMWBdWthc3osCgpJIGhhdmUgYXBwbGllZCB0
aGlzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4
ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
