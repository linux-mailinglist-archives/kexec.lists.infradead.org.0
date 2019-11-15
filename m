Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC124FD1E7
	for <lists+kexec@lfdr.de>; Fri, 15 Nov 2019 01:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0O89vsz2G5nWr88uP9kQKc8ojqE8MeWLGiSZllX2Y4=; b=nWIPXRURL19ucy
	wBtUUbpXGx4Un7FtIILCBDX1kWeXC7oj5edZxU0k7lNCGBImBL99h5VdguC2PRj1ufuhk/GbCY8zy
	hgokaHaQlyhWKUj0kIEXl8Z9GVgCXUxEwLsk5x5K070vTd4yjtl5Wc7Fqb9040CAWvopd0IRXAk8u
	T0H45aNiXtefBdYbNRgPUuTfZepxjEfcZyfN7/ptaF5qVZxGx8g4N3abQZRkDGDJXZwZR49htNk0/
	r0Wkhdnp61KKShUIndSaTMaCVyzGrSB2R060BnbzOMhCF5rtyLWz6EexAQKp8GuuEpeU250UwQmh5
	IksvxOalI8qSxtDvy8yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVPJh-0006hz-Vd; Fri, 15 Nov 2019 00:18:25 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVPJf-0006hP-2w
 for kexec@lists.infradead.org; Fri, 15 Nov 2019 00:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573777101;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZC4oRKrw/qWdzHQoCwRQZNWCxM2orILGhYYmWScMkN8=;
 b=gHubXHNew/mkVcGaYaMqRrWGEeAkWLVYPrKA47WAYffSSFu6KJYi3USmcnmrJ1HhrIShwr
 KiAbCfWtbzt/tB0Q37QmiHIMACuyYVxtr/U9OefiVAaworV8FFsVbsXo4X4WE1T5oo1wsk
 UgsQWCOGzmIFaXRSIyYrFVX1iJXR7HM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-GWv-dqrhPmGI0TpTUuYg4g-1; Thu, 14 Nov 2019 19:18:17 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C270107ACC5;
 Fri, 15 Nov 2019 00:18:15 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-39.pek2.redhat.com [10.72.12.39])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9BEC03DBB;
 Fri, 15 Nov 2019 00:18:06 +0000 (UTC)
Subject: Re: [PATCH 3/3 v9] kexec: Fix i386 build warnings that missed
 declaration of struct kimage
To: Borislav Petkov <bp@alien8.de>
References: <20191108090027.11082-1-lijiang@redhat.com>
 <20191108090027.11082-4-lijiang@redhat.com> <20191114123920.GA7222@zn.tnic>
 <59fbd119-495a-4d00-9738-98c22b276c1f@redhat.com>
 <20191114144353.GB7222@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <16a61f4d-a112-6766-0272-9cfd65e78503@redhat.com>
Date: Fri, 15 Nov 2019 08:18:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191114144353.GB7222@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: GWv-dqrhPmGI0TpTUuYg4g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_161823_199213_7AAE7DAE 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMeaciDE05pelIDIyOjQzLCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IFRodSwgTm92IDE0LCAyMDE5IGF0IDEwOjIwOjQyUE0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+
IEkgcmVhbGx5IHNhdyBteSBidWlsZGluZyByZXN1bHQsIGJ1dCBrYnVpbGQgcmVwb3J0ZWQgdGhl
IGZvbGxvd2luZyBtZXNzYWdlczoKPj4KPj4gdmltICs1IGFyY2gveDg2L2luY2x1ZGUvYXNtL2Ny
YXNoLmgKPj4KPj4gZGQ1ZjcyNjA3NmNjNzYgVml2ZWsgR295YWwgMjAxNC0wOC0wOCAgIDQgIAo+
PiBkZDVmNzI2MDc2Y2M3NiBWaXZlayBHb3lhbCAyMDE0LTA4LTA4ICBANSAgaW50IGNyYXNoX2xv
YWRfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwo+PiBkZDVmNzI2MDc2Y2M3NiBWaXZl
ayBHb3lhbCAyMDE0LTA4LTA4ICAgNiAgaW50IGNyYXNoX2NvcHlfYmFja3VwX3JlZ2lvbihzdHJ1
Y3Qga2ltYWdlICppbWFnZSk7Cj4+IGRkNWY3MjYwNzZjYzc2IFZpdmVrIEdveWFsIDIwMTQtMDgt
MDggICA3ICBpbnQgY3Jhc2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1h
Z2UsCj4+IGRkNWY3MjYwNzZjYzc2IFZpdmVrIEdveWFsIDIwMTQtMDgtMDggICA4ICAJCXN0cnVj
dCBib290X3BhcmFtcyAqcGFyYW1zKTsKPj4gODlmNTc5Y2U5OWY3ZTAgWWkgV2FuZyAgICAgMjAx
OC0xMS0yMiAgIDkgIHZvaWQgY3Jhc2hfc21wX3NlbmRfc3RvcCh2b2lkKTsKPj4gZGQ1ZjcyNjA3
NmNjNzYgVml2ZWsgR295YWwgMjAxNC0wOC0wOCAgMTAgIAo+Pgo+PiA6Ojo6OjogVGhlIGNvZGUg
YXQgbGluZSA1IHdhcyBmaXJzdCBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCAKPj4gICAgICAgIF5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl4KPj4gOjo6Ojo6IGRk
NWY3MjYwNzZjYzc2MzlkOTcxM2IzMzRjOGMxMzNmNzdjNjc1N2Ega2V4ZWM6IHN1cHBvcnQgZm9y
IGtleGVjIG9uIHBhbmljIHVzaW5nIG5ldyBzeXN0ZW0gY2FsbAo+PiAgICAgICAgXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCj4gCj4gWW91IHNob3VsZCBub3QgdGFrZSB0
aGUgcmVwb3J0IG9mIGEgYm90IGJsaW5kbHkgYnV0IHNob3VsZCBhbHdheXMgZG91YmxlCj4gY2hl
Y2sgaXQuIExpa2UgZXZlcnkgb3RoZXIgY29tcHV0ZXIgc3lzdGVtIHByb2dyYW1tZWQgYnkgaHVt
YW5zLCBpdCBjYW4KPiBtYWtlIG1pc3Rha2VzLgo+IAoKSW5kZWVkLCBpIHRvdGFsbHkgYWdyZWUu
Cgo+PiBXb3VsZCB5b3UgbWluZCBnaXZpbmcgbWUgYW55IHN1Z2dlc3Rpb25zIGFib3V0IHRoaXM/
Cj4gCj4gSSdsbCB0YWtlIGNhcmUgb2YgaXQgYWxsIGFuZCBwdXNoIHRoZSByZXN1bHRzIG91dCBz
b29uLgo+IAoKT0ssIHRoYW5rIHlvdSBzbyBtdWNoLgoKTGlhbmJvCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVj
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9rZXhlYwo=
