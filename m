Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1BD1E954
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 09:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/KlIg0X+Q+Ym4J00nzngzhnFsXSukiEqdkjV2UbQng=; b=Hv0iyBPBO+xw7f
	Z6BdEPmtjtblup7ovy5na23MOahF91rhvfjDAqqr77zk9it0JNhn4ZL1O93MZOYlWZeyPAMaNnWPc
	Z2Ld6H3/lPrOYDvWV0tGDFMcYhT7bxavgzJI2tlNxf7sZsixQc8Qm6eJtimfIE/GH+oCutGel/5iS
	j+KPpw8uXWr8oCoLMa14kaEEp014Qq8km8O1xLCZDyCaDS4IywKBW8PPytGJB1D338vd8XTUeSRxw
	cCvHcGBET+H4NTSeWSXYZwkVzBT6bggcoKq7vJ21mF5FA583KyzhFhS8rB5FB1lW66EevXpypB0Qe
	QqFckrIWcnQvLQ2Cd5Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQocI-0003jV-3x; Wed, 15 May 2019 07:46:22 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQocD-0003j9-Ra
 for kexec@lists.infradead.org; Wed, 15 May 2019 07:46:19 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id E13B325AEAD;
 Wed, 15 May 2019 17:46:16 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id B6076E21335; Wed, 15 May 2019 09:46:14 +0200 (CEST)
Date: Wed, 15 May 2019 09:46:14 +0200
From: Simon Horman <horms@verge.net.au>
To: Niklas =?utf-8?Q?Hamb=C3=BCchen?= <mail@nh2.me>
Subject: Re: [PATCH 0/2] Improve reading mounts, fixing EFI/ACPI in common
 scenarios
Message-ID: <20190515074614.bse2e7tiynb7kqhi@verge.net.au>
References: <93048bda-26a4-8573-6614-8b98ccb44591@nh2.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93048bda-26a4-8573-6614-8b98ccb44591@nh2.me>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_004618_046113_80907892 
X-CRM114-Status: UNSURE (   6.34  )
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMTA6MjE6MzNBTSArMDIwMCwgTmlrbGFzIEhhbWLDvGNo
ZW4gd3JvdGU6Cj4gSGksCj4gCj4gcGxlYXNlIGZpbmQgYmVsb3cgdHdvIGZpeGVzIHRvIGtleGVj
LXRvb2xzIHRoYXQgaW1wcm92ZSBpdHMgb3BlcmF0aW9uCj4gb24gcmVhZC1vbmx5IGZpbGUgc3lz
dGVtcyBhbmQgaW5pdGlhbCByYW1kaXNrcyB3aXRob3V0IC9ldGMvbXRhYiwKPiBhcyB3ZWxsIGFz
IG1ha2luZyBkZXRlY3Rpb24gb2Ygc3lzZnMgYW5kIGRlYnVnZnMgbW9yZSByb2J1c3QgYnkgcmVs
eWluZwo+IG9uIHRoZSBmaWxlIHN5c3RlbSB0eXBlIGluc3RlYWQgb2YgY29udmVudGlvbmFsIG5h
bWVzIHRoYXQgYXJlIG5vdCBndWFyYW50ZWVkLgo+IAo+IEJlc3QgZ3JlZXRpbmdzLAo+IE5pa2xh
cwo+IAo+IE5pa2xhcyBIYW1iw7xjaGVuICgyKToKPiAgIHg4NjogQ2hlY2sgL3Byb2MvbW91bnRz
IGJlZm9yZSBtdGFiIGZvciBtb3VudHMKPiAgIHg4NjogRmluZCBtb3VudHMgYnkgRlMgdHlwZSwg
bm90IG5hbWUKClRoYW5rcyBOaWtsYXMsCgphcHBsaWVkLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9rZXhlYwo=
