Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF054E306F
	for <lists+kexec@lfdr.de>; Thu, 24 Oct 2019 13:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTc1g65/oJQ8LbxuocpcTPDBbsk7XhceHChk2l1kUcA=; b=aPZUBthvDuFm6Y
	C3+YiiPiXu2AEs2+BOiNfFBu+quzfWfM3ajxSopr07BRn+uHJgDYyFcqpIWw86gBwjCC0CQnKz8dd
	sUbtsr/Uyttefi8HGCCitnXBtj4LrrVxtskLLoBQB3bsxRxaBzaVhmZFoAWNhxuoHtOSiMG4jDaA9
	xHch0NbGKqZ8bC4xnTxGDGESz2ey8K9ZX1b8Hx4J9a39olXUrc6RiNIwt717pc+V5NicJmqx7FcIm
	bTQ898u9UXWZtI6yExbKWGvguAkEBpvTG2+w31WBamR9W6iQ4eUTi1IlzgVCUh3qJmCP0HV7jqGey
	JAxYCUOwfMw/P31d12og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbNQ-0003xI-AC; Thu, 24 Oct 2019 11:34:00 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbNM-0003wm-7o
 for kexec@lists.infradead.org; Thu, 24 Oct 2019 11:33:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571916834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lIFLfDfjBnCHO9wGvwrjWD1QKeFnwmfjzMZGsKDtHiE=;
 b=a4tf9izTL4TTlcRO1CIiTD/0cmOWKGxGwqRFn67bKqmiql0OO2uCFze2I1wK1xykNdehd0
 wI8DQuflfkDdgRMZKSUyGeDeym59RiNd8aYrEVEWLiTe+ojWeOFIZgqbtPQxqt1nxIcezd
 BbCw+Zh/uBsB7ILTwGSHmwO1G4J23pI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-qkC7PKaAN_-m9BQX-UDVhg-1; Thu, 24 Oct 2019 07:33:51 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A82C107AD31;
 Thu, 24 Oct 2019 11:33:50 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 688FE60852;
 Thu, 24 Oct 2019 11:33:32 +0000 (UTC)
Subject: Re: [PATCH 1/2 v5] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: Simon Horman <horms@verge.net.au>
References: <20191023141912.29110-1-lijiang@redhat.com>
 <20191023141912.29110-2-lijiang@redhat.com>
 <20191024100719.GC11441@verge.net.au>
From: lijiang <lijiang@redhat.com>
Message-ID: <4c1c4b78-23f0-a2b9-4be7-5bab0335f10a@redhat.com>
Date: Thu, 24 Oct 2019 19:33:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191024100719.GC11441@verge.net.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: qkC7PKaAN_-m9BQX-UDVhg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_043356_353876_912F1B28 
X-CRM114-Status: GOOD (  29.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com,
 "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDI05pelIDE4OjA3LCBTaW1vbiBIb3JtYW4g5YaZ6YGTOgo+IEhpIExp
bmJvLAo+IAo+IHRoYW5rcyBmb3IgeW91ciBwYXRjaC4KPiAKPiBPbiBXZWQsIE9jdCAyMywgMjAx
OSBhdCAxMDoxOToxMVBNICswODAwLCBMaWFuYm8gSmlhbmcgd3JvdGU6Cj4+IEtkdW1wIGtlcm5l
bCB3aWxsIHJldXNlIHRoZSBmaXJzdCA2NDBrIHJlZ2lvbiBiZWNhdXNlIHRoZSByZWFsIG1vZGUK
Pj4gdHJhbXBvbGluZSBoYXMgdG8gd29yayBpbiB0aGlzIGFyZWEuIFdoZW4gdGhlIHZtY29yZSBp
cyBkdW1wZWQsIHRoZQo+PiBvbGQgbWVtb3J5IGluIHRoaXMgYXJlYSBtYXkgYmUgYWNjZXNzZWQs
IHRoZXJlZm9yZSwga2VybmVsIGhhcyB0bwo+PiBjb3B5IHRoZSBjb250ZW50cyBvZiB0aGUgZmly
c3QgNjQwayBhcmVhIHRvIGEgYmFja3VwIHJlZ2lvbiBzbyB0aGF0Cj4+IGtkdW1wIGtlcm5lbCBj
YW4gcmVhZCB0aGUgb2xkIG1lbW9yeSBmcm9tIHRoZSBiYWNrdXAgYXJlYSBvZiB0aGUKPj4gZmly
c3QgNjQwayBhcmVhLCB3aGljaCBpcyBkb25lIGluIHRoZSBwdXJnYXRvcnkoKS4KPj4KPj4gQnV0
LCB0aGUgY3VycmVudCBoYW5kbGluZyBvZiBjb3B5aW5nIHRoZSBmaXJzdCA2NDBrIGFyZWEgcnVu
cyBpbnRvCj4+IHByb2JsZW1zIHdoZW4gU01FIGlzIGVuYWJsZWQsIGtlcm5lbCBkb2VzIG5vdCBw
cm9wZXJseSBjb3B5IHRoZXNlCj4+IG9sZCBtZW1vcnkgdG8gdGhlIGJhY2t1cCBhcmVhIGluIHRo
ZSBwdXJnYXRvcnkoKSwgdGhlcmVieSwga2R1bXAKPj4ga2VybmVsIHJlYWRzIG91dCB0aGUgZW5j
cnlwdGVkIGNvbnRlbnRzLCBiZWNhdXNlIHRoZSBrZHVtcCBrZXJuZWwKPj4gbXVzdCBhY2Nlc3Mg
dGhlIGZpcnN0IGtlcm5lbCdzIG1lbW9yeSB3aXRoIHRoZSBlbmNyeXB0aW9uIGJpdCBzZXQKPj4g
d2hlbiBTTUUgaXMgZW5hYmxlZCBpbiB0aGUgZmlyc3Qga2VybmVsLiBQbGVhc2UgcmVmZXIgdG8g
dGhpcyBsaW5rOgo+Pgo+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3No
b3dfYnVnLmNnaT9pZD0yMDQ3OTMKPj4KPj4gRmluYWxseSwgaXQgY2F1c2VzIHRoZSBmb2xsb3dp
bmcgZXJyb3JzLCBhbmQgdGhlIGNyYXNoIHRvb2wgZ2V0cwo+PiBpbnZhbGlkIHBvaW50ZXJzIHdo
ZW4gcGFyc2luZyB0aGUgdm1jb3JlLgo+Pgo+PiBjcmFzaD4ga21lbSAtc3xncmVwIC1pIGludmFs
aWQKPj4ga21lbTogZG1hLWttYWxsb2MtNTEyOiBzbGFiOmZmZmZkNzc2ODAwMDFjMDAgaW52YWxp
ZCBmcmVlcG9pbnRlcjphNjA4NmFjMDk5ZjBjNWE0Cj4+IGttZW06IGRtYS1rbWFsbG9jLTUxMjog
c2xhYjpmZmZmZDc3NjgwMDAxYzAwIGludmFsaWQgZnJlZXBvaW50ZXI6YTYwODZhYzA5OWYwYzVh
NAo+PiBjcmFzaD4KPj4KPj4gVG8gYXZvaWQgdGhlIGFib3ZlIGVycm9ycywgd2hlbiB0aGUgY3Jh
c2hrZXJuZWwgb3B0aW9uIGlzIHNwZWNpZmllZCwKPj4gbGV0cyByZXNlcnZlIHRoZSByZW1haW5p
bmcgbG93IDFNaUIgbWVtb3J5KGFmdGVyIHJlc2VydmluZyByZWFsIG1vZGUKPj4gbWVtb3J5KSBz
byB0aGF0IHRoZSBhbGxvY2F0ZWQgbWVtb3J5IGRvZXMgbm90IGZhbGwgaW50byB0aGUgbG93IDFN
aUIKPj4gYXJlYSwgd2hpY2ggbWFrZXMgdXMgbm90IHRvIGNvcHkgdGhlIGZpcnN0IDY0MGsgY29u
dGVudCB0byBhIGJhY2t1cAo+PiByZWdpb24gaW4gcHVyZ2F0b3J5KCkuIFRoaXMgaW5kaWNhdGVz
IHRoYXQgaXQgZG9lcyBub3QgbmVlZCB0byBiZQo+PiBpbmNsdWRlZCBpbiBjcmFzaCBkdW1wcyBv
ciB1c2VkIGZvciBhbnl0aGluZyBleGNlcHQgdGhlIHByb2Nlc3Nvcgo+PiB0cmFtcG9saW5lcyB0
aGF0IG11c3QgbGl2ZSBpbiB0aGUgbG93IDFNaUIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExpYW5i
byBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgo+PiAtLS0KPj4gQlRXOkkgYWxzbyB0cmllZCB0
byBmaXggdGhlIGFib3ZlIHByb2JsZW0gaW4gcHVyZ2F0b3J5KCksIGJ1dCB0aGVyZQo+PiBhcmUg
dG9vIG1hbnkgcmVzdHJpY3RzIGluIHB1cmdhdG9yeSgpIGNvbnRleHQsIGZvciBleGFtcGxlOiBp
IGNhbid0Cj4+IGFsbG9jYXRlIG5ldyBtZW1vcnkgdG8gY3JlYXRlIHRoZSBpZGVudGl0eSBtYXBw
aW5nIHBhZ2UgdGFibGUgZm9yCj4+IFNNRSBzaXR1YXRpb24uCj4+Cj4+IEN1cnJlbnRseSwgdGhl
cmUgYXJlIHR3byBwbGFjZXMgd2hlcmUgdGhlIGZpcnN0IDY0MGsgYXJlYSBpcyBuZWVkZWQsCj4+
IHRoZSBmaXJzdCBvbmUgaXMgaW4gdGhlIGZpbmRfdHJhbXBvbGluZV9wbGFjZW1lbnQoKSwgYW5v
dGhlciBvbmUgaXMKPj4gaW4gdGhlIHJlc2VydmVfcmVhbF9tb2RlKCksIGFuZCB0aGVpciBjb250
ZW50IGRvZXNuJ3QgbWF0dGVyLgo+Pgo+PiBJbiBhZGRpdGlvbiwgYWxzbyBuZWVkIHRvIGNsZWFu
IGFsbCB0aGUgY29kZSByZWxhdGVkIHRvIHRoZSBiYWNrdXAKPj4gcmVnaW9uIGxhdGVyLgo+Pgo+
PiAgYXJjaC94ODYvcmVhbG1vZGUvaW5pdC5jIHwgIDIgKysKPj4gIGluY2x1ZGUvbGludXgva2V4
ZWMuaCAgICB8ICAyICsrCj4+ICBrZXJuZWwva2V4ZWNfY29yZS5jICAgICAgfCAxMyArKysrKysr
KysrKysrCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAt
LWdpdCBhL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQu
Ywo+PiBpbmRleCA3ZGNlMzljOGMwMzQuLjA2NGNjNzlhMDE1ZCAxMDA2NDQKPj4gLS0tIGEvYXJj
aC94ODYvcmVhbG1vZGUvaW5pdC5jCj4+ICsrKyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYwo+
PiBAQCAtMyw2ICszLDcgQEAKPj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4+ICAjaW5jbHVk
ZSA8bGludXgvbWVtYmxvY2suaD4KPj4gICNpbmNsdWRlIDxsaW51eC9tZW1fZW5jcnlwdC5oPgo+
PiArI2luY2x1ZGUgPGxpbnV4L2tleGVjLmg+Cj4+ICAKPj4gICNpbmNsdWRlIDxhc20vc2V0X21l
bW9yeS5oPgo+PiAgI2luY2x1ZGUgPGFzbS9wZ3RhYmxlLmg+Cj4+IEBAIC0zNCw2ICszNSw3IEBA
IHZvaWQgX19pbml0IHJlc2VydmVfcmVhbF9tb2RlKHZvaWQpCj4+ICAKPj4gIAltZW1ibG9ja19y
ZXNlcnZlKG1lbSwgc2l6ZSk7Cj4+ICAJc2V0X3JlYWxfbW9kZV9tZW0obWVtKTsKPj4gKwlrZXhl
Y19yZXNlcnZlX2xvd18xTWlCKCk7Cj4+ICB9Cj4+ICAKPj4gIHN0YXRpYyB2b2lkIF9faW5pdCBz
ZXR1cF9yZWFsX21vZGUodm9pZCkKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgva2V4ZWMu
aCBiL2luY2x1ZGUvbGludXgva2V4ZWMuaAo+PiBpbmRleCAxNzc2ZWIyZTQzYTQuLjMwYWNmMWQ3
MzhiYyAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51eC9rZXhlYy5oCj4+ICsrKyBiL2luY2x1
ZGUvbGludXgva2V4ZWMuaAo+PiBAQCAtMzA2LDYgKzMwNiw3IEBAIGV4dGVybiB2b2lkIF9fY3Jh
c2hfa2V4ZWMoc3RydWN0IHB0X3JlZ3MgKik7Cj4+ICBleHRlcm4gdm9pZCBjcmFzaF9rZXhlYyhz
dHJ1Y3QgcHRfcmVncyAqKTsKPj4gIGludCBrZXhlY19zaG91bGRfY3Jhc2goc3RydWN0IHRhc2tf
c3RydWN0ICopOwo+PiAgaW50IGtleGVjX2NyYXNoX2xvYWRlZCh2b2lkKTsKPj4gK3ZvaWQgX19p
bml0IGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCk7Cj4+ICB2b2lkIGNyYXNoX3NhdmVfY3B1
KHN0cnVjdCBwdF9yZWdzICpyZWdzLCBpbnQgY3B1KTsKPj4gIGV4dGVybiBpbnQga2ltYWdlX2Ny
YXNoX2NvcHlfdm1jb3JlaW5mbyhzdHJ1Y3Qga2ltYWdlICppbWFnZSk7Cj4+ICAKPj4gQEAgLTM5
Nyw2ICszOTgsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgX19jcmFzaF9rZXhlYyhzdHJ1Y3QgcHRf
cmVncyAqcmVncykgeyB9Cj4+ICBzdGF0aWMgaW5saW5lIHZvaWQgY3Jhc2hfa2V4ZWMoc3RydWN0
IHB0X3JlZ3MgKnJlZ3MpIHsgfQo+PiAgc3RhdGljIGlubGluZSBpbnQga2V4ZWNfc2hvdWxkX2Ny
YXNoKHN0cnVjdCB0YXNrX3N0cnVjdCAqcCkgeyByZXR1cm4gMDsgfQo+PiAgc3RhdGljIGlubGlu
ZSBpbnQga2V4ZWNfY3Jhc2hfbG9hZGVkKHZvaWQpIHsgcmV0dXJuIDA7IH0KPj4gK3N0YXRpYyBp
bmxpbmUgdm9pZCBfX2luaXQga2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQih2b2lkKSB7IH0KPj4gICNk
ZWZpbmUga2V4ZWNfaW5fcHJvZ3Jlc3MgZmFsc2UKPj4gICNlbmRpZiAvKiBDT05GSUdfS0VYRUNf
Q09SRSAqLwo+PiAgCj4+IGRpZmYgLS1naXQgYS9rZXJuZWwva2V4ZWNfY29yZS5jIGIva2VybmVs
L2tleGVjX2NvcmUuYwo+PiBpbmRleCAxNWQ3MGE5MGI1MGQuLjViZDg5ZjFmZWU0MiAxMDA2NDQK
Pj4gLS0tIGEva2VybmVsL2tleGVjX2NvcmUuYwo+PiArKysgYi9rZXJuZWwva2V4ZWNfY29yZS5j
Cj4+IEBAIC0zNyw2ICszNyw3IEBACj4+ICAjaW5jbHVkZSA8bGludXgvY29tcGlsZXIuaD4KPj4g
ICNpbmNsdWRlIDxsaW51eC9odWdldGxiLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvZnJhbWUuaD4K
Pj4gKyNpbmNsdWRlIDxsaW51eC9tZW1ibG9jay5oPgo+PiAgCj4+ICAjaW5jbHVkZSA8YXNtL3Bh
Z2UuaD4KPj4gICNpbmNsdWRlIDxhc20vc2VjdGlvbnMuaD4KPj4gQEAgLTcwLDYgKzcxLDE4IEBA
IHN0cnVjdCByZXNvdXJjZSBjcmFzaGtfbG93X3JlcyA9IHsKPj4gIAkuZGVzYyAgPSBJT1JFU19E
RVNDX0NSQVNIX0tFUk5FTAo+PiAgfTsKPj4gIAo+PiArLyoKPj4gKyAqIFdoZW4gdGhlIGNyYXNo
a2VybmVsIG9wdGlvbiBpcyBzcGVjaWZpZWQsIG9ubHkgdXNlIHRoZSBsb3cKPj4gKyAqIDFNaUIg
Zm9yIHRoZSByZWFsIG1vZGUgdHJhbXBvbGluZS4KPj4gKyAqLwo+PiArdm9pZCBfX2luaXQga2V4
ZWNfcmVzZXJ2ZV9sb3dfMU1pQih2b2lkKQo+PiArewo+PiArCWlmIChzdHJzdHIoYm9vdF9jb21t
YW5kX2xpbmUsICJjcmFzaGtlcm5lbD0iKSkgewo+IAo+IENvdWxkIHlvdSBjb21tZW50IG9uIHRo
ZSBpc3N1ZSBvZiB1c2luZyBzdHJzdHIgd2hpY2gKPiB3YXMgcmFpc2VkIGJ5IEhhdGF5YW1hLXNh
biBpbiByZXNwb25zZSB0byBhbiBlYXJsaWVyIHJldmlzaW9uCj4gb2YgdGhpcyBwYXRjaD8KPiAK
ClRoYW5rIHlvdSwgU2ltb24gYW5kIEhhdGF5YW1hLXNhbi4gTGV0cyB0YWxrIGFib3V0IGl0IGhl
cmUuCgo+IHN0cnN0cigpIG1hdGNoZXMgZm9yIGV4YW1wbGUsIEFOWUVYVFJBQ0hBUkFDVEVSU2Ny
YXNoa2VybmVsPUFOWUVYVFJBQ0hBUkFDVEVSUy4KPiAKPiBJcyBpdCBlbm91Z2ggdG8gdXNlIGNt
ZGxpbmVfZmluZF9vcHRpb25fYm9vbCgpPwo+IAoKVGhlIGNtZGxpbmVfZmluZF9vcHRpb25fYm9v
bCgpIHdpbGwgZmluZCBhIGJvb2xlYW4gb3B0aW9uLCBidXQgdGhlIGNyYXNoa2VybmVsIG9wdGlv
bgppcyBub3QgYSBib29sZWFuIG9wdGlvbiwgbWF5YmUgaXQgbG9va3Mgb2RkLiBTbywgc2hvdWxk
IHdlIHVzZSB0aGUgY21kbGluZV9maW5kX29wdGlvbigpCmJldHRlcj8KCisjaW5jbHVkZSA8YXNt
L2NtZGxpbmUuaD4KCiB2b2lkIF9faW5pdCBrZXhlY19yZXNlcnZlX2xvd18xTWlCKHZvaWQpCiB7
Ci0gICAgICAgaWYgKHN0cnN0cihib290X2NvbW1hbmRfbGluZSwgImNyYXNoa2VybmVsPSIpKSB7
CisgICAgICAgY2hhciBidWZmZXJbNF07CisKKyAgICAgICBpZiAoY21kbGluZV9maW5kX29wdGlv
bihib290X2NvbW1hbmRfbGluZSwgImNyYXNoa2VybmVsPSIsCisgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYnVmZmVyLCBzaXplb2YoYnVmZmVyKSkpIHsKICAgICAgICAgICAgICAgIG1l
bWJsb2NrX3Jlc2VydmUoMCwgMTw8MjApOwogICAgICAgICAgICAgICAgcHJfaW5mbygiUmVzZXJ2
aW5nIHRoZSBsb3cgMU1pQiBvZiBtZW1vcnkgZm9yIGNyYXNoa2VybmVsXG4iKTsKICAgICAgICB9
CgpBbmQgaGVyZSwgbm8gbmVlZCB0byBwYXJzZSB0aGUgYXJndW1lbnRzIG9mIGNyYXNoa2VybmVs
KHNvbWV0aW1lcywgd2hpY2ggaGFzIGEKY29tcGxpY2F0ZWQgc3ludGF4KSwgc28gdGhlIHNpemUg
b2YgYnVmZmVyIHNob3VsZCBiZSBlbm91Z2guIFdoYXQncyB5b3VyIG9waW5pb24/CgpUaGFua3MK
TGlhbmJvCgo+IFRoYW5rcyBpbiBhZHZhbmNlIQo+IAo+PiArCQltZW1ibG9ja19yZXNlcnZlKDAs
IDE8PDIwKTsKPj4gKwkJcHJfaW5mbygiUmVzZXJ2aW5nIHRoZSBsb3cgMU1pQiBvZiBtZW1vcnkg
Zm9yIGNyYXNoa2VybmVsXG4iKTsKPj4gKwl9Cj4+ICt9Cj4+ICsKPj4gIGludCBrZXhlY19zaG91
bGRfY3Jhc2goc3RydWN0IHRhc2tfc3RydWN0ICpwKQo+PiAgewo+PiAgCS8qCj4+IC0tIAo+PiAy
LjE3LjEKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4+IGtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcK
Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo+PgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1h
aWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
