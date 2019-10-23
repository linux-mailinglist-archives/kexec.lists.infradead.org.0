Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17301E15A4
	for <lists+kexec@lfdr.de>; Wed, 23 Oct 2019 11:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGwNdqCLbcOiwTMe0EPp7DC6eQ/3NHby7OAzZPjJNd4=; b=LaqMB5lFgsDIyL
	1h+14WpOHBgA/JC4Fz/jydkZuH2vGL20PpzdBP5l0OUrGX6AmWrKEp++1200DCt9H/sNtL/+GXfjY
	x//YYIJpvSjpVnW6Uktm7AhQEyhP+xi/VK3ARG/2oDrePWMDWIksIeelrW5wOj+vjE6VqVCBdpyZ4
	YkUD9hckZKDUWn61j3vSn2rXWs6o4sVPDUiLJxmFlBd/ApxYz3uSiR6LLS3XJ7KkAxb7bVkx8GVjh
	G6bymSgI4cKUr/MVn7my0NbyQHJ1RTBnp8+TdJZ//sqYWZTDX7UDjrENQGpNHlRvpUmM1ohQHwX/p
	uaLbKFlQENOQihnXlPtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCpV-0004XK-Gh; Wed, 23 Oct 2019 09:21:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCpP-0004W0-HE
 for kexec@lists.infradead.org; Wed, 23 Oct 2019 09:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571822473;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GMpXAQSd5E7qm/XtkcXKzvy4PNfzv6ftxdxzuMplztA=;
 b=Ar3RZk5QwhCbmhYwDxH0Pxmo8kTm7ru6x2elK73wMArBgpCsFxL/vGdcFIJ78f+W8Tn1Xl
 pxKb9zic+Q7dSPQZe5m0xaY5mEtniI2EV7PCJkDUTAycNul1NM9UU2WwsQOBbileNQlniT
 D7pTcWwij7MgWh88Gnlu/mvoU+j5Bi8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-137-H0bJdmAkMD2-xbGpKL4_Ag-1; Wed, 23 Oct 2019 05:21:09 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A54E80183D;
 Wed, 23 Oct 2019 09:21:08 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 016585C1B2;
 Wed, 23 Oct 2019 09:20:53 +0000 (UTC)
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: Borislav Petkov <bp@alien8.de>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-2-lijiang@redhat.com> <20191022083015.GB31700@zn.tnic>
 <75648e8d-4ef7-0537-618e-e4a57f0d3b9b@redhat.com>
 <20191023074602.GB16060@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <98c9f97d-de22-2041-d0a4-214542807706@redhat.com>
Date: Wed, 23 Oct 2019 17:20:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191023074602.GB16060@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: H0bJdmAkMD2-xbGpKL4_Ag-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_022115_648133_0308EB88 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDIz5pelIDE1OjQ2LCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IFdlZCwgT2N0IDIzLCAyMDE5IGF0IDAxOjM1OjA5UE0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+
IFdvdWxkIHlvdSBtaW5kIGlmIGkgaW1wcm92ZSB0aGlzIHBhdGNoIGFzIGZvbGxvdz8gVGhhbmtz
Lgo+IAo+IFlhcCwgbG9va3MgZ29vZCB0byBtZS4KPiAKVGhhbmtzIGZvciB5b3VyIGNvbW1lbnQu
CgpPSy4gSSB3aWxsIHBvc3QgdGhpcyBvbmUgYW5kIHRoZSB0aGlyZCBwYXRjaCBpbiB0aGlzIHNl
cmllcyBsYXRlci4KClRoYW5rcy4KTGlhbmJvCgoKPiBUaHguCj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVj
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9rZXhlYwo=
