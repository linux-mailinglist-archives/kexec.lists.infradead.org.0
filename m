Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB191F5031
	for <lists+kexec@lfdr.de>; Wed, 10 Jun 2020 10:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHzCq6ytQw2CrqrcQa/IjynqIZbIRJ3u5WMTRaXL0S8=; b=WQVtdc+oabLf7I
	4q/b/nSjwt+NvRpAeoaRFdeBkeaCgS2z7vxVNgZSsXDu/HiDcvn+Y2iBbOiIAfiHJZu20gDkZ5e9I
	FdP76Kli7cD/zsfBdHQLg4B0P/aVKuB+Wb4laBnNO741IK1UDKW1nGscDHEZmt44IIo8Yrm6Hgx1I
	iWeHc40OaVHdRozhfuu7vDoF/F+vIkw0/VZlKXKrZ0Yvihlg5lj5buQSKKRiPqIHZoDY9Bdms3qdX
	YdgmSM8jhDDMgEIVhep2noO2E0Yp2dD+SHutjuj5/3AyIxmbKMd2LktETUYXfwNluUk7Kt3kh9pUx
	A6/IXVEVyksev+vTppRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivzk-0004w4-Qy; Wed, 10 Jun 2020 08:22:00 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivzi-0004vb-6D
 for kexec@lists.infradead.org; Wed, 10 Jun 2020 08:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591777315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OI3aCfsDdegeLI3ZNTVz0fiZIXbxW2AX3bbw/1MUDHM=;
 b=jKGASy0+2eUDcNnvnsxJ59efVtXdEuANsfTcfOkAzYRo8dhKsRoUty5YUHZgdna32QBNxm
 36bHigOS1JS49f9Iqb/jCkIyoUXEnfNSHB888gtSHcFK9+chX6DYtMNSQUMaPy2WHHCi4t
 si7W+oASvIJDD7HRqyOodmDz4vxOBEA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-6cSuREqVPdadQqwv8jTYFQ-1; Wed, 10 Jun 2020 04:21:51 -0400
X-MC-Unique: 6cSuREqVPdadQqwv8jTYFQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D946018A8220;
 Wed, 10 Jun 2020 08:21:49 +0000 (UTC)
Received: from [10.72.12.51] (ovpn-12-51.pek2.redhat.com [10.72.12.51])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 45A125D9D3;
 Wed, 10 Jun 2020 08:21:42 +0000 (UTC)
Subject: Re: [PATCH v2] kexec: Do not verify the signature without the
 lockdown or mandatory signature
From: lijiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 "ebiederm@xmission.com" <ebiederm@xmission.com>
References: <20200602045952.27487-1-lijiang@redhat.com>
Message-ID: <49d2af1c-bcbf-41d8-071c-93cce024b47b@redhat.com>
Date: Wed, 10 Jun 2020 16:21:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200602045952.27487-1-lijiang@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_012158_307878_74384E62 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jbohac@suse.cz, bhe@redhat.com, kexec@lists.infradead.org,
 jmorris@namei.org, mjg59@google.com, ebiederm@xmission.com, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CkkganVzdCBub3RpY2VkIHRoYXQgSSBmb3Jnb3QgdG8gYWRkIEVyaWMgQmllZGVybWFuIGluIGNj
IGxpc3QsIHNvIHNvcnJ5IGZvciB0aGlzLgoKVGhhbmtzLgpMaWFuYm8KCuWcqCAyMDIw5bm0MDbm
nIgwMuaXpSAxMjo1OSwgTGlhbmJvIEppYW5nIOWGmemBkzoKPiBTaWduYXR1cmUgdmVyaWZpY2F0
aW9uIGlzIGFuIGltcG9ydGFudCBzZWN1cml0eSBmZWF0dXJlLCB0byBwcm90ZWN0Cj4gc3lzdGVt
IGZyb20gYmVpbmcgYXR0YWNrZWQgd2l0aCBhIGtlcm5lbCBvZiB1bmtub3duIG9yaWdpbi4gS2V4
ZWMKPiByZWJvb3RpbmcgaXMgYSB3YXkgdG8gcmVwbGFjZSB0aGUgcnVubmluZyBrZXJuZWwsIGhl
bmNlIG5lZWQgYmUKPiBzZWN1cmVkIGNhcmVmdWxseS4KPiAKPiBJbiB0aGUgY3VycmVudCBjb2Rl
IG9mIGhhbmRsaW5nIHNpZ25hdHVyZSB2ZXJpZmljYXRpb24gb2Yga2V4ZWMga2VybmVsLAo+IHRo
ZSBsb2dpYyBpcyB2ZXJ5IHR3aXN0ZWQuIEl0IG1peGVzIHNpZ25hdHVyZSB2ZXJpZmljYXRpb24s
IElNQSBzaWduYXR1cmUKPiBhcHByYWlzaW5nIGFuZCBrZXhlYyBsb2NrZG93bi4KPiAKPiBJZiB0
aGVyZSBpcyBubyBLRVhFQ19TSUdfRk9SQ0UsIGtleGVjIGtlcm5lbCBpbWFnZSBkb2Vzbid0IGhh
dmUgb25lIG9mCj4gc2lnbmF0dXJlLCB0aGUgc3VwcG9ydGVkIGNyeXB0bywgYW5kIGtleSwgd2Ug
ZG9uJ3QgdGhpbmsgdGhpcyBpcyB3cm9uZywKPiBVbmxlc3Mga2V4ZWMgbG9ja2Rvd24gaXMgZXhl
Y3V0ZWQuIElNQSBpcyBjb25zaWRlcmVkIGFzIGFub3RoZXIga2luZCBvZgo+IHNpZ25hdHVyZSBh
cHByYWlzaW5nIG1ldGhvZC4KPiAKPiBJZiBrZXhlYyBrZXJuZWwgaW1hZ2UgaGFzIHNpZ25hdHVy
ZS9jcnlwdG8va2V5LCBpdCBoYXMgdG8gZ28gdGhyb3VnaCB0aGUKPiBzaWduYXR1cmUgdmVyaWZp
Y2F0aW9uIGFuZCBwYXNzLiBPdGhlcndpc2UgaXQncyBzZWVuIGFzIHZlcmlmaWNhdGlvbgo+IGZh
aWx1cmUsIGFuZCB3b24ndCBiZSBsb2FkZWQuCj4gCj4gU2VlbXMga2V4ZWMga2VybmVsIGltYWdl
IHdpdGggYW4gdW5xdWFsaWZpZWQgc2lnbmF0dXJlIGlzIGV2ZW4gd29yc2UgdGhhbgo+IHRob3Nl
IHcvbyBzaWduYXR1cmUgYXQgYWxsLCB0aGlzIHNvdW5kcyB2ZXJ5IHVucmVhc29uYWJsZS4gRS5n
LiBJZiBwZW9wbGUKPiBnZXQgYSB1bnNpZ25lZCBrZXJuZWwgdG8gbG9hZCwgb3IgYSBrZXJuZWwg
c2lnbmVkIHdpdGggZXhwaXJlZCBrZXksIHdoaWNoCj4gb25lIGlzIG1vcmUgZGFuZ2Vyb3VzPwo+
IAo+IFNvLCBoZXJlLCBsZXQncyBzaW1wbGlmeSB0aGUgbG9naWMgdG8gaW1wcm92ZSBjb2RlIHJl
YWRhYmlsaXR5LiBJZiB0aGUKPiBLRVhFQ19TSUdfRk9SQ0UgZW5hYmxlZCBvciBrZXhlYyBsb2Nr
ZG93biBlbmFibGVkLCBzaWduYXR1cmUgdmVyaWZpY2F0aW9uCj4gaXMgbWFuZGF0ZWQuIE90aGVy
d2lzZSwgd2UgbGlmdCB0aGUgYmFyIGZvciBhbnkga2VybmVsIGltYWdlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IExpYW5ibyBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgo+IC0tLQo+IENoYW5nZXMg
c2luY2UgdjE6Cj4gWzFdIE1vZGlmeSB0aGUgbG9nIGxldmVsKHN1Z2dlc3RlZCBieSBKaXJpIEJv
aGFjKQo+IAo+ICBrZXJuZWwva2V4ZWNfZmlsZS5jIHwgMzQgKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyOCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEva2VybmVsL2tleGVjX2ZpbGUuYyBiL2tlcm5lbC9r
ZXhlY19maWxlLmMKPiBpbmRleCBmYWE3NGQ1ZjY5NDEuLmZhZTQ5Njk1OGE2OCAxMDA2NDQKPiAt
LS0gYS9rZXJuZWwva2V4ZWNfZmlsZS5jCj4gKysrIGIva2VybmVsL2tleGVjX2ZpbGUuYwo+IEBA
IC0xODEsMzQgKzE4MSwxOSBAQCB2b2lkIGtpbWFnZV9maWxlX3Bvc3RfbG9hZF9jbGVhbnVwKHN0
cnVjdCBraW1hZ2UgKmltYWdlKQo+ICBzdGF0aWMgaW50Cj4gIGtpbWFnZV92YWxpZGF0ZV9zaWdu
YXR1cmUoc3RydWN0IGtpbWFnZSAqaW1hZ2UpCj4gIHsKPiAtCWNvbnN0IGNoYXIgKnJlYXNvbjsK
PiAgCWludCByZXQ7Cj4gIAo+ICAJcmV0ID0gYXJjaF9rZXhlY19rZXJuZWxfdmVyaWZ5X3NpZyhp
bWFnZSwgaW1hZ2UtPmtlcm5lbF9idWYsCj4gIAkJCQkJICAgaW1hZ2UtPmtlcm5lbF9idWZfbGVu
KTsKPiAtCXN3aXRjaCAocmV0KSB7Cj4gLQljYXNlIDA6Cj4gLQkJYnJlYWs7Cj4gKwlpZiAocmV0
KSB7Cj4gIAo+IC0JCS8qIENlcnRhaW4gdmVyaWZpY2F0aW9uIGVycm9ycyBhcmUgbm9uLWZhdGFs
IGlmIHdlJ3JlIG5vdAo+IC0JCSAqIGNoZWNraW5nIGVycm9ycywgcHJvdmlkZWQgd2UgYXJlbid0
IG1hbmRhdGluZyB0aGF0IHRoZXJlCj4gLQkJICogbXVzdCBiZSBhIHZhbGlkIHNpZ25hdHVyZS4K
PiAtCQkgKi8KPiAtCWNhc2UgLUVOT0RBVEE6Cj4gLQkJcmVhc29uID0gImtleGVjIG9mIHVuc2ln
bmVkIGltYWdlIjsKPiAtCQlnb3RvIGRlY2lkZTsKPiAtCWNhc2UgLUVOT1BLRzoKPiAtCQlyZWFz
b24gPSAia2V4ZWMgb2YgaW1hZ2Ugd2l0aCB1bnN1cHBvcnRlZCBjcnlwdG8iOwo+IC0JCWdvdG8g
ZGVjaWRlOwo+IC0JY2FzZSAtRU5PS0VZOgo+IC0JCXJlYXNvbiA9ICJrZXhlYyBvZiBpbWFnZSB3
aXRoIHVuYXZhaWxhYmxlIGtleSI7Cj4gLQlkZWNpZGU6Cj4gIAkJaWYgKElTX0VOQUJMRUQoQ09O
RklHX0tFWEVDX1NJR19GT1JDRSkpIHsKPiAtCQkJcHJfbm90aWNlKCIlcyByZWplY3RlZFxuIiwg
cmVhc29uKTsKPiArCQkJcHJfbm90aWNlKCJFbmZvcmNlZCBrZXJuZWwgc2lnbmF0dXJlIHZlcmlm
aWNhdGlvbiBmYWlsZWQgKCVkKS5cbiIsIHJldCk7Cj4gIAkJCXJldHVybiByZXQ7Cj4gIAkJfQo+
ICAKPiAtCQkvKiBJZiBJTUEgaXMgZ3VhcmFudGVlZCB0byBhcHByYWlzZSBhIHNpZ25hdHVyZSBv
biB0aGUga2V4ZWMKPiArCQkvKgo+ICsJCSAqIElmIElNQSBpcyBndWFyYW50ZWVkIHRvIGFwcHJh
aXNlIGEgc2lnbmF0dXJlIG9uIHRoZSBrZXhlYwo+ICAJCSAqIGltYWdlLCBwZXJtaXQgaXQgZXZl
biBpZiB0aGUga2VybmVsIGlzIG90aGVyd2lzZSBsb2NrZWQKPiAgCQkgKiBkb3duLgo+ICAJCSAq
Lwo+IEBAIC0yMTYsMTcgKzIwMSwxMCBAQCBraW1hZ2VfdmFsaWRhdGVfc2lnbmF0dXJlKHN0cnVj
dCBraW1hZ2UgKmltYWdlKQo+ICAJCSAgICBzZWN1cml0eV9sb2NrZWRfZG93bihMT0NLRE9XTl9L
RVhFQykpCj4gIAkJCXJldHVybiAtRVBFUk07Cj4gIAo+IC0JCXJldHVybiAwOwo+IC0KPiAtCQkv
KiBBbGwgb3RoZXIgZXJyb3JzIGFyZSBmYXRhbCwgaW5jbHVkaW5nIG5vbWVtLCB1bnBhcnNlYWJs
ZQo+IC0JCSAqIHNpZ25hdHVyZXMgYW5kIHNpZ25hdHVyZSBjaGVjayBmYWlsdXJlcyAtIGV2ZW4g
aWYgc2lnbmF0dXJlcwo+IC0JCSAqIGFyZW4ndCByZXF1aXJlZC4KPiAtCQkgKi8KPiAtCWRlZmF1
bHQ6Cj4gLQkJcHJfbm90aWNlKCJrZXJuZWwgc2lnbmF0dXJlIHZlcmlmaWNhdGlvbiBmYWlsZWQg
KCVkKS5cbiIsIHJldCk7Cj4gKwkJcHJfZGVidWcoImtlcm5lbCBzaWduYXR1cmUgdmVyaWZpY2F0
aW9uIGZhaWxlZCAoJWQpLlxuIiwgcmV0KTsKPiAgCX0KPiAgCj4gLQlyZXR1cm4gcmV0Owo+ICsJ
cmV0dXJuIDA7Cj4gIH0KPiAgI2VuZGlmCj4gIAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
a2V4ZWMK
