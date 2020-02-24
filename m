Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2518016A70F
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 14:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvS/XfsncwtcN17OgMm+evIgzAJJXm5BQ/t2TpkHLOU=; b=b97HvgFpVwFx2d
	AoRuyGGCAlUjQBZTs/LhkwV63iqp8SDtIcN3rjVscjgIZfoZvRXUAvftAeesxywlP7vqsiuGeQsaz
	tnoaCYTDbN1zSRdOv1IVe1oJoxHqBM5/NJsghb6AXqwJLv+35Bb0kwRN3fvMYobHIwedWHlJaLdZF
	D02H6RprInb/AWfcw8V9RIlJGc5CS51j5WX8sqKCaverD5/nx+gDDa+nAIXbodFv21W5KBGWaM61v
	xxSfSZZzImlwg+egLhaY0jECOENPDoayK9wtnJVMZPbUmKBSIvt3Ksqq4cHyVzPLjDuEw/OcXgfRn
	KO1vmBO3LKISXIFbX+zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DZm-0008Em-In; Mon, 24 Feb 2020 13:15:10 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DZi-0007dM-Ll
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 13:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582550105;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q2LAcQBOxsFFr5Z15ekNFzsrRLu0QTWMpI/jGMJkTSI=;
 b=ODJuSDFhU666ZEBg+2VLcf0l+GW+aEmiEufxKOvNNEMtr3rfSyqZXaSJGdyYYekpx6ng1M
 vP7bGlxidT127mWZhPD67hmfDfVjgqxlXhm9Yn50jSwAcjcA7qJid8Ui3VWU8jfw0re0WX
 OJ520JFgvpYQx90VTN0Mtzwy4flpUZk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-KxntB1uaN92pTwIj-Y2zrA-1; Mon, 24 Feb 2020 08:15:03 -0500
X-MC-Unique: KxntB1uaN92pTwIj-Y2zrA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2755D8010E8;
 Mon, 24 Feb 2020 13:15:02 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-16.pek2.redhat.com [10.72.12.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE94B5D9E2;
 Mon, 24 Feb 2020 13:14:56 +0000 (UTC)
Subject: Re: [PATCH v2] kexec: support parsing the string "Reserved" to get
 the correct e820 reserved region
To: Baoquan He <bhe@redhat.com>
References: <20200224063655.9890-1-lijiang@redhat.com>
 <20200224064804.GC24216@MiWiFi-R3L-srv>
From: lijiang <lijiang@redhat.com>
Message-ID: <c88eacdf-4116-edc7-d2c3-945c269708be@redhat.com>
Date: Mon, 24 Feb 2020 21:14:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200224064804.GC24216@MiWiFi-R3L-srv>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_051506_813460_3CEBDE40 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dyoung@redhat.com, bhsharma@redhat.com, horms@verge.net.au,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMjDlubQwMuaciDI05pelIDE0OjQ4LCBCYW9xdWFuIEhlIOWGmemBkzoKPiBPbiAwMi8y
NC8yMCBhdCAwMjozNnBtLCBMaWFuYm8gSmlhbmcgd3JvdGU6Cj4+IFdoZW4gbG9hZGluZyBrZXJu
ZWwgYW5kIGluaXRyYW1mcyBmb3Iga2V4ZWMsIGtleGVjLXRvb2xzIGNvdWxkIGdldCB0aGUKPj4g
ZTgyMCByZXNlcnZlZCByZWdpb24gZnJvbSAiL3Byb2MvaW9tZW0iIGluIG9yZGVyIHRvIHJlYnVp
bGQgdGhlIGU4MjAKPj4gcmFuZ2VzIGZvciBrZXhlYyBrZXJuZWwsIGJ1dCB0aGVyZSBtYXkgYmUg
dGhlIHN0cmluZyAiUmVzZXJ2ZWQiIGluIHRoZQo+PiAiL3Byb2MvaW9tZW0iLCB3aGljaCBjYXVz
ZWQgdGhlIGZhaWx1cmUgb2YgcGFyc2luZy4gRm9yIGV4YW1wbGU6Cj4+Cj4+ICAjY2F0IC9wcm9j
L2lvbWVtfGdyZXAgLWkgcmVzZXJ2ZWQKPj4gMDAwMDAwMDAtMDAwMDBmZmYgOiBSZXNlcnZlZAo+
PiA3ZjMzODAwMC03ZjM0ZGZmZiA6IFJlc2VydmVkCj4+IDdmM2NkMDAwLThmZmZmZmZmIDogUmVz
ZXJ2ZWQKPj4gZjE3ZjAwMDAtZjE3ZjFmZmYgOiBSZXNlcnZlZAo+PiBmZTAwMDAwMC1mZmZmZmZm
ZiA6IFJlc2VydmVkCj4gCj4gVGhpcyBsb29rcyBnb29kIHRvIG1lLiBIb3dldmVyLCBpcyBpdCBp
bnZlc3RpZ2F0ZWQgd2h5IHRoZXJlIGFyZSB0d28KPiBkaWZmZXJlbnQgbmFtZXMgZm9yIHJlc2Vy
dmVkIGU4MjAgcmVnaW9ucz8gQ2FuIHdlIHVuaWZ5IHRoZW0gd2l0aCBvbmUKPiBuYW1lIGluIGtl
cm5lbCwgJ1Jlc2VydmVkJyBvciAncmVzZXJ2ZWQnPwo+IApUaGFua3MgZm9yIHlvdXIgY29tbWVu
dC4KCkFzIHdlIGRpc2N1c3NlZCBpbiBJUkMsIGZvciB0aGUga2V4ZWMtdG9vbHMsIHdlIGhhdmUg
dG8gY29uc2lkZXIgdGhlCmNvbXBhdGliaWxpdHkgYmVjYXVzZSBvZiBhbiBvbGQgInJlc2VydmVk
IiBhbmQgYSBuZXcgIlJlc2VydmVkIi4KUGxlYXNlIHJlZmVyIHRvIHRoaXMgY29tbWl0OiA2NDBl
MWIzOGIwMDUgKCJ4ODYvYm9vdC9lODIwOiBCYXNpYyBjbGVhbnVwCm9mIGU4MjAuYyIpCgpJbiBh
ZGRpdGlvbiwgSSB3aWxsIGNoZWNrIGtlcm5lbCBjb2RlIGNhcmVmdWxseSB0byBzZWUgaWYgaXQg
bmVlZHMgdG8gYmUKZml4ZWQgaW4gdXBzdHJlYW0uCgpUaGFua3MuCkxpYW5ibwo+IAo+Pgo+PiBD
dXJyZW50bHksIGtleGVjLXRvb2xzIGNhbiBub3QgaGFuZGxlIHRoZSBhYm92ZSBjYXNlIGJlY2F1
c2UgdGhlIG1lbWNtcCgpCj4+IGlzIGNhc2Ugc2Vuc2l0aXZlIHdoZW4gY29tcGFyaW5nIHRoZSBz
dHJpbmcuCj4+Cj4+IFNvLCBsZXQncyBmaXggdGhpcyBjb3JuZXIgYW5kIG1ha2Ugc3VyZSB0aGF0
IHRoZSBzdHJpbmcgInJlc2VydmVkIiBhbmQKPj4gIlJlc2VydmVkIiBpbiB0aGUgIi9wcm9jL2lv
bWVtIiBhcmUgYm90aCBwYXJzZWQgYXBwcm9wcmlhdGVseS4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
TGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiBOb3RlOgo+PiBQbGVh
c2UgZm9sbG93IHVwIHRoaXMgY29tbWl0IGJlbG93IGFib3V0IGtkdW1wIGZpeC4KPj4gMWFjM2U0
YTU3MDAwICgia2R1bXA6IGZpeCBhbiBlcnJvciB0aGF0IGNhbiBub3QgcGFyc2UgdGhlIGU4MjAg
cmVzZXJ2ZWQgcmVnaW9uIikKPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4gWzFdIHVzZSBzdHJu
Y2FzZWNtcCgpIGluc3RlYWQgb2YgaW50cm9kdWNpbmcgYW5vdGhlciAnZWxzZS1pZicoCj4+IHN1
Z2dlc3RlZCBieSBCaHVwZXNoKQo+Pgo+PiAga2V4ZWMvYXJjaC9pMzg2L2tleGVjLXg4Ni1jb21t
b24uYyB8IDIgKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEva2V4ZWMvYXJjaC9pMzg2L2tleGVjLXg4Ni1jb21tb24u
YyBiL2tleGVjL2FyY2gvaTM4Ni9rZXhlYy14ODYtY29tbW9uLmMKPj4gaW5kZXggNjFlYTE5Mzgw
YWIyLi45MzAzNzA0YTA3MTQgMTAwNjQ0Cj4+IC0tLSBhL2tleGVjL2FyY2gvaTM4Ni9rZXhlYy14
ODYtY29tbW9uLmMKPj4gKysrIGIva2V4ZWMvYXJjaC9pMzg2L2tleGVjLXg4Ni1jb21tb24uYwo+
PiBAQCAtOTAsNyArOTAsNyBAQCBzdGF0aWMgaW50IGdldF9tZW1vcnlfcmFuZ2VzX3Byb2NfaW9t
ZW0oc3RydWN0IG1lbW9yeV9yYW5nZSAqKnJhbmdlLCBpbnQgKnJhbmdlcwo+PiAgCQlpZiAobWVt
Y21wKHN0ciwgIlN5c3RlbSBSQU1cbiIsIDExKSA9PSAwKSB7Cj4+ICAJCQl0eXBlID0gUkFOR0Vf
UkFNOwo+PiAgCQl9Cj4+IC0JCWVsc2UgaWYgKG1lbWNtcChzdHIsICJyZXNlcnZlZFxuIiwgOSkg
PT0gMCkgewo+PiArCQllbHNlIGlmIChzdHJuY2FzZWNtcChzdHIsICJyZXNlcnZlZFxuIiwgOSkg
PT0gMCkgewo+PiAgCQkJdHlwZSA9IFJBTkdFX1JFU0VSVkVEOwo+PiAgCQl9Cj4+ICAJCWVsc2Ug
aWYgKG1lbWNtcChzdHIsICJBQ1BJIFRhYmxlc1xuIiwgMTIpID09IDApIHsKPj4gLS0gCj4+IDIu
MTcuMQo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
