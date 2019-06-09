Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F42393A37A
	for <lists+kexec@lfdr.de>; Sun,  9 Jun 2019 06:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7uza+w3OjE/WWJXxHw45Nsa6M2BTw8gARuGhuOgp10=; b=EIJoXTzZLVGmZc
	jzSmzwpMSrrkbxLvkXNghBvRQQoqE0w4GDP3zGlpKkLdWBL1T3EsCAYJ+E2lFG8pWlgLkKAN6Gnnf
	Jc9e+uLBsE7JwDcAtSmaiPHwHNCSummp1O0ghM6H/mdzyfheqOQty+6MfDfHk5ApezNmmnw9wHUqi
	UJu4hpq7EgMBFYltGon+D5y7Hq4zKElCVej0TZlW9pxzFLrqG8G9upa6SqNosq/TjhOwlmTYfBuhc
	nueLvtMIb2Ycn7qjSIh1OnvUi7Z8YzJPyqP+K9xg/aTnq0lZq3oZevPBu81jCcaVb8rtFRpehDHjQ
	13LaJTVA80EWFgeL8evg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZp32-0006qV-I4; Sun, 09 Jun 2019 04:03:12 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZp2w-0006q8-Em
 for kexec@lists.infradead.org; Sun, 09 Jun 2019 04:03:07 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D82317FDEE;
 Sun,  9 Jun 2019 04:03:05 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-49.pek2.redhat.com [10.72.12.49])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1507F601A6;
 Sun,  9 Jun 2019 04:02:52 +0000 (UTC)
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel e820
 table
To: Borislav Petkov <bp@alien8.de>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <843cf2d9-8b52-75de-0e76-7ae216bc8e64@redhat.com>
Date: Sun, 9 Jun 2019 12:02:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190607174211.GN20269@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Sun, 09 Jun 2019 04:03:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_210306_513852_EF0F6B62 
X-CRM114-Status: GOOD (  16.03  )
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, bhe@redhat.com,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwNuaciDA45pelIDAxOjQyLCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IFR1ZSwgTWF5IDI4LCAyMDE5IGF0IDAzOjMwOjIxUE0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+
IEhpLCBCb3JpcyBhbmQgVGhvbWFzCj4+Cj4+IENvdWxkIHlvdSBnaXZlIG1lIGFueSBzdWdnZXN0
aW9ucyBhYm91dCB0aGlzIHBhdGNoIHNlcmllcz8gT3RoZXIgcmV2aWV3ZXJzPwo+IAo+IFNvIEkn
bSB0ZXN0aW5nIHRoaXMgb24gYSBib3ggd2l0aCBTTUUgZW5hYmxlZCBidXQgYWZ0ZXIgbG9hZGlu
ZyB0aGUKPiBjcmFzaCBrZXJuZWwsIGl0IGZyZWV6ZXMgaW5zdGVhZCBvZiByZWJvb3RpbmcuIE15
IGNtZGxpbmUgaXM6Cj4gCj4gIGtleGVjIC1zIC1wIC9ib290L3ZtbGludXotNS4yLjAtcmMzKyAt
LWluaXRyZD0vYm9vdC9pbml0cmQuaW1nLTUuMi4wLXJjMysgLS1jb21tYW5kLWxpbmU9Im1heGNw
dXM9MSByb290PS9kZXYvc2RhNSBybyBkZWJ1ZyBpZ25vcmVfbG9nbGV2ZWwgbG9nX2J1Zl9sZW49
MTZNIG5vX2NvbnNvbGVfc3VzcGVuZCBuZXQuaWZuYW1lcz0wIHN5c3RlbWQubG9nX3RhcmdldD1u
dWxsIG1lbV9lbmNyeXB0PW9uIGt2bV9hbWQuc2V2PTEgbnJfY3B1cz0xIGlycXBvbGwgcmVzZXRf
ZGV2aWNlcyB2Z2E9bm9ybWFsIExBTkc9ZW5fVVMuVVRGLTggZWFybHlwcmludGs9c2VyaWFsIGNn
cm91cF9kaXNhYmxlPW1lbW9yeSBtY2U9b2ZmIG51bWE9b2ZmIHVkZXYuY2hpbGRyZW4tbWF4PTIg
cGFuaWM9MTAgcm9vdGZsYWdzPW5vZmFpbCBhY3BpX25vX21lbWhvdHBsdWcgdHJhbnNwYXJlbnRf
aHVnZXBhZ2U9bmV2ZXIgZGlzYWJsZV9jcHVfYXBpY2lkPTAiCj4gCj4gYW5kIHRoZSByZXNlcnZl
ZCByYW5nZSBpczoKPiAKPiBbICAgIDAuMDAwMDAwXSBSZXNlcnZpbmcgMjU2TUIgb2YgbWVtb3J5
IGF0IDMzOTJNQiBmb3IgY3Jhc2hrZXJuZWwgKFN5c3RlbSBSQU06IDE2MjcxTUIpCj4gCj4gSSdt
IHdvbmRlcmluZyBpZiBpdCBpcyByZWxhdGVkIHRvCj4gCj4gaHR0cHM6Ly9sa21sLmtlcm5lbC5v
cmcvci8yMDE5MDYwNDEzNDk1Mi5HQzI2ODkxQE1pV2lGaS1SM0wtc3J2Cj4gClllcy4gSXQgc2hv
dWxkIGJlIGEgU01FIGlzc3VlLgoKVGhhbmtzLgpMaWFuYm8KCj4gVGh4Lgo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0
CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo=
