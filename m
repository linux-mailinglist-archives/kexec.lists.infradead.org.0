Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2530B1F0711
	for <lists+kexec@lfdr.de>; Sat,  6 Jun 2020 16:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRkrWAOI0mnAJeL8csBUQF7ZjCPMvdiIhquq0C9cdaw=; b=ihAeRmECSsoKcD
	MYx+L52th/biXeyiWTmuOyOF58eCA4mwD3OsuKFuOyI3Si9g08d2biv1hkkKDUPch3QRiANIFPkwx
	I/9ODFt21HTWh2MMkifOMvJF3JZ+1jCt86Z/DpKcOXYY6VSgZdJPYm1t5idYvP1ICMgefvwvMUPHm
	jm68Eezy+p4IcZ5bU9XXX1ALcryyIjwc07SJ0sDgTex7kua6AL5aJ/0aC9wsgI/ESOvx2TrrzdUeI
	5ww3488t2DDe59ZFw/8ud9YZfxj0McA5Jng0Ku2M1aHo8yF8EajZQursylOHCscYALzbwVtQAPTy6
	Wkoztph6Fn0hql9cUaAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jha0D-0003fs-Bp; Sat, 06 Jun 2020 14:40:53 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jha08-0003dF-OW
 for kexec@lists.infradead.org; Sat, 06 Jun 2020 14:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dmS2v1N7fjnfKQVV2tOQT6aNqvDOJzQfL52H11J8cfg=; b=dM1lz0rQiolYOpXi+L2xxLey/
 nnr6in3n5KBW0500fD+PwwMOz4zXVp8MEgCSFxl4MTGTZuo9sBCns1xv/U1nyLlsYWu4tnnYV//c8
 7Dw97sWL2s0nrC+Ajg2Wgyae1Tbo0f8AFgpGSJvN+cq3lRYUoZpkk5X/UeCicX8vAda6nJA0MnHb9
 af4N7fs3Oy5Hec3q6l3uNng7Lr3X/nELyHmtwqT/PsMv66ba5f9cBFQw3H1xGxUvugLEvGGGATEx6
 xKd70WvTNsJVHdk1ktk8CdjdJ9E3njeuWxwsWSpb6/ZyudlljHobs6to5DplNLHrPZFUMZWM5Uv2b
 Ow/t7MsXA==;
Received: from flint.armlinux.org.uk
 ([2002:4e20:1eda:1:201:2ff:fe14:8fad]:50064)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jhZzy-0004ch-QG; Sat, 06 Jun 2020 15:40:38 +0100
Received: from rmk by flint.armlinux.org.uk with local (Exim 4.90_1)
 (envelope-from <rmk@flint.armlinux.org.uk>)
 id 1jhZzt-00057G-Od; Sat, 06 Jun 2020 15:40:33 +0100
Date: Sat, 6 Jun 2020 15:40:31 +0100
From: Russell King <rmk@armlinux.org.uk>
To: Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH] arm: Increase zImage length after getting the tag
Message-ID: <20200606144031.GL1538@flint.armlinux.org.uk>
References: <CGME20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd@eucas1p1.samsung.com>
 <20200602104034.31256-1-l.stelmach@samsung.com>
 <20200606132319.GC24391@vergenet.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200606132319.GC24391@vergenet.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_074048_801591_D18CE760 
X-CRM114-Status: GOOD (  10.04  )
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

T24gU2F0LCBKdW4gMDYsIDIwMjAgYXQgMDM6MjM6MTlQTSArMDIwMCwgU2ltb24gSG9ybWFuIHdy
b3RlOgo+IE9uIFR1ZSwgSnVuIDAyLCAyMDIwIGF0IDEyOjQwOjM0UE0gKzAyMDAsIMWBdWthc3og
U3RlbG1hY2ggd3JvdGU6Cj4gPiBJbmNyZWFzZSB0aGUgc2l6ZSBvZiB0aGUgekltYWdlIGFmdGVy
IHNlZWtpbmcgZm9yIHRoZSB0YWcgdG8gYXZvaWQKPiA+IHJlYWRpbmcgcGFzdCB0aGUgZW5kIG9m
IHRoZSBzdXBwbGllZCBidWZmZXIgc2hvdWxkIHRoZXJlIGJlIG5vdCB0YWcKPiA+IGluIHRoZSB6
SW1hZ2UuCj4gPiAKPiA+IEZpeGVzOiBmNTdmMGJmODk3NWQyNGZlMWU3YzQ5MzZmZGZiNWMzYjEy
M2FiNzVmCj4gPiBTaWduZWQtb2ZmLWJ5OiDFgXVrYXN6IFN0ZWxtYWNoIDxsLnN0ZWxtYWNoQHNh
bXN1bmcuY29tPgo+ID4gQ2M6IFJ1c3NlbGwgS2luZyA8cm1rQGFybWxpbnV4Lm9yZy51az4KPiAK
PiBUaGFua3MgxYF1a2FzeiwKClNvcnJ5LCBJJ3ZlIG5vdCBzZWVuIHRoZSBwYXRjaCwgc28gaXQg
aGFzbid0IGJlZW4gcmV2aWV3ZWQuICBUaGlzIGlzIHRoZQpmaXJzdCBJJ20gYXdhcmUgb2YgaXRz
IGV4aXN0ZW5jZS4KCi0tIApSdXNzZWxsIEtpbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4
ZWMK
