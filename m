Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1EF1FEDAA
	for <lists+kexec@lfdr.de>; Thu, 18 Jun 2020 10:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JizzzHpaiJfOsUXWqN5Xorv0oMltg5EXTiwqf2pOXcU=; b=okEMEpQnJR0fLADMquRXD9Po6
	gRknfIWF+RCIJdf5kXvUyuyIjH7Tledqo6ZCldawYMVSfGEvP3zP9c0qylxQimQkiIWPwo/U4Cx0M
	8GH7xvZa7TyiMXIm9X5TRp/JTKYSqBgyrTX6CShQZqeXpm25+XAvuNSR4OgF73kEYowPVA0GMwbpA
	AEybDASZ/0bzyGczAFek0MikQ1w5pK2Szku5wqu5ITeOpGKGbgOM1DLRF90LKo80TEpiS7xmem5ey
	qEymRyQKjADPZFjhuJZGRmv9R5KS25ogLPYH0Tcq27JGk84Pj/KnWtyb9q0si44Nj/BvhjUf0uv8d
	ryBIBmkNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpxj-000759-Qe; Thu, 18 Jun 2020 08:31:55 +0000
Received: from mail.windriver.com ([147.11.1.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpxe-00074M-O1
 for kexec@lists.infradead.org; Thu, 18 Jun 2020 08:31:54 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 05I8VhjT013142
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
 Thu, 18 Jun 2020 01:31:44 -0700 (PDT)
Received: from [128.224.162.209] (128.224.162.209) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0;
 Thu, 18 Jun 2020 01:31:43 -0700
Subject: Re: [PATCH] arm64: continue loading even if kaslr-seed is not wiped
 to zero
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <20200616033320.2553-1-xulin.sun@windriver.com>
 <CACi5LpOH8FvTF+iybJ-BionyRiKaz4DC80K2U0_XxEerhcHs6g@mail.gmail.com>
From: Xulin Sun <xulin.sun@windriver.com>
Message-ID: <df9e26a5-4462-2744-3587-acbf706935ff@windriver.com>
Date: Thu, 18 Jun 2020 16:31:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACi5LpOH8FvTF+iybJ-BionyRiKaz4DC80K2U0_XxEerhcHs6g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_013150_791364_37A7145A 
X-CRM114-Status: GOOD (  28.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.11.1.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.11.1.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: xulinsun@gmail.com, Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNi8xNyDkuIvljYgzOjE5LCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPiBIaSBYdW5s
aW4sCj4KPiBPbiBUdWUsIEp1biAxNiwgMjAyMCBhdCA5OjAzIEFNIFh1bGluIFN1biA8eHVsaW4u
c3VuQHdpbmRyaXZlci5jb20+IHdyb3RlOgo+PiBUaGUgY29tbWl0IGMzZjA0MzI0MWE4NjZhIChh
cm02NDogQWRkIHN1cHBvcnQgdG8gc3VwcGx5ICdrYXNsci1zZWVkJyB0byBzZWNvbmRhcnkga2Vy
bmVsKQo+PiBhZGQga2FzbHItc2VlZCBzdXBwb3J0LiBBbmQgY29uc2lkZXIgdGhlIHByaW1hcnkg
a2VybmVsIHJlYWRzIHRoZSAna2FzbHItc2VlZCcKPj4gYW5kIHdpcGVzIGl0IHRvIDAuIEJ1dCBp
biB0aGUgc2l0dWF0aW9uLCAnQ09ORklHX1JBTkRPTUlaRV9CQVNFJyB3YXMgbm90IHNldCB0bwo+
PiB5IGluIHRoZSBwcmltYXJ5IGtlcm5lbCBhbmQgQVRGIGZpcm13YXJlIGhhcyBzZXQgdGhlICdr
YXNsci1zZWVkJyBkdGIgcHJvcGVydHkKPj4gd2l0aCBub24temVybywgVGh1cyB3aWxsIHJldHVy
biBlcnJvci4KPj4KPj4gU28gaW4gdGhlIGFib3ZlIGNhc2UsIGNvbnRpbnVlIGxvYWRpbmcgdGhl
IHNlZ21lbnRzIHdpdGggbm8ga2FzbHIKPj4gc3VwcG9ydGVkIHNpdHVhdGlvbi4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogWHVsaW4gU3VuIDx4dWxpbi5zdW5Ad2luZHJpdmVyLmNvbT4KPj4gLS0tCj4+
ICAga2V4ZWMvYXJjaC9hcm02NC9rZXhlYy1hcm02NC5jIHwgNCArKy0tCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2tleGVjL2FyY2gvYXJtNjQva2V4ZWMtYXJtNjQuYyBiL2tleGVjL2FyY2gvYXJtNjQva2V4ZWMt
YXJtNjQuYwo+PiBpbmRleCAyOTkyYmNlLi41NDBmNGQ3IDEwMDY0NAo+PiAtLS0gYS9rZXhlYy9h
cmNoL2FybTY0L2tleGVjLWFybTY0LmMKPj4gKysrIGIva2V4ZWMvYXJjaC9hcm02NC9rZXhlYy1h
cm02NC5jCj4+IEBAIC01MDYsOCArNTA2LDcgQEAgc3RhdGljIGludCBzZXR1cF8ybmRfZHRiKHN0
cnVjdCBkdGIgKmR0YiwgY2hhciAqY29tbWFuZF9saW5lLCBpbnQgb25fY3Jhc2gpCj4+ICAgICAg
ICAgICAgICAgICAgaWYgKGthc2xyX3NlZWQgIT0gMCkgewo+PiAgICAgICAgICAgICAgICAgICAg
ICAgICAgZGJncHJpbnRmKCIlczoga2FzbHItc2VlZCBpcyBub3Qgd2lwZWQgdG8gMC5cbiIsCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX19mdW5jX18pOwo+PiAt
ICAgICAgICAgICAgICAgICAgICAgICByZXN1bHQgPSAtRUlOVkFMOwo+PiAtICAgICAgICAgICAg
ICAgICAgICAgICBnb3RvIG9uX2Vycm9yOwo+PiArICAgICAgICAgICAgICAgICAgICAgICBnb3Rv
IHVuYWJsZV9rYXNscjsKPj4gICAgICAgICAgICAgICAgICB9Cj4+Cj4+ICAgICAgICAgICAgICAg
ICAgLyoKPj4gQEAgLTU1MCw2ICs1NDksNyBAQCBzdGF0aWMgaW50IHNldHVwXzJuZF9kdGIoc3Ry
dWN0IGR0YiAqZHRiLCBjaGFyICpjb21tYW5kX2xpbmUsIGludCBvbl9jcmFzaCkKPj4gICAgICAg
ICAgICAgICAgICB9Cj4+ICAgICAgICAgIH0KPj4KPj4gK3VuYWJsZV9rYXNscjoKPj4gICAgICAg
ICAgaWYgKG9uX2NyYXNoKSB7Cj4+ICAgICAgICAgICAgICAgICAgLyogYWRkIGxpbnV4LGVsZmNv
cmVoZHIgKi8KPj4gICAgICAgICAgICAgICAgICBub2Rlb2Zmc2V0ID0gZmR0X3BhdGhfb2Zmc2V0
KG5ld19idWYsICIvY2hvc2VuIik7Cj4+IC0tCj4+IDIuMTcuMQo+IFNvcnJ5LCBidXQgdGhpcyBz
ZWVtcyBsaWtlIGFuIEFURiBpc3N1ZSB3aGljaCB5b3UgYXJlIHRyeWluZyB0byBmaXggaW4KPiBr
ZXhlYy10b29scy4KPiBTZWUgJ0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jaG9z
ZW4udHh0JyBmb3IgdGhlIGRldGFpbHMgb2YKPiB0aGUgJ2thc2xyLXNlZWQnIHByb3BlcnR5Ogo+
Cj4ga2FzbHItc2VlZAo+IC0tLS0tLS0tLS0tCj4KPiBUaGlzIHByb3BlcnR5IGlzIHVzZWQgd2hl
biBib290aW5nIHdpdGggQ09ORklHX1JBTkRPTUlaRV9CQVNFIGFzIHRoZQo+IGVudHJvcHkgdXNl
ZCB0byByYW5kb21pemUgdGhlIGtlcm5lbCBpbWFnZSBiYXNlIGFkZHJlc3MgbG9jYXRpb24uIFNp
bmNlCj4gaXQgaXMgdXNlZCBkaXJlY3RseSwgdGhpcyB2YWx1ZSBpcyBpbnRlbmRlZCBvbmx5IGZv
ciBLQVNMUiwgYW5kIHNob3VsZAo+IG5vdCBiZSB1c2VkIGZvciBvdGhlciBwdXJwb3NlcyAoYXMg
aXQgbWF5IGxlYWsgaW5mb3JtYXRpb24gYWJvdXQgS0FTTFIKPiBvZmZzZXRzKS4gSXQgaXMgcGFy
c2VkIGFzIGEgdTY0IHZhbHVlLCBlLmcuCj4KPiAvIHsKPiAgICAgIGNob3NlbiB7Cj4gICAgICAg
ICAga2FzbHItc2VlZCA9IDwweGZlZWRiZWVmIDB4YzBkZWYwMGQ+Owo+ICAgICAgfTsKPiB9Owo+
Cj4gU28sIGlmIENPTkZJR19SQU5ET01JWkVfQkFTRSAob3Iga2FzbHIpIGlzIGRpc2FibGVkLCB0
aGlzIHZhbHVlIHNob3VsZAo+IG5vdCBiZSBhdmFpbGFibGUgaW4gdGhlIHBhdGNoZWQgRFRCIHJl
YWQgZnJvbSB0aGUga2VybmVsLCBhcyBvdGhlcndpc2UKPiB3ZSBoYXZlIGEgcG9zc2libGUgc2Vj
dXJpdHkgdnVsbmVyYWJpbGl0eSBhcyB3ZSBhcmUgbGVha2luZyBvdXQgdGhlCj4ga2VybmVsIHRl
eHQgYWRkcmVzcyB3aGljaCBjYW4gYmUgdXNlZCBieSBzbm9vcGluZyBhcHBsaWNhdGlvbnMgdG8K
PiBpbmplY3QgbWFsaWNpb3VzIGNvZGUgaW4gdGhlIGtlcm5lbC4KPgo+IEZvciBleGFtcGxlIG9u
IG15IHF1YWxjb21tIGFybTY0IHBsYXRmb3JtLCBpZiBDT05GSUdfUkFORE9NSVpFX0JBU0UgaXMK
PiBzZXQgdG8gbiwgdXNlci1zcGFjZSB0b29scyBsaWtlICdkdGMnIGFyZSBub3QgYWJsZSB0byBm
aW5kIHRoZQo+ICdrYXNsci1zZWVkJyBwcm9wZXJ0eSBpbiB0aGUgL2Nob3NlbiBub2RlIChhbmQg
c2FtZSBpcyB0aGUgY2FzZSB3aXRoCj4ga2V4ZWMtdG9vbHMpOgo+Cj4gIyBkdGMgLUkgZHRiIC1P
IGR0cyAvc3lzL2Zpcm13YXJlL2ZkdCB8IGdyZXAgLUEgMTAgLWkgY2hvc2VuCj4gICAgICBjaG9z
ZW4gewo+ICAgICAuLi4gbm8gJ2thc2xyLXNlZWQnIG5vZGUKPiB9CgoKT24gbXkgTlhQIExTMTA0
M0EgUkRCIHBsYXRmb3JtKGFybTY0KSwgdGhlIEFURiByZWxhdGVkIGJvb3Rsb2FkZXIgYW5kIApm
aXJtd2FyZSBhcmUgZGVmYXVsdCBpbnN0YWxsZWQgd2l0aCBOWFAgcmVsZWFzZWQgbGF0ZXN0IHZl
cnNpb24uCgoxLiBpZsKgIENPTkZJR19SQU5ET01JWkVfQkFTRSBpcyBzZXQgdG8gbiBvbiBsaW51
eCBrZXJuZWwuCgojZHRjIC1JIGR0YiAtTyBkdHMgZmR0IHwgZ3JlcCAtQSAxMCAtaSBjaG9zZW4K
CiDCoMKgwqAgY2hvc2VuIHsKIMKgwqDCoCDCoMKgwqAga2FzbHItc2VlZCA9IDwweDQ4ODk1MjAz
IDB4OTM1YmVhMzE+OwoKfQoKMi4gaWbCoCBDT05GSUdfUkFORE9NSVpFX0JBU0UgaXMgc2V0IHRv
IHkgb24gbGludXgga2VybmVsCgojZHRjIC1JIGR0YiAtTyBkdHMgZmR0IHwgZ3JlcCAtQSAxMCAt
aSBjaG9zZW4KCiDCoMKgwqAgY2hvc2VuIHsKIMKgwqDCoCDCoMKgwqAga2FzbHItc2VlZCA9IDww
eDAgMHgwPjsKCn0KClRoZSB1LWJvb3QgY29kZSBmbG93IHRvIHNldCB0aGUgImthc2xyLXNlZWQi
IGlzOiAKaHR0cHM6Ly9zb3VyY2UuY29kZWF1cm9yYS5vcmcvZXh0ZXJuYWwvcW9yaXEvcW9yaXEt
Y29tcG9uZW50cy91LWJvb3QKCiDCoMKgwqAgZnRfYm9hcmRfc2V0dXAKIMKgwqDCoCDCoMKgwqAg
ZnRfY3B1X3NldHVwCiDCoMKgwqAgwqDCoCDCoMKgwqDCoCBmZHRfZml4dXBfa2FzbHIKIMKgwqDC
oCDCoMKgIMKgwqDCoCDCoMKgwqDCoCBmZHRfc2V0cHJvcChmZHQsIG5vZGVvZmZzZXQsICJrYXNs
ci1zZWVkIiwgcmFuZCwKClNvIEkgc3VzcGVjdCB0aGF0IHUtYm9vdCB3aWxsIHNldCB0aGUgImth
c2xyLXNlZWQiIHByb3BlcnR5IGFuZCBkb2VzIG5vdCAKbmVlZCB0byBrbm93IGlmIGtlcm5lbCBo
YXMgZW5hYmxlZCB0aGUga2VybmVsIGNvbmZpZyBvcHRpb24gCiJDT05GSUdfUkFORE9NSVpFX0JB
U0UiIG9yIG5vdCwgYW5kIGl0IGhhcyBubyB3YXkgdG8gZ2V0IHRoZSB2YWx1ZS4KCkRvIHlvdXIg
cXVhbGNvbW0gYXJtNjQgcGxhdGZvcm0gdXNlIHRoZSBzYW1lIHUtYm9vdCBjb2RlIHdpdGggImdp
dC5kZW54LmRlIj8KCgpUaGFua3MKClh1bGluCgoKPgo+IEFsc28gY29uZmlybSB0aGF0IHRoZSBr
ZXJuZWwgc3ltYm9sIGJhc2UgYWRkcmVzcyBpcyBub3QgcmFuZG9taXplZCBvbgo+IHN1Y2Nlc3Np
dmUgcmVib290cyAoaW4gdGhpcyBjYXNlKSB2aWE6Cj4gIyBjYXQgL3Byb2Mva2FsbHN5bXMKPgo+
IFdoZXJlYXMsIGlmIEkgYm9vdCB0aGUga2VybmVsIHdpdGggQ09ORklHX1JBTkRPTUlaRV9CQVNF
IChvciBrYXNscikKPiBlbmFibGVkLCBJIGNhbiBzZWUgdGhhdCB0aGUgJ2thc2xyLXNlZWQnIHBy
b3BlcnR5IGlzIHdpcGVkIHRvICcwJyAoYXMKPiBleHBlY3RlZCBieSB0aGUga2VybmVsJykgYW5k
IGNhbiBiZSBzZWVuIGluIHRoZSBvdXRwdXQgb2Y6Cj4KPiAjIGR0YyAtSSBkdGIgLU8gZHRzIC9z
eXMvZmlybXdhcmUvZmR0IHwgZ3JlcCAtQSAxMCAtaSBjaG9zZW4KPiAgICAgIGNob3NlbiB7Cj4g
ICAgICBrYXNsci1zZWVkID0gPDB4MCAweDA+Cj4gfQo+Cj4gVGhhbmtzLAo+IEJodXBlc2gKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFp
bGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
