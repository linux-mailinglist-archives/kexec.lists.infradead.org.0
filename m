Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A9D1A4F3F
	for <lists+kexec@lfdr.de>; Sat, 11 Apr 2020 11:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfjIEX3A/1r2umixPVop3C1Jn9gbhbn45S6M/GNSMz0=; b=B4gD+ucVfYQ0BO
	a/Tt76lnuC2GZPTQvbQQY0aNz2FkiCM1jv0Zj8XGkzTKDc3UeT5uocTI44LqYjdVC8VqTUWyj/HQu
	v5mFR1bVvUpd2aPLYgdeHvd/LB4/Hm6jLQ8ABDaY/Pwui7uuzAjuD/2mk1YOjpsOOlYnluoesApiX
	OD5ctRwWOv+NK1WKBpGSlofeRWlA2dnztTahocZ0uCiQyt7taDhGgz+mFG0HP3XzVZLw7xB3doKlh
	SNHps4EXflQUiXB5fFJL70ufO7qlp6zFM5H7eCFi962RRCFyyO6PPPEMSbzLu+M3RbYOuApUxQTlZ
	FEa5ergspw07jyJYspKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNCud-0002md-8C; Sat, 11 Apr 2020 09:58:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNCuS-0002fK-Pi
 for kexec@lists.infradead.org; Sat, 11 Apr 2020 09:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586599117;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=psa51bSI3izRAn31VeGk6yCVGxsKfw+uyENhrbR7q5E=;
 b=LhXEC9pah4W3vpKiSXOXmnbURzfAzOwv2zZswmaJRXnqGZZEgVSI86jdzrZ6O2qwpp/Plo
 OhnljZR0L6A40hbUClS4wvJr3+C4x6nC9qvGRrfnqCCQa4xDhPfh/wx7CHx/eCfO1OBrrd
 Eh4XLM2MNRlEbNX1KNTDZNyXyxRdhyE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-4u5Ju_x3NS-wXV1w2hImDA-1; Sat, 11 Apr 2020 05:58:32 -0400
X-MC-Unique: 4u5Ju_x3NS-wXV1w2hImDA-1
Received: by mail-wm1-f70.google.com with SMTP id s15so1557278wmc.0
 for <kexec@lists.infradead.org>; Sat, 11 Apr 2020 02:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=SzBokMhKaYQ9kHTpHwxhdMrf0DmYFV/BdXoTaqDqIFM=;
 b=ts6ftAgQyr2yCIsGNSoPPfceEiRF2ZRw3+yZFTAyBhzx3Gc/Xh5Q4uj31cWaIIRiwx
 b4d51jEhFYRMCOu51kcbVmQ2DHWsnSCIOpVZFdChDmjMJMh6IiRx+siiRC1PVYouDl6c
 Q8xrc5p125AyEiZP5FJt9fXbbbSf1b5v67cu1J4PKr6y5d5pg/96DjXwQA7vXVBz5zbd
 BD0IHQMpLAWF+dlt3IX7aMsg0dqNl9GdlQbV29/IBgNoDcaDmgiJym3z8PY0ER/Re0+5
 QA2hAAMVlJgqmZpRDBFKQ1UbMrwN8sJzii9rndI48uO52pJvFTH1cpcf99ONpff1pAhP
 1UBA==
X-Gm-Message-State: AGi0PuaQWvkt2d/8OKVZpqFu4/nx6veaeaJhEK4odmRQbRD1KgSdDTD4
 KssAuuIzu9NwW2g8hCuDZwrUNjnUVg/IBtrJQ8L/wzTNq06lvVCzhPLHcXZD8wcSGN/XWYrk/pP
 Ah6YbxrGHQ0VRhzsQhRrV
X-Received: by 2002:a7b:ce0b:: with SMTP id m11mr9430285wmc.67.1586599110772; 
 Sat, 11 Apr 2020 02:58:30 -0700 (PDT)
X-Google-Smtp-Source: APiQypLhlW2ETsRn+cP+zpL3nLkR8A/RhkWTAGpTIqlF0HoNNMuoXPf8LNIh2YL7OKd8BhisvnfZYA==
X-Received: by 2002:a7b:ce0b:: with SMTP id m11mr9430249wmc.67.1586599110429; 
 Sat, 11 Apr 2020 02:58:30 -0700 (PDT)
Received: from [192.168.3.122] (p5B0C6EFB.dip0.t-ipconnect.de. [91.12.110.251])
 by smtp.gmail.com with ESMTPSA id z10sm4064342wrg.69.2020.04.11.02.58.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Apr 2020 02:58:29 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Date: Sat, 11 Apr 2020 11:58:28 +0200
Message-Id: <B70AA95F-1C6C-48BC-B5BD-18FF83354568@redhat.com>
References: <20200411093009.GH25745@shell.armlinux.org.uk>
In-Reply-To: <20200411093009.GH25745@shell.armlinux.org.uk>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Mailer: iPhone Mail (17D50)
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_025844_922458_0869534E 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IEFtIDExLjA0LjIwMjAgdW0gMTE6NDAgc2NocmllYiBSdXNzZWxsIEtpbmcgLSBBUk0gTGlu
dXggYWRtaW4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az46Cj4gCj4g77u/T24gU2F0LCBBcHIgMTEs
IDIwMjAgYXQgMTE6NDQ6MTRBTSArMDgwMCwgQmFvcXVhbiBIZSB3cm90ZToKPj4gQmVjYXVzZSBX
ZSB0ZW5kIHRvIHVzZSBrZXhlY19maWxlX2xvYWQgbW9yZSBhbmQgaW1wcm92ZS9lbmhhbmNlIGl0
IGluIHRoZQo+PiBmdXR1cmUsIGFuZCBncmFkdWFsbHkgb2Jzb2xldGUgdGhlIG9sZCBrZXhlY19s
b2FkIGludGVyZmFjZSB3aGljaCB0aGlzCj4+IHBhdGNoc2V0IGlzIHRyeWluZyB0byBmaXggb24u
IAo+IAo+IFRoYXQncyBub3QgZ29pbmcgdG8gaGFwcGVuOyAzMi1iaXQgQVJNIGtleGVjIHVzZXMg
dGhlIGtleGVjX2xvYWQKPiBpbnRlcmZhY2UgcmF0aGVyIHRoYW4gdGhlIGtleGVjX2ZpbGVfbG9h
ZCB2ZXJzaW9uLCBhbmQgSSBzZWUgbm8gb25lCj4gd2l0aCBhbnkgaW50ZXJlc3QgaW4gY2hhbmdp
bmcgdGhhdCAtIGFuZCB0aGVyZSdzIHVzZXJzIG9mIHRoZSBmb3JtZXIuCj4gCj4gSSBkb24ndCBz
ZWUgaG93IGl0J3MgcG9zc2libGUgdG8gY29udmVydCAzMi1iaXQgQVJNIGtleGVjIHRvIHRoZQo+
IGtleGVjX2ZpbGVfbG9hZCBpbnRlcmZhY2UgLSB0aGlzIGFzc3VtZXMgdGhhdCBhbGwgeW91IGhh
dmUgYXJlIHRoZQo+IGtlcm5lbCwgaW5pdHJkLCBhbmQgY29tbWFuZGxpbmUsIGJ1dCBvbiAzMi1i
aXQgQVJNIGtleGVjLCB3ZSBoYXZlCj4ga2VybmVsLCBpbml0cmQgYW5kIHRoZSBkdGIgYmxvYiB3
aGljaCB0aGUgdXNlciBjYW4gc3BlY2lmeS4KPiAKPiBTbywgaWYgd2Ugd2FudGVkIHRvIG9ic29s
ZXRlIHRoZSBrZXhlY19sb2FkIGludGVyZmFjZSwgX2ZpcnN0XyB0aGVyZQo+IG5lZWRzIHRvIGJl
IGEgd2F5IHRvIHByb3ZpZGUgdXNlcnMgd2l0aCB0aGUgZXhpc3RpbmcgZnVuY3Rpb25hbGl0eQo+
IHRoZXkgaGF2ZSBhbHJlYWR5IGluIHBsYWNlIG9uIDMyLWJpdCBBUk0gLSBvdGhlcndpc2Ugd2Un
cmUgbG9va2luZwo+IGF0IGEgdXNlcnNwYWNlIHJlZ3Jlc3Npb24uICBFc3BlY2lhbGx5IGFzIGtl
eGVjX2ZpbGVfbG9hZCB0YWtlcwo+IHByZWNlZGVuY2Ugb24gc29tZSBkaXN0cm8gcGF0Y2hlZCB2
ZXJzaW9ucyBvZiB0aGUga2V4ZWMgdG9vbCwKPiBpcnJlc3BlY3RpdmUgb2Ygd2hpY2ggaW50ZXJm
YWNlIHRoZSB1c2VyIHJlcXVlc3RzIG9mIHRoZSB0b29sLgo+IAoKT24gMzJiaXQgYXJjaGl0ZWN0
dXJlcyB3ZSB1c3VhbGx5IGRvbuKAmHQgcmVhbGx5IGNhcmUgYWJvdXQgbWVtb3J5IGhvdHBsdWcu
IFNvIHdlIGNvdWxkIGRlcHJlY2F0ZSBpdCBvbmx5IGZvciA2NGJpdCBhcmNoaXRlY3R1cmVzIEFG
QUlLUy4KCgo+IC0tIAo+IFJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgu
b3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwo+IEZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxp
bmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTAuMk1icHMgZG93biA1ODdrYnBzIHVwCj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGlu
ZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
