Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB2AE406F
	for <lists+kexec@lfdr.de>; Fri, 25 Oct 2019 01:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3g7Hp6RVteMus1B7uaIb/6oQT5A398CeTufdiG2Vao=; b=bHVcV9tnGRP36p
	oXOeC3gIBDrn52kATFIl9KTcwQvpI6U5KIiVPV0dvzzCbWjII0c6oG64Ei5oqUo2ZY9dsAOvnT7gM
	KJij5f+neeIYEmg5G9qHpb/9nGMGsAzH6V3ConFjBmPRumJ8olfQrcARBQ3L/+lr0Sr0gUPiaaUZu
	o/5Q/vq91KykI1ERPBP/jNWSBq9uTjPJKE6R8anCFD8/fBU0MQVwr9ZS1ruyf9HmGOaGicCn7X+bj
	ekuKovMnBjaA2ESmxS1XT9RbBksmH9BGUJfuQRDOXioe4YBkiJg8LfF4VzN1Yhe+SVUPdY9N8F0nh
	eoZXpjf4GXOq1D/x307A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNmxk-0007sa-Te; Thu, 24 Oct 2019 23:56:16 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNmxh-0007rx-7b
 for kexec@lists.infradead.org; Thu, 24 Oct 2019 23:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571961368;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pZbVv/eoz3kxY1CN8zY37wwX4BSuQr2pMX8JrPLKB1U=;
 b=EKMmDj8Yc1XTllMGi2Vxbotjx4dj+BWTFFwxhpnPD0BEY8NwfYoxUumUgnFyecZe1gDge9
 eQ3pgCMadDAriApYVW0rZFB1EvQgI+Ig9zcfRRfyJZ9YOCUMULXENojA4ON9FIvGHfCTUj
 9FSakPJsritMyLRojowZOoYyc4z42Xs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-BJlz3gQ0NoKtL_0blcrA5g-1; Thu, 24 Oct 2019 19:56:04 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06F8B107AD31;
 Thu, 24 Oct 2019 23:56:02 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 31B471001B20;
 Thu, 24 Oct 2019 23:55:48 +0000 (UTC)
Subject: Re: [PATCH] x86/kdump: always reserve the low 1MiB when the
 crashkernel
To: kbuild test robot <lkp@intel.com>
References: <75648e8d-4ef7-0537-618e-e4a57f0d3b9b@redhat.com>
 <201910250603.En7IO6Xd%lkp@intel.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <3fce1517-2a76-53da-1538-aa75f3427d5b@redhat.com>
Date: Fri, 25 Oct 2019 07:55:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <201910250603.En7IO6Xd%lkp@intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: BJlz3gQ0NoKtL_0blcrA5g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_165613_350230_37F86040 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, kbuild-all@lists.01.org,
 bhe@redhat.com, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 Borislav Petkov <bp@alien8.de>, ebiederm@xmission.com, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDI15pelIDA2OjEyLCBrYnVpbGQgdGVzdCByb2JvdCDlhpnpgZM6Cj4g
SGkgbGlqaWFuZywKPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCEgUGVyaGFwcyBzb21ldGhp
bmcgdG8gaW1wcm92ZToKPiAKPiBbYXV0byBidWlsZCB0ZXN0IFdBUk5JTkcgb24gbGludXMvbWFz
dGVyXQo+IFtjYW5ub3QgYXBwbHkgdG8gdjUuNC1yYzQgbmV4dC0yMDE5MTAyNF0KPiBbaWYgeW91
ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNlIGRyb3AgdXMg
YSBub3RlIHRvIGhlbHAKPiBpbXByb3ZlIHRoZSBzeXN0ZW0uIEJUVywgd2UgYWxzbyBzdWdnZXN0
IHRvIHVzZSAnLS1iYXNlJyBvcHRpb24gdG8gc3BlY2lmeSB0aGUKPiBiYXNlIHRyZWUgaW4gZ2l0
IGZvcm1hdC1wYXRjaCwgcGxlYXNlIHNlZSBodHRwczovL3N0YWNrb3ZlcmZsb3cuY29tL2EvMzc0
MDY5ODJdCj4gCj4gdXJsOiAgICBodHRwczovL2dpdGh1Yi5jb20vMGRheS1jaS9saW51eC9jb21t
aXRzL2xpamlhbmcveDg2LWtkdW1wLWFsd2F5cy1yZXNlcnZlLXRoZS1sb3ctMU1pQi13aGVuLXRo
ZS1jcmFzaGtlcm5lbC8yMDE5MTAyNS0wMzA0MzkKPiBiYXNlOiAgIGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdCBmMTE2Yjk2
Njg1YTA0NmE4OWMyNWQ0YTZiYTJkYTQ4OTE0NWM4ODg4Cj4gY29uZmlnOiBpMzg2LWRlZmNvbmZp
ZyAoYXR0YWNoZWQgYXMgLmNvbmZpZykKPiBjb21waWxlcjogZ2NjLTcgKERlYmlhbiA3LjQuMC0x
NCkgNy40LjAKPiByZXByb2R1Y2U6Cj4gICAgICAgICAjIHNhdmUgdGhlIGF0dGFjaGVkIC5jb25m
aWcgdG8gbGludXggYnVpbGQgdHJlZQo+ICAgICAgICAgbWFrZSBBUkNIPWkzODYgCj4gCj4gSWYg
eW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZwo+IFJlcG9ydGVkLWJ5
OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiAKPiBBbGwgd2FybmluZ3MgKG5l
dyBvbmVzIHByZWZpeGVkIGJ5ID4+KToKPiAKPj4+IFdBUk5JTkc6IHZtbGludXgubygudGV4dCsw
eGUzOWI3KTogU2VjdGlvbiBtaXNtYXRjaCBpbiByZWZlcmVuY2UgZnJvbSB0aGUgZnVuY3Rpb24g
a2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQigpIHRvIHRoZSB2YXJpYWJsZSAuaW5pdC5kYXRhOmJvb3Rf
Y29tbWFuZF9saW5lCj4gICAgVGhlIGZ1bmN0aW9uIGtleGVjX3Jlc2VydmVfbG93XzFNaUIoKSBy
ZWZlcmVuY2VzCj4gICAgdGhlIHZhcmlhYmxlIF9faW5pdGRhdGEgYm9vdF9jb21tYW5kX2xpbmUu
Cj4gICAgVGhpcyBpcyBvZnRlbiBiZWNhdXNlIGtleGVjX3Jlc2VydmVfbG93XzFNaUIgbGFja3Mg
YSBfX2luaXRkYXRhCj4gICAgYW5ub3RhdGlvbiBvciB0aGUgYW5ub3RhdGlvbiBvZiBib290X2Nv
bW1hbmRfbGluZSBpcyB3cm9uZy4KPiAtLQo+Pj4gV0FSTklORzogdm1saW51eC5vKC50ZXh0KzB4
ZTM5ZDApOiBTZWN0aW9uIG1pc21hdGNoIGluIHJlZmVyZW5jZSBmcm9tIHRoZSBmdW5jdGlvbiBr
ZXhlY19yZXNlcnZlX2xvd18xTWlCKCkgdG8gdGhlIGZ1bmN0aW9uIC5tZW1pbml0LnRleHQ6bWVt
YmxvY2tfcmVzZXJ2ZSgpCj4gICAgVGhlIGZ1bmN0aW9uIGtleGVjX3Jlc2VydmVfbG93XzFNaUIo
KSByZWZlcmVuY2VzCj4gICAgdGhlIGZ1bmN0aW9uIF9fbWVtaW5pdCBtZW1ibG9ja19yZXNlcnZl
KCkuCj4gICAgVGhpcyBpcyBvZnRlbiBiZWNhdXNlIGtleGVjX3Jlc2VydmVfbG93XzFNaUIgbGFj
a3MgYSBfX21lbWluaXQKPiAgICBhbm5vdGF0aW9uIG9yIHRoZSBhbm5vdGF0aW9uIG9mIG1lbWJs
b2NrX3Jlc2VydmUgaXMgd3JvbmcuCj4gClRoZXNlIHdhcm5pbmdzIGhhdmUgYmVlbiBmaXhlZCBp
biBwYXRjaCB2NS4gUGxlYXNlIHJlZmVyIHRvIHRoZSBsYXRlc3QgcGF0Y2ggdjUuCgpUaGFua3Mu
CkxpYW5ibwoKPiAtLS0KPiAwLURBWSBrZXJuZWwgdGVzdCBpbmZyYXN0cnVjdHVyZSAgICAgICAg
ICAgICAgICBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRlcgo+IGh0dHBzOi8vbGlzdHMuMDEu
b3JnL3BpcGVybWFpbC9rYnVpbGQtYWxsICAgICAgICAgICAgICAgICAgIEludGVsIENvcnBvcmF0
aW9uCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
a2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
