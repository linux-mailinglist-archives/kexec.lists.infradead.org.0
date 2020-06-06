Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D27B1F0721
	for <lists+kexec@lfdr.de>; Sat,  6 Jun 2020 16:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/GyqCamrHdnf59dUg91GnK48VXLYPO71XWt53LMO2E=; b=S46mnPtYvCR9vh
	e5PlhUa/Hd7j5ck4wpH0ebSs5+QZNguF9rlB1MwSYX/Aa7VNxRjsc3NH1PenW2TBlj3Fj2IyQ5pOb
	JTZ28H6BjqOwm1NlAnJ1XDYByQyrN+KE78G5y/dx2VXu69gl/BbhpIfv+L6fCN5oZOVRlc0u73Som
	yhHy7SKmtT6kUAKbeEXiQ46aW9cc1Gwxw/w4SwCZkQCwNmxj/mjnldm+iu/hLO1VBnw8UnRL/Slo0
	CivIyFMTLwtEjf5EOCuG3bTJefbp7iPbrZaZtpfr03Wum0uxnY90SNimoMa0WvT7gpD0+qHlXpgql
	QwlRWEDKG/nGuCRS7COw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jha7V-0007J0-L6; Sat, 06 Jun 2020 14:48:25 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jha7S-0007HQ-9e
 for kexec@lists.infradead.org; Sat, 06 Jun 2020 14:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/xs33c/qs8hj0hrkOprJxib4gZLfJpTK5zbyz+FH0As=; b=owHFB5ESLiEIfIU/5k0oPykzV
 LnCnhm1DUSGf1SSf2A68gz3hox6e6KJ6pBn/Oh6VeSGpHpeajNXTTeGxJ+ep30HmmsfemV8cJehJq
 /7LhMRYWDn5oLN71/LSErraqzMGYJXLDQc3aae3HGLWogVlnEDozN/oipVj0esSSt4kMvck4BPzk2
 +cc6qr3yRKeVb/SsH3PCKjKGpEqG1sUPUmLtozvaR3cTfLGj0eLOiV8k5zjEKfU24FB9/oGwSllcH
 DI5AI2cD5XAvFTLcIiD4eVv7fIA1GRGOerBix/68JlhOakpzJBf6UoKqmKwqbTg19QMPm1s35NZAC
 VB1jvXr/g==;
Received: from flint.armlinux.org.uk
 ([fd8f:7570:feb6:1:201:2ff:fe14:8fad]:33336)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jha7M-0004ds-3A; Sat, 06 Jun 2020 15:48:16 +0100
Received: from rmk by flint.armlinux.org.uk with local (Exim 4.90_1)
 (envelope-from <rmk@flint.armlinux.org.uk>)
 id 1jha7H-00059F-8q; Sat, 06 Jun 2020 15:48:11 +0100
Date: Sat, 6 Jun 2020 15:48:08 +0100
From: Russell King <rmk@armlinux.org.uk>
To: Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH] arm: Increase zImage length after getting the tag
Message-ID: <20200606144807.GM1538@flint.armlinux.org.uk>
References: <CGME20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd@eucas1p1.samsung.com>
 <20200602104034.31256-1-l.stelmach@samsung.com>
 <20200606132319.GC24391@vergenet.net>
 <20200606144031.GL1538@flint.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200606144031.GL1538@flint.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_074822_335247_2E26CCA2 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kexec@lists.infradead.org,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
 b.zolnierkie@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMDYsIDIwMjAgYXQgMDM6NDA6MzFQTSArMDEwMCwgUnVzc2VsbCBLaW5nIHdy
b3RlOgo+IE9uIFNhdCwgSnVuIDA2LCAyMDIwIGF0IDAzOjIzOjE5UE0gKzAyMDAsIFNpbW9uIEhv
cm1hbiB3cm90ZToKPiA+IE9uIFR1ZSwgSnVuIDAyLCAyMDIwIGF0IDEyOjQwOjM0UE0gKzAyMDAs
IMWBdWthc3ogU3RlbG1hY2ggd3JvdGU6Cj4gPiA+IEluY3JlYXNlIHRoZSBzaXplIG9mIHRoZSB6
SW1hZ2UgYWZ0ZXIgc2Vla2luZyBmb3IgdGhlIHRhZyB0byBhdm9pZAo+ID4gPiByZWFkaW5nIHBh
c3QgdGhlIGVuZCBvZiB0aGUgc3VwcGxpZWQgYnVmZmVyIHNob3VsZCB0aGVyZSBiZSBub3QgdGFn
Cj4gPiA+IGluIHRoZSB6SW1hZ2UuCj4gPiA+IAo+ID4gPiBGaXhlczogZjU3ZjBiZjg5NzVkMjRm
ZTFlN2M0OTM2ZmRmYjVjM2IxMjNhYjc1Zgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiDFgXVrYXN6IFN0
ZWxtYWNoIDxsLnN0ZWxtYWNoQHNhbXN1bmcuY29tPgo+ID4gPiBDYzogUnVzc2VsbCBLaW5nIDxy
bWtAYXJtbGludXgub3JnLnVrPgo+ID4gCj4gPiBUaGFua3MgxYF1a2FzeiwKPiAKPiBTb3JyeSwg
SSd2ZSBub3Qgc2VlbiB0aGUgcGF0Y2gsIHNvIGl0IGhhc24ndCBiZWVuIHJldmlld2VkLiAgVGhp
cyBpcyB0aGUKPiBmaXJzdCBJJ20gYXdhcmUgb2YgaXRzIGV4aXN0ZW5jZS4KCkZvdW5kIGl0IC0g
aXQncyBmaW5lLgoKLS0gClJ1c3NlbGwgS2luZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhl
Ywo=
