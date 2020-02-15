Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0972015FC8C
	for <lists+kexec@lfdr.de>; Sat, 15 Feb 2020 05:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZAKCKL71vZzABcbgTHG86PCRGVETwX/3YIwuxxHMBM=; b=rIaZLgENql7Rka
	+GJ9T4tHK/4RVkAjV5g1PpFMZDK3eQa42eT9v3V6+RLR8+DY3j2dPt2pf6wSXys6FZ26/wRilUc9K
	0IRnDzYLP2wqNNPi5pWiT3tZ4CBFabLm2QEZUCE7IJ2dV7WSCnwtFOXr5a8zI5hG+buEQTEF/p9vc
	hKyZaIsM1R4du6s/Ce5055fVM2mpjWI7Y0tYjS1DMqmRM8UxNnx0c5AgBavuEwsUPOAfdi6xk1Mh5
	M8F8mEBQ0XuoM87h6Mq7oPQcSvggXJv/z2BYNY/qArBFZOtxEIXB4QljTsmiFKepNTUsI7anHYFoC
	rRz+1nAqDkc2Shq7WQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2os7-0002Xk-A0; Sat, 15 Feb 2020 04:16:03 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2os3-0002Pb-FK
 for kexec@lists.infradead.org; Sat, 15 Feb 2020 04:16:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581740148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4v4KhDOUgaH2uZWdr53oizMCM+xuhnQJDym0U6qJWwY=;
 b=BXMVxkc2R8TTo5p9Wmr69ShdH6W8Pf/4D2YgeAn51bfbsUloRAqb6mxpj6LEHCEb8x3p5Y
 VDd3zllIKVE+sVGu15yVsmj4G4qochElR4jB/lZ772UKLR6y1NilRrF1I65YuRl6JJRoyL
 0v+stKI8q+xu0+HgjBMBc/7RWXtoalk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-Yt1oiaODPbya0oZ7OY3DAQ-1; Fri, 14 Feb 2020 23:15:46 -0500
X-MC-Unique: Yt1oiaODPbya0oZ7OY3DAQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B64A86124F;
 Sat, 15 Feb 2020 04:15:43 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-202.pek2.redhat.com
 [10.72.12.202])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4097E5C1D8;
 Sat, 15 Feb 2020 04:15:36 +0000 (UTC)
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
To: John Ogness <john.ogness@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <ccbe1383-a4a4-41f8-3330-972f03c97429@redhat.com>
 <87zhdle0s5.fsf@linutronix.de>
From: lijiang <lijiang@redhat.com>
Message-ID: <fade55ad-cefd-898b-6062-6fe45f17b94a@redhat.com>
Date: Sat, 15 Feb 2020 12:15:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87zhdle0s5.fsf@linutronix.de>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_201559_592918_35ACE97A 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMjDlubQwMuaciDE05pelIDIxOjUwLCBKb2huIE9nbmVzcyDlhpnpgZM6Cj4gSGkgTGlh
bmJvLAo+IAo+IE9uIDIwMjAtMDItMTQsIGxpamlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+PiBkaWZmIC0tZ2l0IGEva2VybmVsL3ByaW50ay9wcmludGsuYyBiL2tlcm5lbC9wcmlu
dGsvcHJpbnRrLmMKPj4+IGluZGV4IDFlZjZmNzVkOTJmMS4uZDBkMjRlZTFkMWY0IDEwMDY0NAo+
Pj4gLS0tIGEva2VybmVsL3ByaW50ay9wcmludGsuYwo+Pj4gKysrIGIva2VybmVsL3ByaW50ay9w
cmludGsuYwo+Pj4gQEAgLTEwNjIsMjEgKzkyOCwxNiBAQCB2b2lkIGxvZ19idWZfdm1jb3JlaW5m
b19zZXR1cCh2b2lkKQo+Pj4gIHsKPj4+ICAJVk1DT1JFSU5GT19TWU1CT0wobG9nX2J1Zik7Cj4+
PiAgCVZNQ09SRUlORk9fU1lNQk9MKGxvZ19idWZfbGVuKTsKPj4KPj4gSSBub3RpY2UgdGhhdCB0
aGUgInByYiIocHJpbnRrIHRiIHN0YXRpYykgc3ltYm9sIGlzIG5vdCBleHBvcnRlZCBpbnRvCj4+
IHZtY29yZWluZm8gYXMgZm9sbG93czoKPj4KPj4gKwlWTUNPUkVJTkZPX1NZTUJPTChwcmIpOwo+
Pgo+PiBTaG91bGQgdGhlICJwcmIiKHByaW50ayB0YiBzdGF0aWMpIHN5bWJvbCBiZSBleHBvcnRl
ZCBpbnRvIHZtY29yZWluZm8/Cj4+IE90aGVyd2lzZSwgZG8geW91IGhhcHBlbiB0byBrbm93IGhv
dyB0byB3YWxrIHRocm91Z2ggdGhlIGxvZ19idWYgYW5kCj4+IGdldCBhbGwga2VybmVsIGxvZ3Mg
ZnJvbSB2bWNvcmU/Cj4gCj4gWW91IGFyZSBjb3JyZWN0LiBUaGlzIHdpbGwgbmVlZCB0byBiZSBl
eHBvcnRlZCBhcyB3ZWxsIHNvIHRoYXQgdGhlCj4gZGVzY3JpcHRvcnMgY2FuIGJlIGFjY2Vzc2Vk
LiAobG9nX2J1ZiBpcyBvbmx5IHRoZSBwdXJlIGh1bWFuLXJlYWRhYmxlCgpSZWFsbHkgYWdyZWUs
IGFuZCBJIGd1ZXNzIHRoYXQgdGhlcmUgbWF5IGJlIG1vcmUgc3RydWN0dXJlcyBhbmQgdGhlaXIg
b2Zmc2V0cwp0byBiZSBleHBvcnRlZCwgZm9yIGV4YW1wbGU6IHN0cnVjdCBwcmJfZGVzY19yaW5n
LCBzdHJ1Y3QgcHJiX2RhdGFfcmluZywgYW5kCnN0cnVjdCBwcmJfZGVzYywgZXRjLgoKVGhpcyBt
YWtlcyBzdXJlIHRoYXQgdG9vbHMoc3VjaCBhcyBtYWtlZHVtcGZpbGUgYW5kIGNyYXNoKSBjYW4g
YXBwcm9wcmlhdGVseQphY2Nlc3MgdGhlbS4gCgo+IHRleHQuKSBJIGFtIGN1cnJlbnRseSBoYWNr
aW5nIHRoZSBjcmFzaCB0b29sIHRvIHNlZSBleGFjdGx5IHdoYXQgbmVlZHMKPiB0byBiZSBtYWRl
IGF2YWlsYWJsZSBpbiBvcmRlciB0byBhY2Nlc3MgYWxsIHRoZSBkYXRhIG9mIHRoZSByaW5nYnVm
ZmVyLgo+IApJdCBtYWtlcyBzZW5zZSBhbmQgYXZvaWRzIGV4cG9ydGluZyB1bm5lY2Vzc2FyeSBz
eW1ib2xzIGFuZCBvZmZzZXRzLgoKVGhhbmtzLgpMaWFuYm8KCgo+IEpvaG4gT2duZXNzCj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFp
bGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
