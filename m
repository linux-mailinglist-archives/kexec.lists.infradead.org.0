Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE08B419FB
	for <lists+kexec@lfdr.de>; Wed, 12 Jun 2019 03:35:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9zEfZLPGalWVDdcz1TlXVrrMMKxvRJOlURwXon3ulA=; b=coyONOV8vsorkC
	3zO0tGQlxhOcJMwUgI4ZDXGgLNvimqGsmdXHsJ0QzkefHyVzLV1bRLntxjyP2UzFNDMXdCYK99CqS
	D7v8xGGxidq1MMK2OFYYixKBDj/hwrivpinsg1xjvMRf05ZFh5t3QOZuMTkuYKWT0sQ095svpqE0S
	I12ISeHlknNNUHB4WzIQ545JHlTn5KyiNQCiXLzzC8qROcnwvtR6t5pp4kLejHNh0W9q8G6Nhd53D
	0nrpZqikUC3dUav4umXquhuSoSVr+sDN1I4tbjedNbr+wCcxFTJS/4M+hEp55UxaH9zsLD2nF7jLo
	3O46SPmubaaPR+FWvoWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hasAK-0008I2-Ar; Wed, 12 Jun 2019 01:35:04 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hasAG-00086A-RH
 for kexec@lists.infradead.org; Wed, 12 Jun 2019 01:35:02 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 102C0308218D;
 Wed, 12 Jun 2019 01:34:43 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-17.pek2.redhat.com [10.72.12.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 87B5F6404F;
 Wed, 12 Jun 2019 01:34:31 +0000 (UTC)
Subject: Re: [PATCH 2/3 v3] x86/kexec: Set the C-bit in the identity map page
 table when SEV is active
To: Boris Petkov <bp@alien8.de>
References: <20190430074421.7852-1-lijiang@redhat.com>
 <20190430074421.7852-3-lijiang@redhat.com> <20190515133006.GG24212@zn.tnic>
 <4707fb2d-b7d3-34e3-a488-8aa9bdca05f1@redhat.com>
 <0650D79F-2B12-4A80-A37A-F318B5C9ECBC@alien8.de>
From: lijiang <lijiang@redhat.com>
Message-ID: <065dfaab-089b-2329-905a-e1dfbd2f3b3f@redhat.com>
Date: Wed, 12 Jun 2019 09:34:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <0650D79F-2B12-4A80-A37A-F318B5C9ECBC@alien8.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 12 Jun 2019 01:35:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_183500_906751_33C97218 
X-CRM114-Status: GOOD (  11.02  )
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
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwNeaciDE25pelIDE2OjE1LCBCb3JpcyBQZXRrb3Yg5YaZ6YGTOgo+IE9uIE1h
eSAxNiwgMjAxOSAzOjEyOjI2IEFNIEdNVCswMjowMCwgbGlqaWFuZyA8bGlqaWFuZ0ByZWRoYXQu
Y29tPiB3cm90ZToKPj4gT0ssIGkgd2lsbCBtb2RpZnkgaXQgYWNjb3JkaW5nIHRvIHlvdXIgc3Vn
Z2VzdGlvbiBhbmQgcG9zdCBhZ2Fpbi4KPiAKPiBObyBuZWVkIC0gaSBmaXhlZCBpdCB1cCBhbHJl
YWR5LiAKPiAKCkhpLCB1bnRpbCBub3csIGkgaGF2ZW4ndCBzZWVuIHRoZSB1cHN0cmVhbSBicmFu
Y2ggcGljayB1cCB0aGlzIHBhdGNoIHNlcmllcywKYW55IHVwZGF0ZXM/CgpUaGFua3MuCkxpYW5i
bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMg
bWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
