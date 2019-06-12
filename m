Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ED7419E3
	for <lists+kexec@lfdr.de>; Wed, 12 Jun 2019 03:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Up+kNhRX1mnPEqhvbKAeYcpVo+paDxMdOFHT6FWwYYk=; b=cR9oO8tNf4w/Rm
	PaH1B/VAM6mA6yjraN98TVXedQ3BjqL+mvWnFBXtkGe8Jc4ZjzTVQ7XtEFfJ8S6v4OIMWQtz2a1Tq
	JdpalUBKsl09bEjCJFAAcKqRHBw4Y18pynr+fqI2yvmGIHmpOl/G48x+EICdscUbnJJuXlYYUEr4n
	OrG0LL4uX6CcVNRrRVu6euSWPH6t58hKKfePiKWc5IkRUvmcVcG3bQCWLFk1eR/NEF68C821wEqrm
	ySw+kIF9656XDGwHpOHCDkV2jtS7BenmUblZ0FIN3DY1D0mOOktpQ9NHp+FsSgu1kpAfcH3qj+/go
	4q+z0h5bPdJO1mpIHTqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harrX-0002pe-LR; Wed, 12 Jun 2019 01:15:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1harrU-0002om-Ly
 for kexec@lists.infradead.org; Wed, 12 Jun 2019 01:15:38 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 75BD8C04FFF1;
 Wed, 12 Jun 2019 01:15:18 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-17.pek2.redhat.com [10.72.12.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BC67643DA;
 Wed, 12 Jun 2019 01:15:02 +0000 (UTC)
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel e820
 table
To: Borislav Petkov <bp@alien8.de>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic> <20190608035451.GB26148@MiWiFi-R3L-srv>
 <20190608091030.GB32464@zn.tnic> <20190608100139.GC26148@MiWiFi-R3L-srv>
 <20190608100623.GA9138@zn.tnic> <20190608102659.GA9130@MiWiFi-R3L-srv>
 <20190610113747.GD5488@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <6d7f4c6f-9d7c-c316-ea53-0c6b8a7b9631@redhat.com>
Date: Wed, 12 Jun 2019 09:14:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190610113747.GD5488@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 12 Jun 2019 01:15:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_181536_742929_3F3C1D68 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, Baoquan He <bhe@redhat.com>,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 akpm@linux-foundation.org, dyoung@redhat.com, tglx@linutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwNuaciDEw5pelIDE5OjM3LCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IFNhdCwgSnVuIDA4LCAyMDE5IGF0IDA2OjI2OjU5UE0gKzA4MDAsIEJhb3F1YW4gSGUgd3JvdGU6
Cj4+IE9LLCBJIHNlZS4gVGhlbiBpdCBzaG91bGQgYmUgdGhlIGlzc3VlIHdlIGhhdmUgbWV0IGFu
ZCB0YWxrZWQgYWJvdXQgd2l0aAo+PiBUb20uCj4+IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3Iv
MjAxOTA2MDQxMzQ5NTIuR0MyNjg5MUBNaVdpRmktUjNMLXNydgo+Pgo+PiBZb3UgY2FuIGFwcGx5
IFRvbSdzIHBhdGNoIGFzIGJlbG93LiBJIHRlc3RlZCBpdCwgaXQgY2FuIG1ha2Uga2V4ZWMKPj4g
a2VybmVsIHN1Y2NlZWQgdG8gYm9vdCwgYnV0IGZhaWxlZCBmb3Iga2R1bXAga2VybmVsIGJvb3Rp
bmcuIFRoZSBrZHVtcAo+PiBrZXJuZWwgY2FuIGJvb3QgdGlsbCB0aGUgZW5kIG9mIGtlcm5lbCBp
bml0aWFsaXphdGlvbiwgdGhlbiBoYW5nIHdpdGggYQo+PiBjYWxsIHRyYWNlLiBJIGhhdmUgcGFz
dGVkIHRoZSBsb2cgaW4gdGhlIGFib3ZlIHRocmVhZC4gSGF2ZW4ndCBnb3QgdGhlCj4+IHJlYXNv
bi4KPj4gaHR0cDovL2xrbWwua2VybmVsLm9yZy9yLzUwOGMyODUzLWRjNGYtNzBhNi02ZmE4LTk3
Yzk1MGRjMzFjNkBhbWQuY29tCj4gCj4gSSBjYW4gY29uZmlybSB0aGUgc2FtZSBvYnNlcnZhdGlv
bi4KPiAKQ3VycmVudGx5LCBpIGhhdmVuJ3Qgc2VlbiBhbnkgdXBkYXRlcyB5ZXQsIHNvIGknbSBu
b3Qgc3VyZSB3aGV0aGVyIHRoaXMgcGF0Y2gKcGFzc2VkIHlvdXIgdGVzdC4KClRoYW5rcy4KTGlh
bmJvCgo+IFRoeC4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
