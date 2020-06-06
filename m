Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F181F06B7
	for <lists+kexec@lfdr.de>; Sat,  6 Jun 2020 15:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0bmgI5K9LgpLCy4Tv/sxrFhrCmhvEYlm75TXaBjbHg=; b=Tbt85ipHva5ZEq
	obZgkXGBbY4IANaTX+Is3Xn2Vn2yqPYBgrgW+bdBKj/tarhijh6uEdlyyO/Zkml2DGyAfgbeCJAlm
	d1xn2AzBg+13AG5l6xxEo+bpzzh5iAd6vLb6p1x9muZJJbtIv9eSYbqzv4EpJRUVahNv6sxygxk4S
	zRxZPR7NcTqyfK41dEwG0ZzWNeMvKQOLT21zSqWM1s2EmhSbF4kvfXuxYqZCysEpYL9vmcLB42PJT
	LpTksNCRLEIU59EeSnG+ZHKMBhGOapSyGuXPOF/iryPTgm9M9qX5YPigDa1+c/mcWSJ9Xz/2uj0a7
	AALCopq+FlFEAFnWMRLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYnF-0000dQ-8F; Sat, 06 Jun 2020 13:23:25 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhYnC-0000d8-J2
 for kexec@lists.infradead.org; Sat, 06 Jun 2020 13:23:23 +0000
Received: from madeliefje.horms.nl (unknown [83.161.246.101])
 by kirsty.vergenet.net (Postfix) with ESMTPA id AF58825B805;
 Sat,  6 Jun 2020 23:23:21 +1000 (AEST)
Received: by madeliefje.horms.nl (Postfix, from userid 7100)
 id CDACE36C7; Sat,  6 Jun 2020 15:23:19 +0200 (CEST)
Date: Sat, 6 Jun 2020 15:23:19 +0200
From: Simon Horman <horms@verge.net.au>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH] arm: Increase zImage length after getting the tag
Message-ID: <20200606132319.GC24391@vergenet.net>
References: <CGME20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd@eucas1p1.samsung.com>
 <20200602104034.31256-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602104034.31256-1-l.stelmach@samsung.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_062322_776643_272213FF 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
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
Cc: Russell King <rmk@armlinux.org.uk>, kexec@lists.infradead.org,
 b.zolnierkie@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMDIsIDIwMjAgYXQgMTI6NDA6MzRQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBJbmNyZWFzZSB0aGUgc2l6ZSBvZiB0aGUgekltYWdlIGFmdGVyIHNlZWtpbmcg
Zm9yIHRoZSB0YWcgdG8gYXZvaWQKPiByZWFkaW5nIHBhc3QgdGhlIGVuZCBvZiB0aGUgc3VwcGxp
ZWQgYnVmZmVyIHNob3VsZCB0aGVyZSBiZSBub3QgdGFnCj4gaW4gdGhlIHpJbWFnZS4KPiAKPiBG
aXhlczogZjU3ZjBiZjg5NzVkMjRmZTFlN2M0OTM2ZmRmYjVjM2IxMjNhYjc1Zgo+IFNpZ25lZC1v
ZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Cj4gQ2M6IFJ1
c3NlbGwgS2luZyA8cm1rQGFybWxpbnV4Lm9yZy51az4KClRoYW5rcyDFgXVrYXN6LAoKYXBwbGll
ZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVj
IG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
