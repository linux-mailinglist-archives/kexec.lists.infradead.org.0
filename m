Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C95E6B7B
	for <lists+kexec@lfdr.de>; Mon, 28 Oct 2019 04:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Le9uRwpB1UiFpDvlHwnwayNOGNxZN8Dzf5Fhjql3a8M=; b=RbKMXJthT3OvMW
	u7hJzAs3GYlDx5vO4clr5yBxl/zdb1umZEE5dwmXNaMPTWxSOKKOiz3/jgnGLUDVm0KFXcNFHIxqY
	ISgaCIhLPkoOV4cs9FvonJK3lASn0Zzqvwc5fSabh1hcYsjyN0vhgFaQDjbV9W62LDGUBG+BnK7VE
	Lw4LT2XkuPPM/S9LoDRh8nJVi+AMFydqTsnOcjkZeHHAF7fNDLrZRVbVkT2i6V4SYu0WZ+4gpRzDE
	KZEwurrUhuGoh3r8zIr631zTpFYcoxWsxaf4XibCzM1uxzvEmyxFwVp8WBKgoBgi7quRxd++vi75X
	h4y3V7DUK5Vs2nkAnefg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvqn-0007BO-WA; Mon, 28 Oct 2019 03:37:50 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvqk-0007B5-9T
 for kexec@lists.infradead.org; Mon, 28 Oct 2019 03:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572233864;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zZHaEr3ru+xV7/Kjx7LWFNlModN0mirw+1TlzsK6m4A=;
 b=DeZ47NeMGMSLiOQLvgG3U5eUMc/ZSo+7ZE7lZRq9l9evWwbtrbSwjKGO0nlyQcBw5swWkU
 BEgi19BCwznbDQbSknUS1ueqtOOwW/xKX2fCW9hmu9e3Qirah1YX0Ke5qQC71aXhEmyB2Q
 w0V7EWaRY3kQWLDLYRW4EfnkWiKFGcY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-287-HOL_lykHNO6SzZneQw0dLg-1; Sun, 27 Oct 2019 23:37:38 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55E5B1800DCB;
 Mon, 28 Oct 2019 03:37:37 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-41.pek2.redhat.com [10.72.12.41])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 26C0819481;
 Mon, 28 Oct 2019 03:37:25 +0000 (UTC)
Subject: Re: [PATCH 1/2 v6] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: Dave Young <dyoung@redhat.com>
References: <20191028024551.4278-1-lijiang@redhat.com>
 <20191028024551.4278-2-lijiang@redhat.com>
 <20191028031915.GA6945@dhcp-128-65.nay.redhat.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <3cbc93b4-c51c-99fb-0159-05c338b2645f@redhat.com>
Date: Mon, 28 Oct 2019 11:37:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191028031915.GA6945@dhcp-128-65.nay.redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: HOL_lykHNO6SzZneQw0dLg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_203746_407626_B81FDD84 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 bp@alien8.de, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDI45pelIDExOjE5LCBEYXZlIFlvdW5nIOWGmemBkzoKPiBPbiAxMC8y
OC8xOSBhdCAxMDo0NWFtLCBMaWFuYm8gSmlhbmcgd3JvdGU6Cj4+IEtkdW1wIGtlcm5lbCB3aWxs
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
ZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgo+PiAtLS0KPj4gQlRXOkkgYWxzbyB0cmllZCB0byBmaXgg
dGhlIGFib3ZlIHByb2JsZW0gaW4gcHVyZ2F0b3J5KCksIGJ1dCB0aGVyZQo+PiBhcmUgdG9vIG1h
bnkgcmVzdHJpY3RzIGluIHB1cmdhdG9yeSgpIGNvbnRleHQsIGZvciBleGFtcGxlOiBpIGNhbid0
Cj4+IGFsbG9jYXRlIG5ldyBtZW1vcnkgdG8gY3JlYXRlIHRoZSBpZGVudGl0eSBtYXBwaW5nIHBh
Z2UgdGFibGUgZm9yCj4+IFNNRSBzaXR1YXRpb24uCj4+Cj4+IEN1cnJlbnRseSwgdGhlcmUgYXJl
IHR3byBwbGFjZXMgd2hlcmUgdGhlIGZpcnN0IDY0MGsgYXJlYSBpcyBuZWVkZWQsCj4+IHRoZSBm
aXJzdCBvbmUgaXMgaW4gdGhlIGZpbmRfdHJhbXBvbGluZV9wbGFjZW1lbnQoKSwgYW5vdGhlciBv
bmUgaXMKPj4gaW4gdGhlIHJlc2VydmVfcmVhbF9tb2RlKCksIGFuZCB0aGVpciBjb250ZW50IGRv
ZXNuJ3QgbWF0dGVyLgo+Pgo+PiBJbiBhZGRpdGlvbiwgYWxzbyBuZWVkIHRvIGNsZWFuIGFsbCB0
aGUgY29kZSByZWxhdGVkIHRvIHRoZSBiYWNrdXAKPj4gcmVnaW9uIGxhdGVyLgo+Pgo+PiAgYXJj
aC94ODYva2VybmVsL21hY2hpbmVfa2V4ZWNfNjQuYyB8IDE1ICsrKysrKysrKysrKysrKwo+PiAg
YXJjaC94ODYvcmVhbG1vZGUvaW5pdC5jICAgICAgICAgICB8ICAyICsrCj4+ICBpbmNsdWRlL2xp
bnV4L2tleGVjLmggICAgICAgICAgICAgIHwgIDIgKysKPj4gIGtlcm5lbC9rZXhlY19jb3JlLmMg
ICAgICAgICAgICAgICAgfCAgMyArKysKPj4gIDQgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9u
cygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYva2VybmVsL21hY2hpbmVfa2V4ZWNfNjQu
YyBiL2FyY2gveDg2L2tlcm5lbC9tYWNoaW5lX2tleGVjXzY0LmMKPj4gaW5kZXggNWRjZDQzOGFk
OGYyLi40MmQ3YzE1YzQ1ZjEgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9tYWNoaW5l
X2tleGVjXzY0LmMKPj4gKysrIGIvYXJjaC94ODYva2VybmVsL21hY2hpbmVfa2V4ZWNfNjQuYwo+
PiBAQCAtMTcsNiArMTcsNyBAQAo+PiAgI2luY2x1ZGUgPGxpbnV4L3N1c3BlbmQuaD4KPj4gICNp
bmNsdWRlIDxsaW51eC92bWFsbG9jLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvZWZpLmg+Cj4+ICsj
aW5jbHVkZSA8bGludXgvbWVtYmxvY2suaD4KPj4gIAo+PiAgI2luY2x1ZGUgPGFzbS9pbml0Lmg+
Cj4+ICAjaW5jbHVkZSA8YXNtL3BndGFibGUuaD4KPj4gQEAgLTI3LDYgKzI4LDcgQEAKPj4gICNp
bmNsdWRlIDxhc20va2V4ZWMtYnppbWFnZTY0Lmg+Cj4+ICAjaW5jbHVkZSA8YXNtL3NldHVwLmg+
Cj4+ICAjaW5jbHVkZSA8YXNtL3NldF9tZW1vcnkuaD4KPj4gKyNpbmNsdWRlIDxhc20vY21kbGlu
ZS5oPgo+PiAgCj4+ICAjaWZkZWYgQ09ORklHX0FDUEkKPj4gIC8qCj4+IEBAIC02ODcsMyArNjg5
LDE2IEBAIHZvaWQgYXJjaF9rZXhlY19wcmVfZnJlZV9wYWdlcyh2b2lkICp2YWRkciwgdW5zaWdu
ZWQgaW50IHBhZ2VzKQo+PiAgCSAqLwo+PiAgCXNldF9tZW1vcnlfZW5jcnlwdGVkKCh1bnNpZ25l
ZCBsb25nKXZhZGRyLCBwYWdlcyk7Cj4+ICB9Cj4+ICsKPj4gKy8qCj4+ICsgKiBXaGVuIHRoZSBj
cmFzaGtlcm5lbCBvcHRpb24gaXMgc3BlY2lmaWVkLCBvbmx5IHVzZSB0aGUgbG93Cj4+ICsgKiAx
TWlCIGZvciB0aGUgcmVhbCBtb2RlIHRyYW1wb2xpbmUuCj4+ICsgKi8KPj4gK3ZvaWQgX19pbml0
IGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCkKPj4gK3sKPj4gKwlpZiAoY21kbGluZV9maW5k
X29wdGlvbihib290X2NvbW1hbmRfbGluZSwgImNyYXNoa2VybmVsIiwKPj4gKwkJCQlOVUxMLCAw
KSA+IDApIHsKPj4gKwkJbWVtYmxvY2tfcmVzZXJ2ZSgwLCAxPDwyMCk7Cj4+ICsJCXByX2luZm8o
IlJlc2VydmluZyB0aGUgbG93IDFNaUIgb2YgbWVtb3J5IGZvciBjcmFzaGtlcm5lbFxuIik7Cj4+
ICsJfQo+PiArfQo+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvcmVhbG1vZGUvaW5pdC5jIGIvYXJj
aC94ODYvcmVhbG1vZGUvaW5pdC5jCj4+IGluZGV4IDdkY2UzOWM4YzAzNC4uMDY0Y2M3OWEwMTVk
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMKPj4gKysrIGIvYXJjaC94
ODYvcmVhbG1vZGUvaW5pdC5jCj4+IEBAIC0zLDYgKzMsNyBAQAo+PiAgI2luY2x1ZGUgPGxpbnV4
L3NsYWIuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9tZW1ibG9jay5oPgo+PiAgI2luY2x1ZGUgPGxp
bnV4L21lbV9lbmNyeXB0Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgva2V4ZWMuaD4KPj4gIAo+PiAg
I2luY2x1ZGUgPGFzbS9zZXRfbWVtb3J5Lmg+Cj4+ICAjaW5jbHVkZSA8YXNtL3BndGFibGUuaD4K
Pj4gQEAgLTM0LDYgKzM1LDcgQEAgdm9pZCBfX2luaXQgcmVzZXJ2ZV9yZWFsX21vZGUodm9pZCkK
Pj4gIAo+PiAgCW1lbWJsb2NrX3Jlc2VydmUobWVtLCBzaXplKTsKPj4gIAlzZXRfcmVhbF9tb2Rl
X21lbShtZW0pOwo+PiArCWtleGVjX3Jlc2VydmVfbG93XzFNaUIoKTsKPj4gIH0KPj4gIAo+PiAg
c3RhdGljIHZvaWQgX19pbml0IHNldHVwX3JlYWxfbW9kZSh2b2lkKQo+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9rZXhlYy5oIGIvaW5jbHVkZS9saW51eC9rZXhlYy5oCj4+IGluZGV4IDE3
NzZlYjJlNDNhNC4uOTg4YmYyZGU1MWE3IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2tl
eGVjLmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9rZXhlYy5oCj4+IEBAIC0zMDYsNiArMzA2LDcg
QEAgZXh0ZXJuIHZvaWQgX19jcmFzaF9rZXhlYyhzdHJ1Y3QgcHRfcmVncyAqKTsKPj4gIGV4dGVy
biB2b2lkIGNyYXNoX2tleGVjKHN0cnVjdCBwdF9yZWdzICopOwo+PiAgaW50IGtleGVjX3Nob3Vs
ZF9jcmFzaChzdHJ1Y3QgdGFza19zdHJ1Y3QgKik7Cj4+ICBpbnQga2V4ZWNfY3Jhc2hfbG9hZGVk
KHZvaWQpOwo+PiArdm9pZCBfX2luaXQga2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQih2b2lkKTsKPj4g
IHZvaWQgY3Jhc2hfc2F2ZV9jcHUoc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIGludCBjcHUpOwo+PiAg
ZXh0ZXJuIGludCBraW1hZ2VfY3Jhc2hfY29weV92bWNvcmVpbmZvKHN0cnVjdCBraW1hZ2UgKmlt
YWdlKTsKPj4gIAo+PiBAQCAtMzk3LDYgKzM5OCw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBfX2Ny
YXNoX2tleGVjKHN0cnVjdCBwdF9yZWdzICpyZWdzKSB7IH0KPj4gIHN0YXRpYyBpbmxpbmUgdm9p
ZCBjcmFzaF9rZXhlYyhzdHJ1Y3QgcHRfcmVncyAqcmVncykgeyB9Cj4+ICBzdGF0aWMgaW5saW5l
IGludCBrZXhlY19zaG91bGRfY3Jhc2goc3RydWN0IHRhc2tfc3RydWN0ICpwKSB7IHJldHVybiAw
OyB9Cj4+ICBzdGF0aWMgaW5saW5lIGludCBrZXhlY19jcmFzaF9sb2FkZWQodm9pZCkgeyByZXR1
cm4gMDsgfQo+PiArc3RhdGljIGlubGluZSB2b2lkIF9faW5pdCBrZXhlY19yZXNlcnZlX2xvd18x
TWlCKHZvaWQpIHsgfQo+PiAgI2RlZmluZSBrZXhlY19pbl9wcm9ncmVzcyBmYWxzZQo+PiAgI2Vu
ZGlmIC8qIENPTkZJR19LRVhFQ19DT1JFICovCj4+ICAKPj4gZGlmZiAtLWdpdCBhL2tlcm5lbC9r
ZXhlY19jb3JlLmMgYi9rZXJuZWwva2V4ZWNfY29yZS5jCj4+IGluZGV4IDE1ZDcwYTkwYjUwZC4u
ODg1NjA0N2JjZGM4IDEwMDY0NAo+PiAtLS0gYS9rZXJuZWwva2V4ZWNfY29yZS5jCj4+ICsrKyBi
L2tlcm5lbC9rZXhlY19jb3JlLmMKPj4gQEAgLTEyMTMsMyArMTIxMyw2IEBAIHZvaWQgX193ZWFr
IGFyY2hfa2V4ZWNfcHJvdGVjdF9jcmFzaGtyZXModm9pZCkKPj4gIAo+PiAgdm9pZCBfX3dlYWsg
YXJjaF9rZXhlY191bnByb3RlY3RfY3Jhc2hrcmVzKHZvaWQpCj4+ICB7fQo+PiArCj4+ICt2b2lk
IF9faW5pdCBfX3dlYWsga2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQih2b2lkKQo+PiAre30KPiAKPiBI
aSBMaWFuYm8sCj4gCj4gU2luY2UgdGhpcyBpcyB4ODYgb25seSwgYWRkIGEgd2VhayBmdW5jdGlv
biBzb3VuZHMgbm90IG5lY2Vzc2FyeS4KPiBGb3IgZXhhbXBsZSBjYW4ganVzdCBtb3ZlIGl0IHRv
ICBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9rZXhlYy5oCj4gT3IgbWF5YmUgZXZlbiBiZXR0ZXIgdG8g
bGltaXQgaXQgdG8ga2R1bXAgb25seSwgbW92ZSBpdCB0byAKPiBhcmNoL3g4Ni9pbmNsdWRlL2Fz
bS9jcmFzaC5oCj4gYW5kIGFyY2gveDg2L2tlcm5lbC9jcmFzaC5jCj4gCkdvb2QgcG9pbnQuIEkg
d2lsbCBpbXByb3ZlIHRoZW0gYW5kIHRoZW4gcG9zdCBhZ2Fpbi4KClRoYW5rcy4KTGlhbmJvCgo+
IFRoYW5rcwo+IERhdmUKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
