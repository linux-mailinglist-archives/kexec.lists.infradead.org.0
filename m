Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C1BD5581
	for <lists+kexec@lfdr.de>; Sun, 13 Oct 2019 11:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyEdYwanGbX6xHJ6zg9QwJ76etda+J0bVKMdq+ITgec=; b=dvq7GeNfF/Ec5T
	ypla3eRLAHlbIh//VRJJkGH42AVRbOT+459GI/pCaxkoM/06m1AtRX6QPkZUOpv+L7T/gRjluCayh
	BbvBTHLrKXbsp3efzQeE6ix43gWL97QYLFqg+LkuIQOa1ynWuLj2VbbYwlEoZyyyZtJEDENs4eRB1
	jPIzzOxkg327m7hKWZhUYmKo7pnNUInKdcGhqgPHvJ6e+OYmEL0GJCtvk2JQw9mrg3f3tfBcY5GFs
	pa4wOXz0EdKRQcHUg2mNUy2MDk4SjJWfBHTihA8FS36iz84IHgD4mXvZ1oAKqEdZj2So/Dh7mPeKU
	T3cj6+czCbT8e9EcJz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJaJ4-0002s0-CY; Sun, 13 Oct 2019 09:36:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJaIy-0002ra-R1
 for kexec@lists.infradead.org; Sun, 13 Oct 2019 09:36:51 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BA2B537E80;
 Sun, 13 Oct 2019 09:36:45 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-16.pek2.redhat.com [10.72.12.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A30BB5D6A3;
 Sun, 13 Oct 2019 09:36:34 +0000 (UTC)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
To: "Eric W. Biederman" <ebiederm@xmission.com>, Dave Young <dyoung@redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
 <87zhi51ers.fsf@x220.int.ebiederm.org>
From: lijiang <lijiang@redhat.com>
Message-ID: <72edff0b-9778-2e83-224b-7fe70dfb8d73@redhat.com>
Date: Sun, 13 Oct 2019 17:36:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87zhi51ers.fsf@x220.int.ebiederm.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Sun, 13 Oct 2019 09:36:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_023648_911126_4ABC3C11 
X-CRM114-Status: GOOD (  24.62  )
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

5ZyoIDIwMTnlubQxMOaciDEz5pelIDExOjU0LCBFcmljIFcuIEJpZWRlcm1hbiDlhpnpgZM6Cj4g
RGF2ZSBZb3VuZyA8ZHlvdW5nQHJlZGhhdC5jb20+IHdyaXRlczoKPiAKPj4gSGkgRXJpYywKPj4K
Pj4gT24gMTAvMTIvMTkgYXQgMDY6MjZhbSwgRXJpYyBXLiBCaWVkZXJtYW4gd3JvdGU6Cj4+PiBM
aWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4gd3JpdGVzOgo+Pj4KPj4+PiBXaGVuIHRo
ZSBjcmFzaGtlcm5lbCBrZXJuZWwgY29tbWFuZCBsaW5lIG9wdGlvbiBpcyBzcGVjaWZpZWQsIHRo
ZQo+Pj4+IGxvdyAxTWlCIG1lbW9yeSB3aWxsIGFsd2F5cyBiZSByZXNlcnZlZCwgd2hpY2ggbWFr
ZXMgdGhhdCB0aGUgbWVtb3J5Cj4+Pj4gYWxsb2NhdGVkIGxhdGVyIHdvbid0IGZhbGwgaW50byB0
aGUgbG93IDFNaUIgYXJlYSwgdGhlcmVieSwgaXQncyBub3QKPj4+PiBuZWNlc3NhcnkgdG8gY3Jl
YXRlIGEgYmFja3VwIHJlZ2lvbiBhbmQgYWxzbyBubyBuZWVkIHRvIGNvcHkgdGhlIGZpcnN0Cj4+
Pj4gNjQwayBjb250ZW50IHRvIGEgYmFja3VwIHJlZ2lvbi4KPj4+Pgo+Pj4+IEN1cnJlbnRseSwg
dGhlIGNvZGUgcmVsYXRlZCB0byB0aGUgYmFja3VwIHJlZ2lvbiBjYW4gYmUgc2FmZWx5IHJlbW92
ZWQsCj4+Pj4gc28gbGV0cyBjbGVhbiB1cC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IExpYW5i
byBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgo+Pj4+IC0tLQo+Pj4KPj4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC94ODYva2VybmVsL2NyYXNoLmMgYi9hcmNoL3g4Ni9rZXJuZWwvY3Jhc2guYwo+Pj4+
IGluZGV4IGViNjUxZmJkZTkyYS4uY2M1Nzc0ZmM4NGMwIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gv
eDg2L2tlcm5lbC9jcmFzaC5jCj4+Pj4gKysrIGIvYXJjaC94ODYva2VybmVsL2NyYXNoLmMKPj4+
PiBAQCAtMTczLDggKzE3Myw2IEBAIHZvaWQgbmF0aXZlX21hY2hpbmVfY3Jhc2hfc2h1dGRvd24o
c3RydWN0IHB0X3JlZ3MgKnJlZ3MpCj4+Pj4gIAo+Pj4+ICAjaWZkZWYgQ09ORklHX0tFWEVDX0ZJ
TEUKPj4+PiAgCj4+Pj4gLXN0YXRpYyB1bnNpZ25lZCBsb25nIGNyYXNoX3plcm9fYnl0ZXM7Cj4+
Pj4gLQo+Pj4+ICBzdGF0aWMgaW50IGdldF9ucl9yYW1fcmFuZ2VzX2NhbGxiYWNrKHN0cnVjdCBy
ZXNvdXJjZSAqcmVzLCB2b2lkICphcmcpCj4+Pj4gIHsKPj4+PiAgCXVuc2lnbmVkIGludCAqbnJf
cmFuZ2VzID0gYXJnOwo+Pj4+IEBAIC0yMzQsOSArMjMyLDE1IEBAIHN0YXRpYyBpbnQgcHJlcGFy
ZV9lbGY2NF9yYW1faGVhZGVyc19jYWxsYmFjayhzdHJ1Y3QgcmVzb3VyY2UgKnJlcywgdm9pZCAq
YXJnKQo+Pj4+ICB7Cj4+Pj4gIAlzdHJ1Y3QgY3Jhc2hfbWVtICpjbWVtID0gYXJnOwo+Pj4+ICAK
Pj4+PiAtCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNdLnN0YXJ0ID0gcmVzLT5zdGFydDsK
Pj4+PiAtCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNdLmVuZCA9IHJlcy0+ZW5kOwo+Pj4+
IC0JY21lbS0+bnJfcmFuZ2VzKys7Cj4+Pj4gKwlpZiAocmVzLT5zdGFydCA+PSBTWl8xTSkgewo+
Pj4+ICsJCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNdLnN0YXJ0ID0gcmVzLT5zdGFydDsK
Pj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsKPj4+
PiArCQljbWVtLT5ucl9yYW5nZXMrKzsKPj4+PiArCX0gZWxzZSBpZiAocmVzLT5lbmQgPiBTWl8x
TSkgewo+Pj4+ICsJCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNdLnN0YXJ0ID0gU1pfMU07
Cj4+Pj4gKwkJY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uZW5kID0gcmVzLT5lbmQ7Cj4+
Pj4gKwkJY21lbS0+bnJfcmFuZ2VzKys7Cj4+Pj4gKwl9Cj4+Pgo+Pj4gV2hhdCBpcyBnb2luZyBv
biB3aXRoIHRoaXMgY2h1bms/ICBJIGNhbiBndWVzcyBidXQgdGhpcyBuZWVkcyBhIGNsZWFyCj4+
PiBjb21tZW50Lgo+Pgo+PiBJbmRlZWQgaXQgbmVlZHMgc29tZSBjb2RlIGNvbW1lbnQsIHRoaXMg
aXMgYmFzZWQgb24gc29tZSBvZmZsaW5lCj4+IGRpc2N1c3Npb24uICBjYXQgL3Byb2Mvdm1jb3Jl
IHdpbGwgZ2l2ZSBhIHdhcm5pbmcgYmVjYXVzZSBpb3JlbWFwIGlzCj4+IG1hcHBpbmcgdGhlIHN5
c3RlbSByYW0uCj4+Cj4+IFdlIHBhc3MgdGhlIGZpcnN0IDFNIHRvIGtkdW1wIGtlcm5lbCBpbiBl
ODIwIGFzIHN5c3RlbSByYW0gc28gdGhhdCAybmQKPj4ga2VybmVsIGNhbiB1c2UgdGhlIGxvdyAx
TSBtZW1vcnkgYmVjYXVzZSBmb3IgZXhhbXBsZSB0aGUgdHJhbXBvbGluZQo+PiBjb2RlLgo+Pgo+
Pj4KPj4+PiAgCj4+Pj4gIAlyZXR1cm4gMDsKPj4+PiAgfQo+Pj4KPj4+PiBAQCAtMzU2LDkgKzMz
NywxMiBAQCBpbnQgY3Jhc2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1h
Z2UsIHN0cnVjdCBib290X3BhcmFtcyAqcGFyYW1zKQo+Pj4+ICAJbWVtc2V0KCZjbWQsIDAsIHNp
emVvZihzdHJ1Y3QgY3Jhc2hfbWVtbWFwX2RhdGEpKTsKPj4+PiAgCWNtZC5wYXJhbXMgPSBwYXJh
bXM7Cj4+Pj4gIAo+Pj4+IC0JLyogQWRkIGZpcnN0IDY0MEsgc2VnbWVudCAqLwo+Pj4+IC0JZWku
YWRkciA9IGltYWdlLT5hcmNoLmJhY2t1cF9zcmNfc3RhcnQ7Cj4+Pj4gLQllaS5zaXplID0gaW1h
Z2UtPmFyY2guYmFja3VwX3NyY19zejsKPj4+PiArCS8qCj4+Pj4gKwkgKiBBZGQgdGhlIGxvdyBt
ZW1vcnkgcmFuZ2VbMHgxMDAwLCBTWl8xTV0sIHNraXAKPj4+PiArCSAqIHRoZSBmaXJzdCB6ZXJv
IHBhZ2UuCj4+Pj4gKwkgKi8KPj4+PiArCWVpLmFkZHIgPSBQQUdFX1NJWkU7Cj4+Pj4gKwllaS5z
aXplID0gU1pfMU0gLSBQQUdFX1NJWkU7Cj4+Pj4gIAllaS50eXBlID0gRTgyMF9UWVBFX1JBTTsK
Pj4+PiAgCWFkZF9lODIwX2VudHJ5KHBhcmFtcywgJmVpKTsKPj4+Cj4+PiBMaWtld2lzZSBoZXJl
LiAgV2h5IGRvIHdlIG5lZWQgYSBzcGVjaWFsIGNhc2U/Cj4+PiBXaHkgdGhlIG1hZ2ljIHdpdGgg
UEFHRV9TSVpFPwo+Pgo+PiBHb29kIGNhdGNoLCB0aGUgemVybyBwYWdlIHBhcnQgaXMgdXNlbGVz
cywgSSB0aGluayBubyBvdGhlciBzcGVjaWFsCj4+IHJlYXNvbiwganVzdCBhc3N1bWVkIHplcm8g
cGFnZSBpcyBub3QgdXNhYmxlLCBidXQgaXQgc2hvdWxkIGJlIG9rIHRvCj4+IHJlbW92ZSB0aGUg
c3BlY2lhbCBoYW5kbGluZywganVzdCBwYXNzIDAgLSAxTSBpcyBnb29kIGVub3VnaC4KPiAKPiBC
dXQgaWYgd2UgaGF2ZSBzdG9wcGVkIHNwZWNpYWwgY2FzaW5nIHRoZSBsb3cgMU0uICBXaHkgZG8g
d2UgbmVlZCBhCj4gc3BlY2lhbCBjYXNlIGhlcmUgYXQgYWxsPwo+IApIZXJlLCBuZWVkIHRvIHBh
c3MgdGhlIGxvdyBtZW1vcnkgcmFuZ2UgdG8ga2R1bXAga2VybmVsLCB3aGljaCB3aWxsIGd1YXJh
bnRlZQp0aGUgYXZhaWxhYmlsaXR5IG9mIGxvdyBtZW1vcnkgaW4ga2R1bXAga2VybmVsLCBvdGhl
cndpc2UsIGtkdW1wIGtlcm5lbCB3b24ndAp1c2UgdGhlIGxvdyBtZW1vcnkgcmVnaW9uLgoKPiBJ
ZiB5b3UgbmVlZCB0aGUgc3BlY2lhbCBjYXNlIGl0IGlzIGFsbW9zdCBjZXJ0YWlubHkgd3Jvbmcg
dG8gc2F5IHlvdQo+IGhhdmUgcmFtIGFib3ZlIDY0MEtpQiBhbmQgYmVsb3cgMU1pQi4gIFRoYXQg
aXMgdGhlIGxlZ2FjeSBST00gYW5kIHZpZGVvCj4gTU1JTyBhcmVhLgo+IAo+IFRoZXJlIGlzIGEg
cmVhc29uIHRoZSBvcmlnaW5hbCBjb2RlIHNhaWQgNjQwS2lCLgo+IApEbyB5b3UgbWVhbiB0aGF0
IHRoZSA2NDBrIHJlZ2lvbiBpcyBnb29kIGVub3VnaCBoZXJlIGluc3RlYWQgb2YgMU1pQj8KClRo
YW5rcy4KTGlhbmJvCgo+IEVyaWMKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
