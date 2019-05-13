Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0121A1B177
	for <lists+kexec@lfdr.de>; Mon, 13 May 2019 09:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQ3y1b3gfgvj74mJJJpKIzqltRuU5pq/Wxnr8hllo5I=; b=oFJ+azY11N796G
	xb+tpx+uDYd2Subl/oITmjzLzppIgOyC3G/f5O1qlJ/B4jzDecFZH7ZJxyS/sIvQEio2M5AktP7g8
	Fm6+KLshuZ8dzw63oUuZm9xs11PNj8gVVo8IZ14aYBeG+FyyhGSw9fNJ4e7OViw8YH3tfCIrSc2jh
	/uyKR0BJrDKQ+mP1S4+C4rap7EJ/liMDcyhKCMQ7wil0Uy9HLLr6lIHmLvClXr0Tp3bZcZeIt4QiS
	JtrBySRyw7vGmPA0jniXuZLqf61rjp3xsZzT4z3fHlmmUUzcRwVMwGGlhumFyzIHMuulWgzcfc1YH
	faKQLwOC+LiXv5Wc/wRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5gx-00026S-94; Mon, 13 May 2019 07:48:11 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5gt-00025y-Vx
 for kexec@lists.infradead.org; Mon, 13 May 2019 07:48:09 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3A96E59449;
 Mon, 13 May 2019 07:48:07 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-55.pek2.redhat.com [10.72.12.55])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FCDB413C;
 Mon, 13 May 2019 07:48:01 +0000 (UTC)
Subject: Re: [PATCH] kexec/x86: Unconditionally add the acpi_rsdp command line
To: Kairui Song <kasong@redhat.com>
References: <20190315093547.6057-1-lijiang@redhat.com>
 <CACPcB9fwdsj+gOfZUuAUGvPCHn2vF67jH-+2Mc8=mJquaGJSWA@mail.gmail.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <4ca9bc6d-a055-5ca0-343f-2060b1887881@redhat.com>
Date: Mon, 13 May 2019 15:47:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CACPcB9fwdsj+gOfZUuAUGvPCHn2vF67jH-+2Mc8=mJquaGJSWA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 13 May 2019 07:48:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004808_058589_954B0228 
X-CRM114-Status: GOOD (  22.10  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org,
 Baoquan He <bhe@redhat.com>, brijesh.singh@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwNeaciDEz5pelIDE0OjQwLCBLYWlydWkgU29uZyDlhpnpgZM6Cj4gT24gRnJp
LCBNYXIgMTUsIDIwMTkgYXQgNTozNiBQTSBMaWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+Cj4+IFRoZSBMaW51eCBrZXJuZWwgY29tbWl0IDNhNjNmNzBiZjRjMyBpbnRy
b2R1Y2VzIHRoZSBlYXJseSBwYXJzaW5nCj4+IG9mIHRoZSBSU0RQLiBUaGlzIG1lYW5zIHRoYXQg
Ym9vdCBsb2FkZXIgbXVzdCBlaXRoZXIgc2V0IHRoZQo+PiBib290X3BhcmFtcy5hY3BpX3JzZHBf
YWRkciBvciBwYXNzIGEgY29tbWFuZCBsaW5lICdhY3BpX3JzZHA9eHh4Jwo+PiB0byB0ZWxsIHRo
ZSBSRFNQIHBoeXNpY2FsIGFkZHJlc3MuCj4+Cj4+IEN1cnJlbnRseSwga2V4ZWMgbmVpdGhlciBz
ZXRzIHRoZSBib290X3BhcmFtcy5hY3BpX3JzZHAgb3IgcGFzc2VzCj4+IGFjcGlfcnNkcCBjb21t
YW5kIGxpbmUgaWYgaXQgc2VlcyB0aGUgZmlyc3Qga2VybmVsIHN1cHBvcnQgZWZpCj4+IHJ1bnRp
bWUuIFRoaXMgaXMgY2F1c2luZyB0aGUgc2Vjb25kIGtlcm5lbCBib290IGZhaWx1cmUuCj4+IFRo
ZSBFRkkgcnVudGltZSBpcyBub3QgYXZhaWxhYmxlIHNvIGVhcmx5IGluIHRoZSBib290IHByb2Nl
c3Mgc28KPj4gdW5jb25kaXRpb25hbGx5IHBhc3MgdGhlICdhY3BpX3JzZHA9eHh4JyB0byB0aGUg
c2Vjb25kIGtlcm5lbC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGlhbmJvIEppYW5nIDxsaWppYW5n
QHJlZGhhdC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEJyaWplc2ggU2luZ2ggPGJyaWplc2guc2lu
Z2hAYW1kLmNvbT4KPj4gLS0tCj4+ICBrZXhlYy9hcmNoL2kzODYvY3Jhc2hkdW1wLXg4Ni5jIHwg
MTcgKy0tLS0tLS0tLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MTYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9rZXhlYy9hcmNoL2kzODYvY3Jhc2hk
dW1wLXg4Ni5jIGIva2V4ZWMvYXJjaC9pMzg2L2NyYXNoZHVtcC14ODYuYwo+PiBpbmRleCAxNDBm
NDViLi5hMjliMTViIDEwMDY0NAo+PiAtLS0gYS9rZXhlYy9hcmNoL2kzODYvY3Jhc2hkdW1wLXg4
Ni5jCj4+ICsrKyBiL2tleGVjL2FyY2gvaTM4Ni9jcmFzaGR1bXAteDg2LmMKPj4gQEAgLTM1LDcg
KzM1LDYgQEAKPj4gICNpbmNsdWRlIDxzeXMvdHlwZXMuaD4KPj4gICNpbmNsdWRlIDxzeXMvc3Rh
dC5oPgo+PiAgI2luY2x1ZGUgPHVuaXN0ZC5oPgo+PiAtI2luY2x1ZGUgPGRpcmVudC5oPgo+PiAg
I2luY2x1ZGUgIi4uLy4uL2tleGVjLmgiCj4+ICAjaW5jbHVkZSAiLi4vLi4va2V4ZWMtZWxmLmgi
Cj4+ICAjaW5jbHVkZSAiLi4vLi4va2V4ZWMtc3lzY2FsbC5oIgo+PiBAQCAtNzcyLDE4ICs3NzEs
NiBAQCBzdGF0aWMgZW51bSBjb3JldHlwZSBnZXRfY29yZV90eXBlKHN0cnVjdCBjcmFzaF9lbGZf
aW5mbyAqZWxmX2luZm8sCj4+ICAgICAgICAgfQo+PiAgfQo+Pgo+PiAtc3RhdGljIGludCBzeXNm
c19lZmlfcnVudGltZV9tYXBfZXhpc3Qodm9pZCkKPj4gLXsKPj4gLSAgICAgICBESVIgKmRpcjsK
Pj4gLQo+PiAtICAgICAgIGRpciA9IG9wZW5kaXIoIi9zeXMvZmlybXdhcmUvZWZpL3J1bnRpbWUt
bWFwIik7Cj4+IC0gICAgICAgaWYgKCFkaXIpCj4+IC0gICAgICAgICAgICAgICByZXR1cm4gMDsK
Pj4gLQo+PiAtICAgICAgIGNsb3NlZGlyKGRpcik7Cj4+IC0gICAgICAgcmV0dXJuIDE7Cj4+IC19
Cj4+IC0KPj4gIC8qIEFwcGVuZHMgJ2FjcGlfcnNkcD0nIGNvbW1hbmRsaW5lIGZvciBlZmkgYm9v
dCBjcmFzaCBkdW1wICovCj4+ICBzdGF0aWMgdm9pZCBjbWRsaW5lX2FkZF9lZmkoY2hhciAqY21k
bGluZSkKPj4gIHsKPj4gQEAgLTk3OCw5ICs5NjUsNyBAQCBpbnQgbG9hZF9jcmFzaGR1bXBfc2Vn
bWVudHMoc3RydWN0IGtleGVjX2luZm8gKmluZm8sIGNoYXIqIG1vZF9jbWRsaW5lLAo+PiAgICAg
ICAgIGRiZ3ByaW50ZigiQ3JlYXRlZCBlbGYgaGVhZGVyIHNlZ21lbnQgYXQgMHglbHhcbiIsIGVs
ZmNvcmVoZHIpOwo+PiAgICAgICAgIGlmIChkZWxldGVfbWVtbWFwKG1lbW1hcF9wLCAmbnJfbWVt
bWFwLCBlbGZjb3JlaGRyLCBtZW1zeikgPCAwKQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC0x
Owo+PiAtICAgICAgIGlmICghYnpJbWFnZV9zdXBwb3J0X2VmaV9ib290IHx8IGFyY2hfb3B0aW9u
cy5ub2VmaSB8fAo+PiAtICAgICAgICAgICAhc3lzZnNfZWZpX3J1bnRpbWVfbWFwX2V4aXN0KCkp
Cj4+IC0gICAgICAgICAgICAgICBjbWRsaW5lX2FkZF9lZmkobW9kX2NtZGxpbmUpOwo+PiArICAg
ICAgIGNtZGxpbmVfYWRkX2VmaShtb2RfY21kbGluZSk7Cj4+ICAgICAgICAgY21kbGluZV9hZGRf
ZWxmY29yZWhkcihtb2RfY21kbGluZSwgZWxmY29yZWhkcik7Cj4+Cj4+ICAgICAgICAgLyogSW5m
b3JtIHNlY29uZCBrZXJuZWwgYWJvdXQgdGhlIHByZXNlbmNlIG9mIEFDUEkgdGFibGVzLiAqLwo+
PiAtLQo+PiAyLjE3LjEKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4+IGtleGVjQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9r
ZXhlYwo+IAo+IEhpIExpYW5ibywKPiAKPiBJJ3ZlIHNlbnQgYW5vdGhlciBwYXRjaCBzaW1pbGlh
ciB0byB5b3VyczoKPiBbUEFUQ0hdIHg4NjogQWx3YXlzIHRyeSB0byBmaWxsIGFjcGlfcnNkcF9h
ZGRyIGluIGJvb3QgcGFyYW1zCj4gCj4gSSdsbCB1cGRhdGUgVjIgYW5kIHlvdXIgdXNlIGNhc2Ug
c2hvdWxkIGFsc28gYmUgY292ZXJlZCBpbiB0aGF0IHBhdGNoLAo+IGFzIHdlIGhhdmUgdGFsa2Vk
IGluIElSQyBwcmV2aW91c2x5LCB0aGFua3MhCgpPSy4gSSBub3RpY2VkIHRoYXQgdGhlIFJTRFAg
cGFyc2luZyB3YXMgZGlzYWJsZWQgaW4gdXBzcmVhbSBrZXJuZWwuIFBsZWFzZQpyZWZlciB0byB0
aGUgZm9sbG93aW5nIGhlYWRpbmc6CgoieDg2L2Jvb3Q6IERpc2FibGUgUlNEUCBwYXJzaW5nIHRl
bXBvcmFyaWx5IgoKU28sIGZvciB0aGlzIGNhc2UsIG5vIGxvbmdlciBuZWVkIGl0LiBQbGVhc2Ug
aWdub3JlIGl0LgoKVGhhbmtzLgpMaWFuYm8KPiAKPiAtLQo+IEJlc3QgUmVnYXJkcywKPiBLYWly
dWkgU29uZwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
