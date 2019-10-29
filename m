Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4976E8011
	for <lists+kexec@lfdr.de>; Tue, 29 Oct 2019 07:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3bvpST/5sED3apjq2oGj0LIc5Y9apx4LuF6XrJdqSI=; b=tjYdtOi0IXoDgI
	TrJvpQ/QbI4PDU1G6507JIg0S3mDaC3VjJBNmdHVNOnBJHQdNhVbe8m5mem1VCQT5c8bu+zgJgWxL
	YaMCKVcHtCOtdU9XFu+Pkbh4/JPVnZ0pqasTf5XC6iF3iyAJTe7vOfJp16WjVWa3OPli0s9JHNC0G
	6ZQL3/dGttvq4ZdH5B3nFv0ta7eflKOGCCkvqwMX/OZCHkIlehdR3Zgvc//RCd9ISA9ceUcpWVRQT
	/Ai330eMZPpmvC/QUvIhgx/EhFzgEKMAIGgy4wJGAoWGHFT/n4847/kmXPTTzpfMXMpgqzyHWhTdZ
	6kWba50AbBFNuUmcNqLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKeN-0004t3-C6; Tue, 29 Oct 2019 06:06:39 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKeK-0004sa-DN
 for kexec@lists.infradead.org; Tue, 29 Oct 2019 06:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572329194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=isvAQ6ZHgpnMt4TeLNZ175bqGD0B5dKkBrPR8krvorM=;
 b=hO1+7BoQcNu4h981GTcLzIlqI6FyhQceQwzMMwdyJGCNtAZ+VvG0V+83l8ulp/P5SexmXY
 04vpfId/bTg556+naY9MLs+dQ7nwV/7WbSql+cO1z67nunpxBMTuT0Qxtbc4pAvb/XG+WR
 aSslSRG69j35Rs9kLNKeIOiFN0XJ7Ps=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-rUX5c4-WOli5AOXP2B1buQ-1; Tue, 29 Oct 2019 02:06:30 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D49071005500;
 Tue, 29 Oct 2019 06:06:28 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-41.pek2.redhat.com [10.72.12.41])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1608860BF1;
 Tue, 29 Oct 2019 06:06:16 +0000 (UTC)
Subject: Re: [PATCH 1/2 v7] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: Baoquan He <bhe@redhat.com>
References: <20191029021059.22070-1-lijiang@redhat.com>
 <20191029021059.22070-2-lijiang@redhat.com>
 <20191029052842.GA7616@MiWiFi-R3L-srv>
From: lijiang <lijiang@redhat.com>
Message-ID: <ffb0d2d3-31c3-fba0-e0f4-bd48999a033e@redhat.com>
Date: Tue, 29 Oct 2019 14:06:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191029052842.GA7616@MiWiFi-R3L-srv>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: rUX5c4-WOli5AOXP2B1buQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_230636_524983_112E79ED 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, horms@verge.net.au,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com, d.hatayama@fujitsu.com,
 vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDI55pelIDEzOjI4LCBCYW9xdWFuIEhlIOWGmemBkzoKPiBPbiAxMC8y
OS8xOSBhdCAxMDoxMGFtLCBMaWFuYm8gSmlhbmcgd3JvdGU6Cj4+IEtkdW1wIGtlcm5lbCB3aWxs
IHJldXNlIHRoZSBmaXJzdCA2NDBrIHJlZ2lvbiBiZWNhdXNlIHRoZSByZWFsIG1vZGUKPj4gdHJh
bXBvbGluZSBoYXMgdG8gd29yayBpbiB0aGlzIGFyZWEuIFdoZW4gdGhlIHZtY29yZSBpcyBkdW1w
ZWQsIHRoZQo+PiBvbGQgbWVtb3J5IGluIHRoaXMgYXJlYSBtYXkgYmUgYWNjZXNzZWQsIHRoZXJl
Zm9yZSwga2VybmVsIGhhcyB0bwo+PiBjb3B5IHRoZSBjb250ZW50cyBvZiB0aGUgZmlyc3QgNjQw
ayBhcmVhIHRvIGEgYmFja3VwIHJlZ2lvbiBzbyB0aGF0Cj4+IGtkdW1wIGtlcm5lbCBjYW4gcmVh
ZCB0aGUgb2xkIG1lbW9yeSBmcm9tIHRoZSBiYWNrdXAgYXJlYSBvZiB0aGUKPj4gZmlyc3QgNjQw
ayBhcmVhLCB3aGljaCBpcyBkb25lIGluIHRoZSBwdXJnYXRvcnkoKS4KPj4KPj4gQnV0LCB0aGUg
Y3VycmVudCBoYW5kbGluZyBvZiBjb3B5aW5nIHRoZSBmaXJzdCA2NDBrIGFyZWEgcnVucyBpbnRv
Cj4+IHByb2JsZW1zIHdoZW4gU01FIGlzIGVuYWJsZWQsIGtlcm5lbCBkb2VzIG5vdCBwcm9wZXJs
eSBjb3B5IHRoZXNlCj4+IG9sZCBtZW1vcnkgdG8gdGhlIGJhY2t1cCBhcmVhIGluIHRoZSBwdXJn
YXRvcnkoKSwgdGhlcmVieSwga2R1bXAKPj4ga2VybmVsIHJlYWRzIG91dCB0aGUgZW5jcnlwdGVk
IGNvbnRlbnRzLCBiZWNhdXNlIHRoZSBrZHVtcCBrZXJuZWwKPj4gbXVzdCBhY2Nlc3MgdGhlIGZp
cnN0IGtlcm5lbCdzIG1lbW9yeSB3aXRoIHRoZSBlbmNyeXB0aW9uIGJpdCBzZXQKPj4gd2hlbiBT
TUUgaXMgZW5hYmxlZCBpbiB0aGUgZmlyc3Qga2VybmVsLiBQbGVhc2UgcmVmZXIgdG8gdGhpcyBs
aW5rOgo+Pgo+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVn
LmNnaT9pZD0yMDQ3OTMKPj4KPj4gRmluYWxseSwgaXQgY2F1c2VzIHRoZSBmb2xsb3dpbmcgZXJy
b3JzLCBhbmQgdGhlIGNyYXNoIHRvb2wgZ2V0cwo+PiBpbnZhbGlkIHBvaW50ZXJzIHdoZW4gcGFy
c2luZyB0aGUgdm1jb3JlLgo+Pgo+PiBjcmFzaD4ga21lbSAtc3xncmVwIC1pIGludmFsaWQKPj4g
a21lbTogZG1hLWttYWxsb2MtNTEyOiBzbGFiOmZmZmZkNzc2ODAwMDFjMDAgaW52YWxpZCBmcmVl
cG9pbnRlcjphNjA4NmFjMDk5ZjBjNWE0Cj4+IGttZW06IGRtYS1rbWFsbG9jLTUxMjogc2xhYjpm
ZmZmZDc3NjgwMDAxYzAwIGludmFsaWQgZnJlZXBvaW50ZXI6YTYwODZhYzA5OWYwYzVhNAo+PiBj
cmFzaD4KPj4KPj4gVG8gYXZvaWQgdGhlIGFib3ZlIGVycm9ycywgd2hlbiB0aGUgY3Jhc2hrZXJu
ZWwgb3B0aW9uIGlzIHNwZWNpZmllZCwKPj4gbGV0cyByZXNlcnZlIHRoZSByZW1haW5pbmcgbG93
IDFNaUIgbWVtb3J5KGFmdGVyIHJlc2VydmluZyByZWFsIG1vZGUKPj4gbWVtb3J5KSBzbyB0aGF0
IHRoZSBhbGxvY2F0ZWQgbWVtb3J5IGRvZXMgbm90IGZhbGwgaW50byB0aGUgbG93IDFNaUIKPj4g
YXJlYSwgd2hpY2ggbWFrZXMgdXMgbm90IHRvIGNvcHkgdGhlIGZpcnN0IDY0MGsgY29udGVudCB0
byBhIGJhY2t1cAo+PiByZWdpb24gaW4gcHVyZ2F0b3J5KCkuIFRoaXMgaW5kaWNhdGVzIHRoYXQg
aXQgZG9lcyBub3QgbmVlZCB0byBiZQo+PiBpbmNsdWRlZCBpbiBjcmFzaCBkdW1wcyBvciB1c2Vk
IGZvciBhbnl0aGluZyBleGNlcHQgdGhlIHByb2Nlc3Nvcgo+PiB0cmFtcG9saW5lcyB0aGF0IG11
c3QgbGl2ZSBpbiB0aGUgbG93IDFNaUIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExpYW5ibyBKaWFu
ZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgo+PiAtLS0KPj4gIGFyY2gveDg2L2luY2x1ZGUvYXNtL2Ny
YXNoLmggfCAgNiArKysrKysKPj4gIGFyY2gveDg2L2tlcm5lbC9jcmFzaC5jICAgICAgfCAxNSAr
KysrKysrKysrKysrKysKPj4gIGFyY2gveDg2L3JlYWxtb2RlL2luaXQuYyAgICAgfCAgMiArKwo+
PiAgMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9h
cmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFzaC5oIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vY3Jhc2gu
aAo+PiBpbmRleCAwYWNmNWVlNDVhMjEuLjNlOTY2YTNkYzgyMyAxMDA2NDQKPj4gLS0tIGEvYXJj
aC94ODYvaW5jbHVkZS9hc20vY3Jhc2guaAo+PiArKysgYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9j
cmFzaC5oCj4+IEBAIC04LDQgKzgsMTAgQEAgaW50IGNyYXNoX3NldHVwX21lbW1hcF9lbnRyaWVz
KHN0cnVjdCBraW1hZ2UgKmltYWdlLAo+PiAgCQlzdHJ1Y3QgYm9vdF9wYXJhbXMgKnBhcmFtcyk7
Cj4+ICB2b2lkIGNyYXNoX3NtcF9zZW5kX3N0b3Aodm9pZCk7Cj4+ICAKPj4gKyNpZmRlZiBDT05G
SUdfS0VYRUNfQ09SRQo+PiArdm9pZCBfX2luaXQga2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQih2b2lk
KTsKPj4gKyNlbHNlCj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgX19pbml0IGtleGVjX3Jlc2VydmVf
bG93XzFNaUIodm9pZCkgeyB9Cj4+ICsjZW5kaWYKPj4gKwo+PiAgI2VuZGlmIC8qIF9BU01fWDg2
X0NSQVNIX0ggKi8KPj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jIGIvYXJj
aC94ODYva2VybmVsL2NyYXNoLmMKPj4gaW5kZXggZWI2NTFmYmRlOTJhLi4xNDRmNTE5YWVmMjkg
MTAwNjQ0Cj4+IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCj4+ICsrKyBiL2FyY2gveDg2
L2tlcm5lbC9jcmFzaC5jCj4+IEBAIC0yNCw2ICsyNCw3IEBACj4+ICAjaW5jbHVkZSA8bGludXgv
ZXhwb3J0Lmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4
L3ZtYWxsb2MuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9tZW1ibG9jay5oPgo+PiAgCj4+ICAjaW5j
bHVkZSA8YXNtL3Byb2Nlc3Nvci5oPgo+PiAgI2luY2x1ZGUgPGFzbS9oYXJkaXJxLmg+Cj4+IEBA
IC0zOSw2ICs0MCw3IEBACj4+ICAjaW5jbHVkZSA8YXNtL3ZpcnRleHQuaD4KPj4gICNpbmNsdWRl
IDxhc20vaW50ZWxfcHQuaD4KPj4gICNpbmNsdWRlIDxhc20vY3Jhc2guaD4KPj4gKyNpbmNsdWRl
IDxhc20vY21kbGluZS5oPgo+PiAgCj4+ICAvKiBVc2VkIHdoaWxlIHByZXBhcmluZyBtZW1vcnkg
bWFwIGVudHJpZXMgZm9yIHNlY29uZCBrZXJuZWwgKi8KPj4gIHN0cnVjdCBjcmFzaF9tZW1tYXBf
ZGF0YSB7Cj4+IEBAIC02OCw2ICs3MCwxOSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgY3B1X2NyYXNo
X3ZtY2xlYXJfbG9hZGVkX3ZtY3NzKHZvaWQpCj4+ICAJcmN1X3JlYWRfdW5sb2NrKCk7Cj4+ICB9
Cj4+ICAKPj4gKy8qCj4+ICsgKiBXaGVuIHRoZSBjcmFzaGtlcm5lbCBvcHRpb24gaXMgc3BlY2lm
aWVkLCBvbmx5IHVzZSB0aGUgbG93Cj4+ICsgKiAxTWlCIGZvciB0aGUgcmVhbCBtb2RlIHRyYW1w
b2xpbmUuCj4+ICsgKi8KPj4gK3ZvaWQgX19pbml0IGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9p
ZCkKPiAKPiBUaGFua3MgZm9yIHRoZSBlZmZvcnQsIExpYW5iby4gSSBiZWxpZXZlIGV2ZXJ5b25l
IGlzIGNvbmZpZGVudCB3aXRoIHRoaXMKPiBzb2x1dGlvbiBhbmQgZml4Lgo+IAo+IEkgaGF2ZSBh
IHRpbnkgY29uY2Vybiwgd2h5IHRoZSBmdW5jdGlvbiBuYW1lIGlzCj4ga2V4ZWNfcmVzZXJ2ZV9s
b3dfMU1pQigpLCBidXQgbm90IGtleGVjX3Jlc2VydmVfbG93XzFNKCk/CgpUaGFua3MgZm9yIHlv
dXIgY29tbWVudCwgQmFvcXVhbi4KCkl0IG1lYW5zIHRoYXQga2VybmVsIHdpbGwgcmVzZXJ2ZSAx
TSAnQnl0ZScgbWVtb3J5LCB0aGUgZnVuY3Rpb24gbmFtZSBkb2VzIG5vdApoYXZlIHNwZWNpYWwg
bWVhbmluZy4KCldvdWxkIHlvdSBtaW5kIGlmIGkgY2hhbmdlIGl0IHRvIHRoZSBjcmFzaF9yZXNl
cnZlX2xvd18xTSgpPwoKdm9pZCBfX2luaXQgY3Jhc2hfcmVzZXJ2ZV9sb3dfMU0odm9pZCkKClRo
YW5rcy4KTGlhbmJvCgo+IEkgc2VhcmNoZWQgaW4ga2VybmVsIGNvZGUgd2l0aCBiZWxvdyBmaWx0
ZXIsIGRpZG4ndCBzZWUgTWlCIGFwcGVhcmluZyBpbgo+IGEgZnVuY3Rpb24gbmFtZS4gSSBhbSBu
b3Qgc3VyZSBhYm91dCBpdCBlaXRoZXIsIGp1c3QgYXNrLgo+IAo+IGdpdCBncmVwICJfWzEtOV0q
TSAiIGFyY2gvIGtlcm5lbC8gbW0gaW5jbHVkZS8gZHJpdmVycy8gbmV0LyBpbml0IGZzIGNyeXB0
by8gY2VydHMvIGlwYyBsaWIKPiAKPiBUaGFua3MKPiBCYW9xdWFuCj4gCj4+ICt7Cj4+ICsJaWYg
KGNtZGxpbmVfZmluZF9vcHRpb24oYm9vdF9jb21tYW5kX2xpbmUsICJjcmFzaGtlcm5lbCIsCj4+
ICsJCQkJTlVMTCwgMCkgPiAwKSB7Cj4+ICsJCW1lbWJsb2NrX3Jlc2VydmUoMCwgMTw8MjApOwo+
PiArCQlwcl9pbmZvKCJSZXNlcnZpbmcgdGhlIGxvdyAxTWlCIG9mIG1lbW9yeSBmb3IgY3Jhc2hr
ZXJuZWxcbiIpOwo+PiArCX0KPj4gK30KPj4gKwo+PiAgI2lmIGRlZmluZWQoQ09ORklHX1NNUCkg
JiYgZGVmaW5lZChDT05GSUdfWDg2X0xPQ0FMX0FQSUMpCj4+ICAKPj4gIHN0YXRpYyB2b2lkIGtk
dW1wX25taV9jYWxsYmFjayhpbnQgY3B1LCBzdHJ1Y3QgcHRfcmVncyAqcmVncykKPj4gZGlmZiAt
LWdpdCBhL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQu
Ywo+PiBpbmRleCA3ZGNlMzljOGMwMzQuLmI4YmJkMDAxN2NhOCAxMDA2NDQKPj4gLS0tIGEvYXJj
aC94ODYvcmVhbG1vZGUvaW5pdC5jCj4+ICsrKyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYwo+
PiBAQCAtOCw2ICs4LDcgQEAKPj4gICNpbmNsdWRlIDxhc20vcGd0YWJsZS5oPgo+PiAgI2luY2x1
ZGUgPGFzbS9yZWFsbW9kZS5oPgo+PiAgI2luY2x1ZGUgPGFzbS90bGJmbHVzaC5oPgo+PiArI2lu
Y2x1ZGUgPGFzbS9jcmFzaC5oPgo+PiAgCj4+ICBzdHJ1Y3QgcmVhbF9tb2RlX2hlYWRlciAqcmVh
bF9tb2RlX2hlYWRlcjsKPj4gIHUzMiAqdHJhbXBvbGluZV9jcjRfZmVhdHVyZXM7Cj4+IEBAIC0z
NCw2ICszNSw3IEBAIHZvaWQgX19pbml0IHJlc2VydmVfcmVhbF9tb2RlKHZvaWQpCj4+ICAKPj4g
IAltZW1ibG9ja19yZXNlcnZlKG1lbSwgc2l6ZSk7Cj4+ICAJc2V0X3JlYWxfbW9kZV9tZW0obWVt
KTsKPj4gKwlrZXhlY19yZXNlcnZlX2xvd18xTWlCKCk7Cj4+ICB9Cj4+ICAKPj4gIHN0YXRpYyB2
b2lkIF9faW5pdCBzZXR1cF9yZWFsX21vZGUodm9pZCkKPj4gLS0gCj4+IDIuMTcuMQo+PgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxp
bmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
