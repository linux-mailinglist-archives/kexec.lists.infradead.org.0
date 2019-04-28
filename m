Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFFBB4B7
	for <lists+kexec@lfdr.de>; Sun, 28 Apr 2019 03:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsPq0sAfm6gZbH0IxrLJihv6/o0UWFQN7uho7U+FKPo=; b=kWBTFS78xsfCpx
	MXRSOh89OnvV+CLWzH+dj5at/y95zqJCKSrlWZU/HaKeDudu8FnCWXjf4WnNsSbe7C+t+wdED70gD
	QzhdwjysBeQqvVYm+/bkYA+2fqg3/1VaiAkB7NAcLAWNqE/9T/WbaKGUYHDkvmoDugmNV2FitzADx
	U9y5ohLA0MpzNl5N9NSr67og8ODARk6KyrUBd4FJjZVB44VhnrSsEciHRAMK/TpLREZI0vDEl8TmT
	QAhjOX/Xyzcrq+UPNdejJkplXooFYxxaFCntK/nD4PJUxVJr0qiaCxA7zXT9OMCOGtXp3eWPmluXu
	v89vOW6nsgLuw1xnOBZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKYd8-00032N-Te; Sun, 28 Apr 2019 01:29:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKYd3-00031z-Uo
 for kexec@lists.infradead.org; Sun, 28 Apr 2019 01:29:19 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ACBBF308FC5E;
 Sun, 28 Apr 2019 01:29:15 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-43.pek2.redhat.com [10.72.12.43])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 973B01725C;
 Sun, 28 Apr 2019 01:29:05 +0000 (UTC)
Subject: Re: [PATCH 1/3 v2] x86/kexec: Do not map the kexec area as decrypted
 when SEV is active
To: Borislav Petkov <bp@alien8.de>
References: <20190327053629.17935-1-lijiang@redhat.com>
 <20190327053629.17935-2-lijiang@redhat.com> <20190402103201.GF6826@zn.tnic>
 <c25502b9-15bc-6ca3-f0d4-c0df5498e676@redhat.com>
 <20190426130226.GE4608@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <16ca1636-5025-82a5-fe22-2b409e8e515f@redhat.com>
Date: Sun, 28 Apr 2019 09:29:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190426130226.GE4608@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Sun, 28 Apr 2019 01:29:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_182918_012819_7E222777 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwNOaciDI25pelIDIxOjAyLCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IEZyaSwgQXByIDI2LCAyMDE5IGF0IDA5OjU5OjU0QU0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+
IEhvcGUgdGhpcyBoZWxwLiBUaGFua3MuCj4gCj4gSXQgZG9lcyBoZWxwLCB5ZXMuIFdoZW4gdGhp
cyBleHBsYW5hdGlvbiBhYm92ZSBpcyBwYXJ0IG9mIHRoZSBjb21taXQKPiBtZXNzYWdlLCBpdCBo
ZWxwcyBpbW1lbnNlbHkhCgpPSywgaSB3aWxsIGFkZCB0aGVtIHRvIHRoZSBjb21taXQgbWVzc2Fn
ZSBhbmQgcG9zdCBhZ2Fpbi4KCj4gCj4gOi0pCj4gCj4+IFNvIHNvcnJ5IGZvciB0aGUgZGVsYXks
IGkgYW0gdHJ5aW5nIG15IGJlc3QgdG8gZXhwbGFpbiBpdCBpbiBkZXRhaWwuCj4gCj4gSSBkb24n
dCBjYXJlIGFib3V0IHRoZSBkZWxheSBhcyBsb25nIGFzIHRoZSBjb21taXQgbWVzc2FnZXMgcHJv
cGVybHkKPiBleHBsYWluIHdoeSB0aGUgY2hhbmdlIGlzIG5lZWRlZC4KPiAKPiBTbyB0aGFua3Mg
Zm9yIGRvaW5nIHRoYXQuCj4gCgpJdCdzIG15IHBsZWFzdXJlLiBUaGFua3MuCgpMaWFuYm8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxp
bmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
