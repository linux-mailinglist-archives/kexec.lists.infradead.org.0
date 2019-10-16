Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5FFD8B3C
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 10:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDBL30DS/jirWLpBobjL2HAPCBuc8xv8cCzNFCVjftg=; b=tjEwLBDQScxelZ
	dVmi8oMQzNoP47PEUvG9XRy0RVIcwXMSbDBTioyTJiCN2dxgZAVWA9+yHS38rE9oFaQ82JWDy0SOI
	N5SiaxVkHHT6Y7N2YXCViiR2F31bWYsDvp8riNI8YvnBKzlVHtByeNoke6fU2BIWSYhWZdYjVDKAx
	YtOLEPm41GUkhx/lrMpqs0FBgaQFFan1DmJgAiwuILoKfuNmgaF7050CaDFnzNcndcIyUKAO8h+i5
	I/VzTNtU3wNFwmmJ3rQh8uBhJHpFytYWBoJ9tEQofMlEMMid3XmQY/xhm6dtnEBefJRlDZetK1nwA
	NPTbns29fYuNmUhiQdLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKerT-00088q-Qh; Wed, 16 Oct 2019 08:40:51 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKerQ-00087s-8X
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 08:40:50 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 473FB18CB8E5;
 Wed, 16 Oct 2019 08:40:47 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-16.pek2.redhat.com [10.72.12.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 378E260A97;
 Wed, 16 Oct 2019 08:40:32 +0000 (UTC)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
 <87zhi51ers.fsf@x220.int.ebiederm.org>
 <72edff0b-9778-2e83-224b-7fe70dfb8d73@redhat.com>
 <8736fu1d8k.fsf@x220.int.ebiederm.org>
From: lijiang <lijiang@redhat.com>
Message-ID: <c42dd338-6fee-9311-df3a-0a3aa8c80cde@redhat.com>
Date: Wed, 16 Oct 2019 16:40:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <8736fu1d8k.fsf@x220.int.ebiederm.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Wed, 16 Oct 2019 08:40:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_014048_334363_D266C285 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

5ZyoIDIwMTnlubQxMOaciDE15pelIDE5OjA0LCBFcmljIFcuIEJpZWRlcm1hbiDlhpnpgZM6Cj4g
bGlqaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPiB3cml0ZXM6Cj4gCj4+IOWcqCAyMDE55bm0MTDm
nIgxM+aXpSAxMTo1NCwgRXJpYyBXLiBCaWVkZXJtYW4g5YaZ6YGTOgo+Pj4gRGF2ZSBZb3VuZyA8
ZHlvdW5nQHJlZGhhdC5jb20+IHdyaXRlczoKPj4+Cj4+Pj4gSGkgRXJpYywKPj4+Pgo+Pj4+IE9u
IDEwLzEyLzE5IGF0IDA2OjI2YW0sIEVyaWMgVy4gQmllZGVybWFuIHdyb3RlOgo+Pj4+PiBMaWFu
Ym8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4gd3JpdGVzOgo+Pj4+Pgo+Pj4+Pj4gV2hlbiB0
aGUgY3Jhc2hrZXJuZWwga2VybmVsIGNvbW1hbmQgbGluZSBvcHRpb24gaXMgc3BlY2lmaWVkLCB0
aGUKPj4+Pj4+IGxvdyAxTWlCIG1lbW9yeSB3aWxsIGFsd2F5cyBiZSByZXNlcnZlZCwgd2hpY2gg
bWFrZXMgdGhhdCB0aGUgbWVtb3J5Cj4+Pj4+PiBhbGxvY2F0ZWQgbGF0ZXIgd29uJ3QgZmFsbCBp
bnRvIHRoZSBsb3cgMU1pQiBhcmVhLCB0aGVyZWJ5LCBpdCdzIG5vdAo+Pj4+Pj4gbmVjZXNzYXJ5
IHRvIGNyZWF0ZSBhIGJhY2t1cCByZWdpb24gYW5kIGFsc28gbm8gbmVlZCB0byBjb3B5IHRoZSBm
aXJzdAo+Pj4+Pj4gNjQwayBjb250ZW50IHRvIGEgYmFja3VwIHJlZ2lvbi4KPj4+Pj4+Cj4+Pj4+
PiBDdXJyZW50bHksIHRoZSBjb2RlIHJlbGF0ZWQgdG8gdGhlIGJhY2t1cCByZWdpb24gY2FuIGJl
IHNhZmVseSByZW1vdmVkLAo+Pj4+Pj4gc28gbGV0cyBjbGVhbiB1cC4KPj4+Pj4+Cj4+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBMaWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4KPj4+Pj4+IC0t
LQo+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jIGIvYXJj
aC94ODYva2VybmVsL2NyYXNoLmMKPj4+Pj4+IGluZGV4IGViNjUxZmJkZTkyYS4uY2M1Nzc0ZmM4
NGMwIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvYXJjaC94ODYva2VybmVsL2NyYXNoLmMKPj4+Pj4+ICsr
KyBiL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCj4+Pj4+PiBAQCAtMTczLDggKzE3Myw2IEBAIHZv
aWQgbmF0aXZlX21hY2hpbmVfY3Jhc2hfc2h1dGRvd24oc3RydWN0IHB0X3JlZ3MgKnJlZ3MpCj4+
Pj4+PiAgCj4+Pj4+PiAgI2lmZGVmIENPTkZJR19LRVhFQ19GSUxFCj4+Pj4+PiAgCj4+Pj4+PiAt
c3RhdGljIHVuc2lnbmVkIGxvbmcgY3Jhc2hfemVyb19ieXRlczsKPj4+Pj4+IC0KPj4+Pj4+ICBz
dGF0aWMgaW50IGdldF9ucl9yYW1fcmFuZ2VzX2NhbGxiYWNrKHN0cnVjdCByZXNvdXJjZSAqcmVz
LCB2b2lkICphcmcpCj4+Pj4+PiAgewo+Pj4+Pj4gIAl1bnNpZ25lZCBpbnQgKm5yX3JhbmdlcyA9
IGFyZzsKPj4+Pj4+IEBAIC0yMzQsOSArMjMyLDE1IEBAIHN0YXRpYyBpbnQgcHJlcGFyZV9lbGY2
NF9yYW1faGVhZGVyc19jYWxsYmFjayhzdHJ1Y3QgcmVzb3VyY2UgKnJlcywgdm9pZCAqYXJnKQo+
Pj4+Pj4gIHsKPj4+Pj4+ICAJc3RydWN0IGNyYXNoX21lbSAqY21lbSA9IGFyZzsKPj4+Pj4+ICAK
Pj4+Pj4+IC0JY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSByZXMtPnN0YXJ0
Owo+Pj4+Pj4gLQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsK
Pj4+Pj4+IC0JY21lbS0+bnJfcmFuZ2VzKys7Cj4+Pj4+PiArCWlmIChyZXMtPnN0YXJ0ID49IFNa
XzFNKSB7Cj4+Pj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5zdGFydCA9IHJl
cy0+c3RhcnQ7Cj4+Pj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5lbmQgPSBy
ZXMtPmVuZDsKPj4+Pj4+ICsJCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4+Pj4gKwl9IGVsc2UgaWYg
KHJlcy0+ZW5kID4gU1pfMU0pIHsKPj4+Pj4+ICsJCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5n
ZXNdLnN0YXJ0ID0gU1pfMU07Cj4+Pj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2Vz
XS5lbmQgPSByZXMtPmVuZDsKPj4+Pj4+ICsJCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4+Pj4gKwl9
Cj4+Pj4+Cj4+Pj4+IFdoYXQgaXMgZ29pbmcgb24gd2l0aCB0aGlzIGNodW5rPyAgSSBjYW4gZ3Vl
c3MgYnV0IHRoaXMgbmVlZHMgYSBjbGVhcgo+Pj4+PiBjb21tZW50Lgo+Pj4+Cj4+Pj4gSW5kZWVk
IGl0IG5lZWRzIHNvbWUgY29kZSBjb21tZW50LCB0aGlzIGlzIGJhc2VkIG9uIHNvbWUgb2ZmbGlu
ZQo+Pj4+IGRpc2N1c3Npb24uICBjYXQgL3Byb2Mvdm1jb3JlIHdpbGwgZ2l2ZSBhIHdhcm5pbmcg
YmVjYXVzZSBpb3JlbWFwIGlzCj4+Pj4gbWFwcGluZyB0aGUgc3lzdGVtIHJhbS4KPj4+Pgo+Pj4+
IFdlIHBhc3MgdGhlIGZpcnN0IDFNIHRvIGtkdW1wIGtlcm5lbCBpbiBlODIwIGFzIHN5c3RlbSBy
YW0gc28gdGhhdCAybmQKPj4+PiBrZXJuZWwgY2FuIHVzZSB0aGUgbG93IDFNIG1lbW9yeSBiZWNh
dXNlIGZvciBleGFtcGxlIHRoZSB0cmFtcG9saW5lCj4+Pj4gY29kZS4KPj4+Pgo+Pj4+Pgo+Pj4+
Pj4gIAo+Pj4+Pj4gIAlyZXR1cm4gMDsKPj4+Pj4+ICB9Cj4+Pj4+Cj4+Pj4+PiBAQCAtMzU2LDkg
KzMzNywxMiBAQCBpbnQgY3Jhc2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAq
aW1hZ2UsIHN0cnVjdCBib290X3BhcmFtcyAqcGFyYW1zKQo+Pj4+Pj4gIAltZW1zZXQoJmNtZCwg
MCwgc2l6ZW9mKHN0cnVjdCBjcmFzaF9tZW1tYXBfZGF0YSkpOwo+Pj4+Pj4gIAljbWQucGFyYW1z
ID0gcGFyYW1zOwo+Pj4+Pj4gIAo+Pj4+Pj4gLQkvKiBBZGQgZmlyc3QgNjQwSyBzZWdtZW50ICov
Cj4+Pj4+PiAtCWVpLmFkZHIgPSBpbWFnZS0+YXJjaC5iYWNrdXBfc3JjX3N0YXJ0Owo+Pj4+Pj4g
LQllaS5zaXplID0gaW1hZ2UtPmFyY2guYmFja3VwX3NyY19zejsKPj4+Pj4+ICsJLyoKPj4+Pj4+
ICsJICogQWRkIHRoZSBsb3cgbWVtb3J5IHJhbmdlWzB4MTAwMCwgU1pfMU1dLCBza2lwCj4+Pj4+
PiArCSAqIHRoZSBmaXJzdCB6ZXJvIHBhZ2UuCj4+Pj4+PiArCSAqLwo+Pj4+Pj4gKwllaS5hZGRy
ID0gUEFHRV9TSVpFOwo+Pj4+Pj4gKwllaS5zaXplID0gU1pfMU0gLSBQQUdFX1NJWkU7Cj4+Pj4+
PiAgCWVpLnR5cGUgPSBFODIwX1RZUEVfUkFNOwo+Pj4+Pj4gIAlhZGRfZTgyMF9lbnRyeShwYXJh
bXMsICZlaSk7Cj4+Pj4+Cj4+Pj4+IExpa2V3aXNlIGhlcmUuICBXaHkgZG8gd2UgbmVlZCBhIHNw
ZWNpYWwgY2FzZT8KPj4+Pj4gV2h5IHRoZSBtYWdpYyB3aXRoIFBBR0VfU0laRT8KPj4+Pgo+Pj4+
IEdvb2QgY2F0Y2gsIHRoZSB6ZXJvIHBhZ2UgcGFydCBpcyB1c2VsZXNzLCBJIHRoaW5rIG5vIG90
aGVyIHNwZWNpYWwKPj4+PiByZWFzb24sIGp1c3QgYXNzdW1lZCB6ZXJvIHBhZ2UgaXMgbm90IHVz
YWJsZSwgYnV0IGl0IHNob3VsZCBiZSBvayB0bwo+Pj4+IHJlbW92ZSB0aGUgc3BlY2lhbCBoYW5k
bGluZywganVzdCBwYXNzIDAgLSAxTSBpcyBnb29kIGVub3VnaC4KPj4+Cj4+PiBCdXQgaWYgd2Ug
aGF2ZSBzdG9wcGVkIHNwZWNpYWwgY2FzaW5nIHRoZSBsb3cgMU0uICBXaHkgZG8gd2UgbmVlZCBh
Cj4+PiBzcGVjaWFsIGNhc2UgaGVyZSBhdCBhbGw/Cj4+Pgo+PiBIZXJlLCBuZWVkIHRvIHBhc3Mg
dGhlIGxvdyBtZW1vcnkgcmFuZ2UgdG8ga2R1bXAga2VybmVsLCB3aGljaCB3aWxsIGd1YXJhbnRl
ZQo+PiB0aGUgYXZhaWxhYmlsaXR5IG9mIGxvdyBtZW1vcnkgaW4ga2R1bXAga2VybmVsLCBvdGhl
cndpc2UsIGtkdW1wIGtlcm5lbCB3b24ndAo+PiB1c2UgdGhlIGxvdyBtZW1vcnkgcmVnaW9uLgo+
Pgo+Pj4gSWYgeW91IG5lZWQgdGhlIHNwZWNpYWwgY2FzZSBpdCBpcyBhbG1vc3QgY2VydGFpbmx5
IHdyb25nIHRvIHNheSB5b3UKPj4+IGhhdmUgcmFtIGFib3ZlIDY0MEtpQiBhbmQgYmVsb3cgMU1p
Qi4gIFRoYXQgaXMgdGhlIGxlZ2FjeSBST00gYW5kIHZpZGVvCj4+PiBNTUlPIGFyZWEuCj4+Pgo+
Pj4gVGhlcmUgaXMgYSByZWFzb24gdGhlIG9yaWdpbmFsIGNvZGUgc2FpZCA2NDBLaUIuCj4+Pgo+
PiBEbyB5b3UgbWVhbiB0aGF0IHRoZSA2NDBrIHJlZ2lvbiBpcyBnb29kIGVub3VnaCBoZXJlIGlu
c3RlYWQgb2YgMU1pQj8KPiAKPiBSZWFkaW5nIHRocm91Z2ggdGhlIGNvZGUgb2YgY3Jhc2hfc2V0
dXBfbWVtYXBfZW50cmllcyBJIHNlZSB0aGF0IHdoYXQKPiB0aGUgY29kZSBpcyBkb2luZyBub3cu
ICBUaGUgY29kZSBpcyByZXBlYXRpbmcgdGhlIGU4MjAgbWVtb3J5IG1hcCB3aXRoCj4gdGhlIG1l
bW9yeSBhcmVhcyB0aGF0IHdlcmUgbm90IHJlc2VydmVkIGZvciB0aGUgY3Jhc2gga2VybmVsIHJl
bW92ZWQuCj4gCj4gSW4gd2hpY2ggY2FzZSB3aGF0IHRoZSBjb2RlIG5lZWRzIHRvIGJlIGRvaW5n
IHNvbWV0aGluZyBsaWtlOgo+IAo+IAljbWQudHlwZSA9IEU4MjBfVFlQRV9SQU07Cj4gCWZsYWdz
ID0gSU9SRVNPVVJDRV9NRU07Cj4gCXdhbGtfaW9tZW1fcmVzX2Rlc2MoSU9SRVNfREVTQ19SRVNF
UlZFRCwgZmxhZ3MsIDAsIDEwMjQqMTAyNCwgJmNtZCwKPiAJCQkgICAgICAgbWVtbWFwX2VudHJ5
X2NhbGxiYWNrKTsKPiAKPiBEZXBlbmRpbmcgb24gd2hpY2ggYnVncyBleGlzdCBpdCBtaWdodCBt
YWtlIHNlbnNlIHRvIGxpbWl0IHRoaXMgdG8KPiB0aGUgbG93IDY0MEtpQi4gIEJ1dCBmaW5kaW5n
IHNvbWV0aGluZyB0aGUga2VybmVsIGFscmVhZHkgcmVjb2duaXplcwo+IGFzIFJBTSBzaG91bGQg
cHJldmVudCBtb3N0IG9mIHRob3NlIHByb2JsZW1zIGFscmVhZHkuICBCYXJyaW5nIGJ1Z3MKPiBJ
IGFkbWl0IGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byByZXBlYXQgdGhlIHdvcmsgdGhhdCBzb21l
b25lIGVsc2UKPiBoYXMgYWxyZWFkeSBkb25lLgo+IAo+IFRoaXMgYml0Ogo+IAkvKiBBZGQgZTgy
MCByZXNlcnZlZCByYW5nZXMgKi8KPiAJY21kLnR5cGUgPSBFODIwX1RZUEVfUkVTRVJWRUQ7Cj4g
CWZsYWdzID0gSU9SRVNPVVJDRV9NRU07Cj4gCXdhbGtfaW9tZW1fcmVzX2Rlc2MoSU9SRVNfREVT
Q19SRVNFUlZFRCwgZmxhZ3MsIDAsIC0xLCAmY21kLAo+IAkJCSAgIG1lbW1hcF9lbnRyeV9jYWxs
YmFjayk7Cj4gCj4gU2hvdWxkIHByb2JhYmx5IHN0YXJ0IGF0IDFNaUIgaW5zdGVhZCBvZiAwLiAg
SnVzdCBzbyB3ZSBkb24ndCByZXBvcnQgdGhlCj4gbWVtb3J5IGJlbG93IDFNaUIgYXMgdW5jb25k
aXRpb25hbGx5IHJlc2VydmVkLiAgIEkgZG9uJ3QgcHJvcGVybHkKPiB1bmRlcnN0YW5kIHRoZSBJ
T1JFU19ERVNDX1JFU0VSVkVEIGZsYWcsIGFuZCBob3cgdGhhdCBkaWZmZXJzIGZyb20KPiBmbGFn
cy4gIFNvIHBsZWFzZSB0ZXN0IG15IHN1Z2dlc3Rpb25zIHRvIHZlcmlmeSB0aGUgY29kZSB3b3Jr
cyBhcwo+IGV4cGVjdGVkLgo+IApUaGFua3MgZm9yIHlvdXIgY29tbWVudCwgRXJpYy4KCkkgd2ls
bCBtYWtlIGEgdGVzdCBiYXNlZCBvbiB5b3VyIHN1Z2dlc3Rpb25zLiBCdXQgaSBuZWVkIGFuIFNN
RSBtYWNoaW5lLAptYXliZSBpIHdpbGwgcmVwbHkgbGF0ZXIuCgpUaGFua3MuCkxpYW5ibwoKPiBF
cmljCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpr
ZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
