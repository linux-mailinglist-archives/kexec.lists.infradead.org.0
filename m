Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D91E15BC6A
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 11:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXkUlCi2Y/0iigGecRT1dHb5QkuYx8wSJgkM2EadzJw=; b=Zm353pWRVxH85U
	Qw+pJMjltJWEXx6RADN37oMjxlT0Jw79lyCL9qXmHsnyoAhZKU1Ojt+0RJRpJaaozxeAK1MForj9U
	XGQ7ycleNtCCXOZHNqw5mJWQOb+Tl9eq9l3zGrS97LJ3wrxdZjOls7D4TXAVrEaTAHD2IIynQEhlk
	P7SFv4H5BxjtGTkxpdSVhw8uI14lNqClR9tTcLKdqD5QF1nkRqi1UfoRAe7I4d/XCiR0MhOzfpebG
	b/2EBM8uKwQXnuD3C7rq40QgWzy7GfaycZVr2FcRE1xRR8aGb6PXUwP1k4a7Tk2HSo0ua4hVjIg8d
	TRSIvIukbfldF29TgKYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BUT-0002aA-WA; Thu, 13 Feb 2020 10:13:02 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BUO-0002Yh-Ka
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 10:12:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581588775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aqDOBSle7UcvyptwVKf/dJGht9CB4yCF9/hhb6ioJsI=;
 b=VLHfbw5lAlNQi1W5oTW6ynCU/2VuJL+IYCShGhAgN6ejqR/xphnIKNZUgh84IH2YYqwQik
 9WNKYg8ThtoInZ0zDPLXUqOz7J85KZek65JIVDbKA9dNuY2ItP4KVMuaFXzRa09H3Tof4O
 OEI+t8qdM4tXlY6Buksqlh0it41JtZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-k5IAOR_ENYaCpcMpaB_ZMg-1; Thu, 13 Feb 2020 05:12:49 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE2D4800D41;
 Thu, 13 Feb 2020 10:12:48 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-202.pek2.redhat.com
 [10.72.12.202])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ECD826E40A;
 Thu, 13 Feb 2020 10:12:43 +0000 (UTC)
Subject: Re: [PATCH] kexec: support parsing the string "Reserved" to get the
 correct e820 reserved region
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <20200212125658.9654-1-lijiang@redhat.com>
 <CACi5LpPMGut9KLh6_VzoF-o8q9_O11dasXU1YcVKmxiAj=EdBA@mail.gmail.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <c55bcf71-8b3d-6292-20c3-ca83b3e54db6@redhat.com>
Date: Thu, 13 Feb 2020 18:12:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CACi5LpPMGut9KLh6_VzoF-o8q9_O11dasXU1YcVKmxiAj=EdBA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: k5IAOR_ENYaCpcMpaB_ZMg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021256_760142_120FF6A3 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dave Young <dyoung@redhat.com>, Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMjDlubQwMuaciDEz5pelIDAzOjQ2LCBCaHVwZXNoIFNoYXJtYSDlhpnpgZM6Cj4gSGkg
TGlhbmJvLAo+IAo+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLgo+IAo+IE9uIFdlZCwgRmViIDEyLCAy
MDIwIGF0IDY6MjcgUE0gTGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhhdC5jb20+IHdyb3RlOgo+
Pgo+PiBXaGVuIGxvYWRpbmcga2VybmVsIGFuZCBpbml0cmFtZnMgZm9yIGtleGVjLCBrZXhlYy10
b29scyBjb3VsZCBnZXQgdGhlCj4+IGU4MjAgcmVzZXJ2ZWQgcmVnaW9uIGZyb20gIi9wcm9jL2lv
bWVtIiBpbiBvcmRlciB0byByZWJ1aWxkIHRoZSBlODIwCj4+IHJhbmdlcyBmb3Iga2V4ZWMga2Vy
bmVsLCBidXQgdGhlcmUgbWF5IGJlIHRoZSBzdHJpbmcgIlJlc2VydmVkIiBpbiB0aGUKPj4gIi9w
cm9jL2lvbWVtIiwgd2hpY2ggY2F1c2VkIHRoZSBmYWlsdXJlIG9mIHBhcnNpbmcuIEZvciBleGFt
cGxlOgo+Pgo+PiAgI2NhdCAvcHJvYy9pb21lbXxncmVwIC1pIHJlc2VydmVkCj4+IDAwMDAwMDAw
LTAwMDAwZmZmIDogUmVzZXJ2ZWQKPj4gN2YzMzgwMDAtN2YzNGRmZmYgOiBSZXNlcnZlZAo+PiA3
ZjNjZDAwMC04ZmZmZmZmZiA6IFJlc2VydmVkCj4+IGYxN2YwMDAwLWYxN2YxZmZmIDogUmVzZXJ2
ZWQKPj4gZmUwMDAwMDAtZmZmZmZmZmYgOiBSZXNlcnZlZAo+Pgo+PiBDdXJyZW50bHksIGtleGVj
LXRvb2xzIGNhbiBub3QgaGFuZGxlIHRoZSBhYm92ZSBjYXNlIGJlY2F1c2UgdGhlIG1lbWNtcCgp
Cj4+IGlzIGNhc2Ugc2Vuc2l0aXZlIHdoZW4gY29tcGFyaW5nIHRoZSBzdHJpbmcuCj4+Cj4+IFNv
LCBsZXQncyBmaXggdGhpcyBjb3JuZXIgYW5kIG1ha2Ugc3VyZSB0aGF0IHRoZSBzdHJpbmcgInJl
c2VydmVkIiBhbmQKPj4gIlJlc2VydmVkIiBpbiB0aGUgIi9wcm9jL2lvbWVtIiBhcmUgYm90aCBw
YXJzZWQgYXBwcm9wcmlhdGVseS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGlhbmJvIEppYW5nIDxs
aWppYW5nQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiBOb3RlOgo+PiBQbGVhc2UgZm9sbG93IHVwIHRo
aXMgY29tbWl0IGJlbG93IGFib3V0IGtkdW1wIGZpeC4KPj4gMWFjM2U0YTU3MDAwICgia2R1bXA6
IGZpeCBhbiBlcnJvciB0aGF0IGNhbiBub3QgcGFyc2UgdGhlIGU4MjAgcmVzZXJ2ZWQgcmVnaW9u
IikKPj4KPj4gIGtleGVjL2FyY2gvaTM4Ni9rZXhlYy14ODYtY29tbW9uLmMgfCAzICsrKwo+PiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEva2V4ZWMv
YXJjaC9pMzg2L2tleGVjLXg4Ni1jb21tb24uYyBiL2tleGVjL2FyY2gvaTM4Ni9rZXhlYy14ODYt
Y29tbW9uLmMKPj4gaW5kZXggNjFlYTE5MzgwYWIyLi44NmJjYzhjMDY3N2UgMTAwNjQ0Cj4+IC0t
LSBhL2tleGVjL2FyY2gvaTM4Ni9rZXhlYy14ODYtY29tbW9uLmMKPj4gKysrIGIva2V4ZWMvYXJj
aC9pMzg2L2tleGVjLXg4Ni1jb21tb24uYwo+PiBAQCAtOTMsNiArOTMsOSBAQCBzdGF0aWMgaW50
IGdldF9tZW1vcnlfcmFuZ2VzX3Byb2NfaW9tZW0oc3RydWN0IG1lbW9yeV9yYW5nZSAqKnJhbmdl
LCBpbnQgKnJhbmdlcwo+PiAgICAgICAgICAgICAgICAgZWxzZSBpZiAobWVtY21wKHN0ciwgInJl
c2VydmVkXG4iLCA5KSA9PSAwKSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgIHR5cGUgPSBS
QU5HRV9SRVNFUlZFRDsKPj4gICAgICAgICAgICAgICAgIH0KPj4gKyAgICAgICAgICAgICAgIGVs
c2UgaWYgKG1lbWNtcChzdHIsICJSZXNlcnZlZFxuIiwgOSkgPT0gMCkgewo+PiArICAgICAgICAg
ICAgICAgICAgICAgICB0eXBlID0gUkFOR0VfUkVTRVJWRUQ7Cj4+ICsgICAgICAgICAgICAgICB9
Cj4gCj4gSW5zdGVhZCBvZiBpbnRyb2R1Y2luZyBhbm90aGVyICdlbHNlLWlmJyBjYXNlIGhlcmUs
IGNhbiB3ZSB1c2UKPiBzdHJuY2FzZWNtcCgpIGluc3RlYWQuCj4gCj4gSXQgIGNvbXBhcmVzIHRo
ZSB0d28gaW5wdXQgc3RyaW5ncyAoc2F5IHMxIGFuZCBzMiksIGlnbm9yaW5nIHRoZSBjYXNlCj4g
b2YgdGhlIGNoYXJhY3RlcnMuIEFsc28gaXQgb25seSBjb21wYXJlcyB0aGUgZmlyc3QgbiBieXRl
cyBvZiBzMSAoc28KPiB0aGUgZm9ybWF0IGlzIHRoZSBzYW1lIGFzIG1lbWNtcCkuCj4gCj4gSW4g
dGhpcyB3YXksIHdlIGNhbiBiZSBzdXJlIHRvIGZ1dHVyZS1wcm9vZiB0aGUga2V4ZWMtdG9vbHMg
Y29kZSBjaGVjawo+IGZyb20gZnV0dXJlIG5vdGF0aW9uIG9mIHRoZSAiUmVzZXJ2ZWQiIGZpZWxk
IGluIHRlcm1zIG9mIHRoZSBjYXNlIHVzZWQKPiB0byBkZW5vdGUgdGhlICJSZXNlcnZlZCIgc3Ry
aW5nLgo+IAo+IFdoYXQncyB5b3VyIHZpZXcgb24gdGhlIHNhbWU/Cj4gClRoYW5rcyBmb3IgeW91
ciBjb21tZW50LCBCaHVwZXNoLgoKSSBoYXZlIG5vIHByZWZlcmVuY2UgYWJvdXQgdGhpcywgYm90
aCBhcmUgZ29vZCB0byBtZS4gCgpJZiBubyBvbmUgZGlzYWdyZWVzIHdpdGggdGhpcyBzdWdnZXN0
aW9uLCBJIHdpbGwgY2hhbmdlIHRvIHRoZSBzdHJuY2FzZWNtcCgpCmFuZCBwb3N0IHYyIGxhdGVy
LiBBbnkgb3RoZXIgcmV2aWV3ZXJzPwoKTGlhbmJvCgo+IFJlZ2FyZHMsCj4gQmh1cGVzaAo+IAo+
PiAgICAgICAgICAgICAgICAgZWxzZSBpZiAobWVtY21wKHN0ciwgIkFDUEkgVGFibGVzXG4iLCAx
MikgPT0gMCkgewo+PiAgICAgICAgICAgICAgICAgICAgICAgICB0eXBlID0gUkFOR0VfQUNQSTsK
Pj4gICAgICAgICAgICAgICAgIH0KPj4gLS0KPj4gMi4xNy4xCj4+Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IGtleGVjIG1haWxpbmcgbGlz
dAo+PiBrZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMKPj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2tleGVjCg==
