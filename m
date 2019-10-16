Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89278D8650
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 05:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5WerhRZMdvk31sESBxabOns4Dlz/kTl2ZTG35RJgXk=; b=WP2NaJtGaUuQXK
	pDVpE4Ea8OaQS5Gaw0dyRPOZSq5d+y9SpTSdUNMtHKrqIrkUfnEY0sWMY/0I/P2+wohl45vPyKExk
	CZCVC+c1RSd8AV7Su2CGiltEjQZFUYWo2PfaAHCvM7xoQF9HOSH9gCe7DZDV+1TRCT60oERKQJmiU
	IYIhLSSrMloK7O+Z7MNS35tVTELWmqSsGs82cmjinHkfLhsE1gVsDAXVLeV85xMmLH64GZx2EqKTf
	niLi3lTTPEPEDo17kW38pEsV9UQhqLz8jHEt/r+gBuZRRiyY71bSKk7ulDW30wic0RBTK8rtAoP+c
	i68ruEdquwkteclQA3cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZvV-0002y3-4z; Wed, 16 Oct 2019 03:24:41 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZvR-0002xF-2K
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 03:24:38 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A13308980F1;
 Wed, 16 Oct 2019 03:24:35 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-16.pek2.redhat.com [10.72.12.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 665675D6A5;
 Wed, 16 Oct 2019 03:24:21 +0000 (UTC)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
 <f3fc12b9-be39-d430-52f5-d1b76b2599a3@redhat.com>
 <87tv8az2jq.fsf@x220.int.ebiederm.org>
From: lijiang <lijiang@redhat.com>
Message-ID: <54e8e316-1c7e-8d2e-270c-d5e178b46024@redhat.com>
Date: Wed, 16 Oct 2019 11:24:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87tv8az2jq.fsf@x220.int.ebiederm.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Wed, 16 Oct 2019 03:24:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_202437_152139_151BBE7B 
X-CRM114-Status: GOOD (  23.39  )
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, tglx@linutronix.de,
 Dave Young <dyoung@redhat.com>, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDE15pelIDE5OjExLCBFcmljIFcuIEJpZWRlcm1hbiDlhpnpgZM6Cj4g
bGlqaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPiB3cml0ZXM6Cj4gCj4+IOWcqCAyMDE55bm0MTDm
nIgxMuaXpSAyMDoxNiwgRGF2ZSBZb3VuZyDlhpnpgZM6Cj4+PiBIaSBFcmljLAo+Pj4KPj4+IE9u
IDEwLzEyLzE5IGF0IDA2OjI2YW0sIEVyaWMgVy4gQmllZGVybWFuIHdyb3RlOgo+Pj4+IExpYW5i
byBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPiB3cml0ZXM6Cj4+Pj4KPj4+Pj4gV2hlbiB0aGUg
Y3Jhc2hrZXJuZWwga2VybmVsIGNvbW1hbmQgbGluZSBvcHRpb24gaXMgc3BlY2lmaWVkLCB0aGUK
Pj4+Pj4gbG93IDFNaUIgbWVtb3J5IHdpbGwgYWx3YXlzIGJlIHJlc2VydmVkLCB3aGljaCBtYWtl
cyB0aGF0IHRoZSBtZW1vcnkKPj4+Pj4gYWxsb2NhdGVkIGxhdGVyIHdvbid0IGZhbGwgaW50byB0
aGUgbG93IDFNaUIgYXJlYSwgdGhlcmVieSwgaXQncyBub3QKPj4+Pj4gbmVjZXNzYXJ5IHRvIGNy
ZWF0ZSBhIGJhY2t1cCByZWdpb24gYW5kIGFsc28gbm8gbmVlZCB0byBjb3B5IHRoZSBmaXJzdAo+
Pj4+PiA2NDBrIGNvbnRlbnQgdG8gYSBiYWNrdXAgcmVnaW9uLgo+Pj4+Pgo+Pj4+PiBDdXJyZW50
bHksIHRoZSBjb2RlIHJlbGF0ZWQgdG8gdGhlIGJhY2t1cCByZWdpb24gY2FuIGJlIHNhZmVseSBy
ZW1vdmVkLAo+Pj4+PiBzbyBsZXRzIGNsZWFuIHVwLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBMaWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4KPj4+Pj4gLS0tCj4+Pj4KPj4+Pj4g
ZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jIGIvYXJjaC94ODYva2VybmVsL2Ny
YXNoLmMKPj4+Pj4gaW5kZXggZWI2NTFmYmRlOTJhLi5jYzU3NzRmYzg0YzAgMTAwNjQ0Cj4+Pj4+
IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCj4+Pj4+ICsrKyBiL2FyY2gveDg2L2tlcm5l
bC9jcmFzaC5jCj4+Pj4+IEBAIC0xNzMsOCArMTczLDYgQEAgdm9pZCBuYXRpdmVfbWFjaGluZV9j
cmFzaF9zaHV0ZG93bihzdHJ1Y3QgcHRfcmVncyAqcmVncykKPj4+Pj4gIAo+Pj4+PiAgI2lmZGVm
IENPTkZJR19LRVhFQ19GSUxFCj4+Pj4+ICAKPj4+Pj4gLXN0YXRpYyB1bnNpZ25lZCBsb25nIGNy
YXNoX3plcm9fYnl0ZXM7Cj4+Pj4+IC0KPj4+Pj4gIHN0YXRpYyBpbnQgZ2V0X25yX3JhbV9yYW5n
ZXNfY2FsbGJhY2soc3RydWN0IHJlc291cmNlICpyZXMsIHZvaWQgKmFyZykKPj4+Pj4gIHsKPj4+
Pj4gIAl1bnNpZ25lZCBpbnQgKm5yX3JhbmdlcyA9IGFyZzsKPj4+Pj4gQEAgLTIzNCw5ICsyMzIs
MTUgQEAgc3RhdGljIGludCBwcmVwYXJlX2VsZjY0X3JhbV9oZWFkZXJzX2NhbGxiYWNrKHN0cnVj
dCByZXNvdXJjZSAqcmVzLCB2b2lkICphcmcpCj4+Pj4+ICB7Cj4+Pj4+ICAJc3RydWN0IGNyYXNo
X21lbSAqY21lbSA9IGFyZzsKPj4+Pj4gIAo+Pj4+PiAtCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9y
YW5nZXNdLnN0YXJ0ID0gcmVzLT5zdGFydDsKPj4+Pj4gLQljbWVtLT5yYW5nZXNbY21lbS0+bnJf
cmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsKPj4+Pj4gLQljbWVtLT5ucl9yYW5nZXMrKzsKPj4+Pj4g
KwlpZiAocmVzLT5zdGFydCA+PSBTWl8xTSkgewo+Pj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+
bnJfcmFuZ2VzXS5zdGFydCA9IHJlcy0+c3RhcnQ7Cj4+Pj4+ICsJCWNtZW0tPnJhbmdlc1tjbWVt
LT5ucl9yYW5nZXNdLmVuZCA9IHJlcy0+ZW5kOwo+Pj4+PiArCQljbWVtLT5ucl9yYW5nZXMrKzsK
Pj4+Pj4gKwl9IGVsc2UgaWYgKHJlcy0+ZW5kID4gU1pfMU0pIHsKPj4+Pj4gKwkJY21lbS0+cmFu
Z2VzW2NtZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSBTWl8xTTsKPj4+Pj4gKwkJY21lbS0+cmFuZ2Vz
W2NtZW0tPm5yX3Jhbmdlc10uZW5kID0gcmVzLT5lbmQ7Cj4+Pj4+ICsJCWNtZW0tPm5yX3Jhbmdl
cysrOwo+Pj4+PiArCX0KPj4+Pgo+Pj4+IFdoYXQgaXMgZ29pbmcgb24gd2l0aCB0aGlzIGNodW5r
PyAgSSBjYW4gZ3Vlc3MgYnV0IHRoaXMgbmVlZHMgYSBjbGVhcgo+Pj4+IGNvbW1lbnQuCj4+Pgo+
Pj4gSW5kZWVkIGl0IG5lZWRzIHNvbWUgY29kZSBjb21tZW50LCB0aGlzIGlzIGJhc2VkIG9uIHNv
bWUgb2ZmbGluZQo+Pj4gZGlzY3Vzc2lvbi4gIGNhdCAvcHJvYy92bWNvcmUgd2lsbCBnaXZlIGEg
d2FybmluZyBiZWNhdXNlIGlvcmVtYXAgaXMKPj4+IG1hcHBpbmcgdGhlIHN5c3RlbSByYW0uCj4+
Pgo+Pj4gV2UgcGFzcyB0aGUgZmlyc3QgMU0gdG8ga2R1bXAga2VybmVsIGluIGU4MjAgYXMgc3lz
dGVtIHJhbSBzbyB0aGF0IDJuZAo+Pj4ga2VybmVsIGNhbiB1c2UgdGhlIGxvdyAxTSBtZW1vcnkg
YmVjYXVzZSBmb3IgZXhhbXBsZSB0aGUgdHJhbXBvbGluZQo+Pj4gY29kZS4KPj4+Cj4+IFRoYW5r
IHlvdSwgRXJpYyBhbmQgRGF2ZS4gSSB3aWxsIGFkZCB0aGUgY29kZSBjb21tZW50IGFzIGJlbG93
IGlmIGl0IHdvdWxkIGJlIE9LLgo+Pgo+PiBAQCAtMjM0LDkgKzIzMiwyMCBAQCBzdGF0aWMgaW50
IHByZXBhcmVfZWxmNjRfcmFtX2hlYWRlcnNfY2FsbGJhY2soc3RydWN0IHJlc291cmNlICpyZXMs
IHZvaWQgKmFyZykKPj4gIHsKPj4gICAgICAgICBzdHJ1Y3QgY3Jhc2hfbWVtICpjbWVtID0gYXJn
Owo+PiAgCj4+IC0gICAgICAgY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSBy
ZXMtPnN0YXJ0Owo+PiAtICAgICAgIGNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNdLmVuZCA9
IHJlcy0+ZW5kOwo+PiAtICAgICAgIGNtZW0tPm5yX3JhbmdlcysrOwo+PiArICAgICAgIC8qCj4+
ICsgICAgICAgICogQ3VycmVudGx5LCBwYXNzIHRoZSBsb3cgMU1pQiByYW5nZSB0byBrZHVtcCBr
ZXJuZWwgaW4gZTgyMAo+PiArICAgICAgICAqIGFzIHN5c3RlbSByYW0gc28gdGhhdCBrZHVtcCBr
ZXJuZWwgY2FuIGFsc28gdXNlIHRoZSBsb3cgMU1pQgo+PiArICAgICAgICAqIG1lbW9yeSBkdWUg
dG8gdGhlIHJlYWwgbW9kZSB0cmFtcG9saW5lIGNvZGUuCj4+ICsgICAgICAgICogQW5kIGxhdGVy
LCB0aGUgbG93IDFNaUIgcmFuZ2Ugd2lsbCBiZSBleGNsdWVkIGZyb20gZWxmIGhlYWRlciwKPj4g
KyAgICAgICAgKiB3aGljaCB3aWxsIGF2b2lkIHJlbWFwcGluZyB0aGUgMU1pQiBzeXN0ZW0gcmFt
IHdoZW4gZHVtcGluZwo+PiArICAgICAgICAqIHZtY29yZS4KPj4gKyAgICAgICAgKi8KPj4gKyAg
ICAgICBpZiAocmVzLT5zdGFydCA+PSBTWl8xTSkgewo+PiArICAgICAgICAgICAgICAgY21lbS0+
cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSByZXMtPnN0YXJ0Owo+PiArICAgICAgICAg
ICAgICAgY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uZW5kID0gcmVzLT5lbmQ7Cj4+ICsg
ICAgICAgICAgICAgICBjbWVtLT5ucl9yYW5nZXMrKzsKPj4gKyAgICAgICB9IGVsc2UgaWYgKHJl
cy0+ZW5kID4gU1pfMU0pIHsKPj4gKyAgICAgICAgICAgICAgIGNtZW0tPnJhbmdlc1tjbWVtLT5u
cl9yYW5nZXNdLnN0YXJ0ID0gU1pfMU07Cj4+ICsgICAgICAgICAgICAgICBjbWVtLT5yYW5nZXNb
Y21lbS0+bnJfcmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsKPj4gKyAgICAgICAgICAgICAgIGNtZW0t
Pm5yX3JhbmdlcysrOwo+PiArICAgICAgIH0KPj4gIAo+PiAgICAgICAgIHJldHVybiAwOwo+PiAg
fQo+IAo+IEkganVzdCByZWFkIHRocm91Z2ggdGhlIGFwcHJvcHJpYXRlIHNlY3Rpb24gb2YgY3Jh
c2guYyBhbmQgdGhlIHdheQo+IHRoaW5ncyBhcmUgc3RydWN0dXJlZCBkb2luZyB0aGlzIHdvcmsg
aW4KPiBwcmVwYXJlX2VsZjY0X3JhbV9oZWFkZXJzX2NhbGxiYWNrIGlzIHdyb25nLgo+IAo+IFRo
aXMgY2FuIGJlIGRvbmUgaW4gYSBzaW1wbGVyIG1hbm5lciBpbiBlbGZfaGVhZGVyX2V4Y2x1ZGVf
cmFuZ2VzLgo+IFNvbWV0aGluZyBsaWtlOgo+IApUaGFuayB5b3UsIEVyaWMuIEl0IHNlZW1zIHRo
YXQgaGVyZSBpcyBhIG1vcmUgcmVhc29uYWJsZSBwbGFjZSwgaSB3aWxsIG1ha2UKYSB0ZXN0IGFi
b3V0IGl0IGFuZCBpbXByb3ZlIGl0IGluIG5leHQgcG9zdC4KCkxpYW5ibwoKPiAJLyogVGhlIGxv
dyAxTWlCIGlzIGFsd2F5cyByZXNlcnZlZCAqLwo+IAlyZXQgPSBjcmFzaF9leGNsdWRlX21lbV9y
YW5nZShjbWVtLCAwLCAxMDI0KjEwMjQpOwo+IAlpZiAocmV0KQo+IAkJcmV0dXJuIHJldDsKPiAK
PiBFcmljCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
