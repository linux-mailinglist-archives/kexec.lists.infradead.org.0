Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068ACD5FA3
	for <lists+kexec@lfdr.de>; Mon, 14 Oct 2019 12:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yz1A9aYMLUzaTDfYi875Y01sgL0R2fjkvv3BFe0WHA=; b=EwMEF+uaSADNIB
	gh6fBKX2+v8H3zgkFZbZMh/F9JqPNx31fUu4gLI0W8N/rPzQg3Aq8J4O06yAvEHFr/88W8SqFLH03
	bgDZWgTJwc5krksBQS675QQcBInySvfaLYenj14DSlLHha5Tf1R32OruJW5fkJqhMgR1maQVQJorf
	uxcvzzY28hVjgHPcHY/z5lAknWTM1tDILuHxnSSbwpqrdG51H97dEEY0yfSdgjhsRvE3tMWNvIEuv
	L4+Ql80fHS+aUqTmwbKLv7kQ6jQQbY8RkpWXUPg85iX86Mo4uRB11pA/ZU8wB9aK6HRf35X6MvSnY
	9jOhzDJH17XBA2I51z3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxBe-0002rE-WF; Mon, 14 Oct 2019 10:02:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxBZ-0002qe-9G
 for kexec@lists.infradead.org; Mon, 14 Oct 2019 10:02:42 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7DCCB81DEB;
 Mon, 14 Oct 2019 10:02:40 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-16.pek2.redhat.com [10.72.12.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DCF5600CD;
 Mon, 14 Oct 2019 10:02:26 +0000 (UTC)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
To: Dave Young <dyoung@redhat.com>, "Eric W. Biederman" <ebiederm@xmission.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <f3fc12b9-be39-d430-52f5-d1b76b2599a3@redhat.com>
Date: Mon, 14 Oct 2019 18:02:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 14 Oct 2019 10:02:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_030241_361610_FD421899 
X-CRM114-Status: GOOD (  25.70  )
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
 vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDEy5pelIDIwOjE2LCBEYXZlIFlvdW5nIOWGmemBkzoKPiBIaSBFcmlj
LAo+IAo+IE9uIDEwLzEyLzE5IGF0IDA2OjI2YW0sIEVyaWMgVy4gQmllZGVybWFuIHdyb3RlOgo+
PiBMaWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4gd3JpdGVzOgo+Pgo+Pj4gV2hlbiB0
aGUgY3Jhc2hrZXJuZWwga2VybmVsIGNvbW1hbmQgbGluZSBvcHRpb24gaXMgc3BlY2lmaWVkLCB0
aGUKPj4+IGxvdyAxTWlCIG1lbW9yeSB3aWxsIGFsd2F5cyBiZSByZXNlcnZlZCwgd2hpY2ggbWFr
ZXMgdGhhdCB0aGUgbWVtb3J5Cj4+PiBhbGxvY2F0ZWQgbGF0ZXIgd29uJ3QgZmFsbCBpbnRvIHRo
ZSBsb3cgMU1pQiBhcmVhLCB0aGVyZWJ5LCBpdCdzIG5vdAo+Pj4gbmVjZXNzYXJ5IHRvIGNyZWF0
ZSBhIGJhY2t1cCByZWdpb24gYW5kIGFsc28gbm8gbmVlZCB0byBjb3B5IHRoZSBmaXJzdAo+Pj4g
NjQwayBjb250ZW50IHRvIGEgYmFja3VwIHJlZ2lvbi4KPj4+Cj4+PiBDdXJyZW50bHksIHRoZSBj
b2RlIHJlbGF0ZWQgdG8gdGhlIGJhY2t1cCByZWdpb24gY2FuIGJlIHNhZmVseSByZW1vdmVkLAo+
Pj4gc28gbGV0cyBjbGVhbiB1cC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBMaWFuYm8gSmlhbmcg
PGxpamlhbmdAcmVkaGF0LmNvbT4KPj4+IC0tLQo+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2
L2tlcm5lbC9jcmFzaC5jIGIvYXJjaC94ODYva2VybmVsL2NyYXNoLmMKPj4+IGluZGV4IGViNjUx
ZmJkZTkyYS4uY2M1Nzc0ZmM4NGMwIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC94ODYva2VybmVsL2Ny
YXNoLmMKPj4+ICsrKyBiL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCj4+PiBAQCAtMTczLDggKzE3
Myw2IEBAIHZvaWQgbmF0aXZlX21hY2hpbmVfY3Jhc2hfc2h1dGRvd24oc3RydWN0IHB0X3JlZ3Mg
KnJlZ3MpCj4+PiAgCj4+PiAgI2lmZGVmIENPTkZJR19LRVhFQ19GSUxFCj4+PiAgCj4+PiAtc3Rh
dGljIHVuc2lnbmVkIGxvbmcgY3Jhc2hfemVyb19ieXRlczsKPj4+IC0KPj4+ICBzdGF0aWMgaW50
IGdldF9ucl9yYW1fcmFuZ2VzX2NhbGxiYWNrKHN0cnVjdCByZXNvdXJjZSAqcmVzLCB2b2lkICph
cmcpCj4+PiAgewo+Pj4gIAl1bnNpZ25lZCBpbnQgKm5yX3JhbmdlcyA9IGFyZzsKPj4+IEBAIC0y
MzQsOSArMjMyLDE1IEBAIHN0YXRpYyBpbnQgcHJlcGFyZV9lbGY2NF9yYW1faGVhZGVyc19jYWxs
YmFjayhzdHJ1Y3QgcmVzb3VyY2UgKnJlcywgdm9pZCAqYXJnKQo+Pj4gIHsKPj4+ICAJc3RydWN0
IGNyYXNoX21lbSAqY21lbSA9IGFyZzsKPj4+ICAKPj4+IC0JY21lbS0+cmFuZ2VzW2NtZW0tPm5y
X3Jhbmdlc10uc3RhcnQgPSByZXMtPnN0YXJ0Owo+Pj4gLQljbWVtLT5yYW5nZXNbY21lbS0+bnJf
cmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsKPj4+IC0JY21lbS0+bnJfcmFuZ2VzKys7Cj4+PiArCWlm
IChyZXMtPnN0YXJ0ID49IFNaXzFNKSB7Cj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFu
Z2VzXS5zdGFydCA9IHJlcy0+c3RhcnQ7Cj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFu
Z2VzXS5lbmQgPSByZXMtPmVuZDsKPj4+ICsJCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4gKwl9IGVs
c2UgaWYgKHJlcy0+ZW5kID4gU1pfMU0pIHsKPj4+ICsJCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9y
YW5nZXNdLnN0YXJ0ID0gU1pfMU07Cj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2Vz
XS5lbmQgPSByZXMtPmVuZDsKPj4+ICsJCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4gKwl9Cj4+Cj4+
IFdoYXQgaXMgZ29pbmcgb24gd2l0aCB0aGlzIGNodW5rPyAgSSBjYW4gZ3Vlc3MgYnV0IHRoaXMg
bmVlZHMgYSBjbGVhcgo+PiBjb21tZW50Lgo+IAo+IEluZGVlZCBpdCBuZWVkcyBzb21lIGNvZGUg
Y29tbWVudCwgdGhpcyBpcyBiYXNlZCBvbiBzb21lIG9mZmxpbmUKPiBkaXNjdXNzaW9uLiAgY2F0
IC9wcm9jL3ZtY29yZSB3aWxsIGdpdmUgYSB3YXJuaW5nIGJlY2F1c2UgaW9yZW1hcCBpcwo+IG1h
cHBpbmcgdGhlIHN5c3RlbSByYW0uCj4gCj4gV2UgcGFzcyB0aGUgZmlyc3QgMU0gdG8ga2R1bXAg
a2VybmVsIGluIGU4MjAgYXMgc3lzdGVtIHJhbSBzbyB0aGF0IDJuZAo+IGtlcm5lbCBjYW4gdXNl
IHRoZSBsb3cgMU0gbWVtb3J5IGJlY2F1c2UgZm9yIGV4YW1wbGUgdGhlIHRyYW1wb2xpbmUKPiBj
b2RlLgo+IApUaGFuayB5b3UsIEVyaWMgYW5kIERhdmUuIEkgd2lsbCBhZGQgdGhlIGNvZGUgY29t
bWVudCBhcyBiZWxvdyBpZiBpdCB3b3VsZCBiZSBPSy4KCkBAIC0yMzQsOSArMjMyLDIwIEBAIHN0
YXRpYyBpbnQgcHJlcGFyZV9lbGY2NF9yYW1faGVhZGVyc19jYWxsYmFjayhzdHJ1Y3QgcmVzb3Vy
Y2UgKnJlcywgdm9pZCAqYXJnKQogewogICAgICAgIHN0cnVjdCBjcmFzaF9tZW0gKmNtZW0gPSBh
cmc7CiAKLSAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5zdGFydCA9IHJlcy0+
c3RhcnQ7Ci0gICAgICAgY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uZW5kID0gcmVzLT5l
bmQ7Ci0gICAgICAgY21lbS0+bnJfcmFuZ2VzKys7CisgICAgICAgLyoKKyAgICAgICAgKiBDdXJy
ZW50bHksIHBhc3MgdGhlIGxvdyAxTWlCIHJhbmdlIHRvIGtkdW1wIGtlcm5lbCBpbiBlODIwCisg
ICAgICAgICogYXMgc3lzdGVtIHJhbSBzbyB0aGF0IGtkdW1wIGtlcm5lbCBjYW4gYWxzbyB1c2Ug
dGhlIGxvdyAxTWlCCisgICAgICAgICogbWVtb3J5IGR1ZSB0byB0aGUgcmVhbCBtb2RlIHRyYW1w
b2xpbmUgY29kZS4KKyAgICAgICAgKiBBbmQgbGF0ZXIsIHRoZSBsb3cgMU1pQiByYW5nZSB3aWxs
IGJlIGV4Y2x1ZWQgZnJvbSBlbGYgaGVhZGVyLAorICAgICAgICAqIHdoaWNoIHdpbGwgYXZvaWQg
cmVtYXBwaW5nIHRoZSAxTWlCIHN5c3RlbSByYW0gd2hlbiBkdW1waW5nCisgICAgICAgICogdm1j
b3JlLgorICAgICAgICAqLworICAgICAgIGlmIChyZXMtPnN0YXJ0ID49IFNaXzFNKSB7CisgICAg
ICAgICAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5zdGFydCA9IHJlcy0+c3Rh
cnQ7CisgICAgICAgICAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5lbmQgPSBy
ZXMtPmVuZDsKKyAgICAgICAgICAgICAgIGNtZW0tPm5yX3JhbmdlcysrOworICAgICAgIH0gZWxz
ZSBpZiAocmVzLT5lbmQgPiBTWl8xTSkgeworICAgICAgICAgICAgICAgY21lbS0+cmFuZ2VzW2Nt
ZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSBTWl8xTTsKKyAgICAgICAgICAgICAgIGNtZW0tPnJhbmdl
c1tjbWVtLT5ucl9yYW5nZXNdLmVuZCA9IHJlcy0+ZW5kOworICAgICAgICAgICAgICAgY21lbS0+
bnJfcmFuZ2VzKys7CisgICAgICAgfQogCiAgICAgICAgcmV0dXJuIDA7CiB9Cgo+Pgo+Pj4gIAo+
Pj4gIAlyZXR1cm4gMDsKPj4+ICB9Cj4+Cj4+PiBAQCAtMzU2LDkgKzMzNywxMiBAQCBpbnQgY3Jh
c2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsIHN0cnVjdCBib290
X3BhcmFtcyAqcGFyYW1zKQo+Pj4gIAltZW1zZXQoJmNtZCwgMCwgc2l6ZW9mKHN0cnVjdCBjcmFz
aF9tZW1tYXBfZGF0YSkpOwo+Pj4gIAljbWQucGFyYW1zID0gcGFyYW1zOwo+Pj4gIAo+Pj4gLQkv
KiBBZGQgZmlyc3QgNjQwSyBzZWdtZW50ICovCj4+PiAtCWVpLmFkZHIgPSBpbWFnZS0+YXJjaC5i
YWNrdXBfc3JjX3N0YXJ0Owo+Pj4gLQllaS5zaXplID0gaW1hZ2UtPmFyY2guYmFja3VwX3NyY19z
ejsKPj4+ICsJLyoKPj4+ICsJICogQWRkIHRoZSBsb3cgbWVtb3J5IHJhbmdlWzB4MTAwMCwgU1pf
MU1dLCBza2lwCj4+PiArCSAqIHRoZSBmaXJzdCB6ZXJvIHBhZ2UuCj4+PiArCSAqLwo+Pj4gKwll
aS5hZGRyID0gUEFHRV9TSVpFOwo+Pj4gKwllaS5zaXplID0gU1pfMU0gLSBQQUdFX1NJWkU7Cj4+
PiAgCWVpLnR5cGUgPSBFODIwX1RZUEVfUkFNOwo+Pj4gIAlhZGRfZTgyMF9lbnRyeShwYXJhbXMs
ICZlaSk7Cj4+Cj4+IExpa2V3aXNlIGhlcmUuICBXaHkgZG8gd2UgbmVlZCBhIHNwZWNpYWwgY2Fz
ZT8KPj4gV2h5IHRoZSBtYWdpYyB3aXRoIFBBR0VfU0laRT8KPiAKPiBHb29kIGNhdGNoLCB0aGUg
emVybyBwYWdlIHBhcnQgaXMgdXNlbGVzcywgSSB0aGluayBubyBvdGhlciBzcGVjaWFsCj4gcmVh
c29uLCBqdXN0IGFzc3VtZWQgemVybyBwYWdlIGlzIG5vdCB1c2FibGUsIGJ1dCBpdCBzaG91bGQg
YmUgb2sgdG8KPiByZW1vdmUgdGhlIHNwZWNpYWwgaGFuZGxpbmcsIGp1c3QgcGFzcyAwIC0gMU0g
aXMgZ29vZCBlbm91Z2guCj4+IFRoYW5rcwo+IERhdmUKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8va2V4ZWMK
